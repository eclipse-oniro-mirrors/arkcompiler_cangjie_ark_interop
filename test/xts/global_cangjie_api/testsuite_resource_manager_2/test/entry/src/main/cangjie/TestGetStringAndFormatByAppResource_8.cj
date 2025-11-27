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
class TestGetStringAndFormatByAppResource_8 {
    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_70100
     * @tc.name      : TestCase_701
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.string.Test_Format1).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_701(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_701 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "\0", @r(app.string.Test_Format1).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#700: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_701 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_70200
     * @tc.name      : TestCase_702
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.string.Test_Format1).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_702(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_702 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "\0", @r(app.string.Test_Format1).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#701: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_702 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_70300
     * @tc.name      : TestCase_703
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.string.Test_Format2).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_703(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_703 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "\0", @r(app.string.Test_Format2).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#702: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_703 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_70400
     * @tc.name      : TestCase_704
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.string.Test_Format2).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_704(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_704 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "\0", @r(app.string.Test_Format2).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#703: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_704 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_70500
     * @tc.name      : TestCase_705
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.string.Test_Format2).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_705(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_705 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "\0", @r(app.string.Test_Format2).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#704: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_705 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_70600
     * @tc.name      : TestCase_706
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.string.Test_Format3).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_706(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_706 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "\0", @r(app.string.Test_Format3).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#705: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_706 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_70700
     * @tc.name      : TestCase_707
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.string.Test_Format3).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_707(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_707 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "\0", @r(app.string.Test_Format3).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#706: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_707 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_70800
     * @tc.name      : TestCase_708
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.string.Test_Format3).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_708(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_708 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "\0", @r(app.string.Test_Format3).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#707: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_708 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_70900
     * @tc.name      : TestCase_709
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.string.EntryAbility_desc).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_709(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_709 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "\0", @r(app.string.EntryAbility_desc).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#708: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_709 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_71000
     * @tc.name      : TestCase_710
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.string.EntryAbility_desc).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_710(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_710 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "\0", @r(app.string.EntryAbility_desc).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#709: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_710 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_71100
     * @tc.name      : TestCase_711
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.string.EntryAbility_desc).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_711(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_711 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "\0", @r(app.string.EntryAbility_desc).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#710: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_711 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_71200
     * @tc.name      : TestCase_712
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.media.layered_image).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_712(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_712 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "\0", @r(app.media.layered_image).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#711: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_712 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_71300
     * @tc.name      : TestCase_713
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.media.layered_image).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_713(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_713 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "\0", @r(app.media.layered_image).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#712: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_713 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_71400
     * @tc.name      : TestCase_714
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.media.layered_image).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_714(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_714 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "\0", @r(app.media.layered_image).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#713: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_714 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_71500
     * @tc.name      : TestCase_715
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.string.EntryAbility_label).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_715(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_715 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "\0", @r(app.string.EntryAbility_label).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#714: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_715 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_71600
     * @tc.name      : TestCase_716
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.string.EntryAbility_label).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_716(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_716 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "\0", @r(app.string.EntryAbility_label).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#715: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_716 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_71700
     * @tc.name      : TestCase_717
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.string.EntryAbility_label).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_717(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_717 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "\0", @r(app.string.EntryAbility_label).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#716: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_717 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_71800
     * @tc.name      : TestCase_718
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.media.startIcon).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_718(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_718 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "\0", @r(app.media.startIcon).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#717: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_718 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_71900
     * @tc.name      : TestCase_719
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.media.startIcon).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_719(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_719 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "\0", @r(app.media.startIcon).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#718: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_719 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_72000
     * @tc.name      : TestCase_720
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.media.startIcon).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_720(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_720 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "\0", @r(app.media.startIcon).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#719: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_720 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_72100
     * @tc.name      : TestCase_721
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.profile.main_pages).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_721(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_721 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "\0", @r(app.profile.main_pages).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#720: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_721 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_72200
     * @tc.name      : TestCase_722
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.profile.main_pages).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_722(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_722 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "\0", @r(app.profile.main_pages).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#721: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_722 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_72300
     * @tc.name      : TestCase_723
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.profile.main_pages).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_723(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_723 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "\0", @r(app.profile.main_pages).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#722: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_723 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_72400
     * @tc.name      : TestCase_724
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.color.start_window_background).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_724(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_724 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "\0", @r(app.color.start_window_background).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#723: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_724 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_72500
     * @tc.name      : TestCase_725
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.color.start_window_background).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_725(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_725 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "\0", @r(app.color.start_window_background).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#724: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_725 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_72600
     * @tc.name      : TestCase_726
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.color.start_window_background).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_726(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_726 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "\0", @r(app.color.start_window_background).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#725: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_726 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_72700
     * @tc.name      : TestCase_727
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.float.float_1).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_727(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_727 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "\0", @r(app.float.float_1).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#726: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_727 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_72800
     * @tc.name      : TestCase_728
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.float.float_1).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_728(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_728 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "\0", @r(app.float.float_1).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#727: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_728 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_72900
     * @tc.name      : TestCase_729
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.float.float_1).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_729(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_729 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "\0", @r(app.float.float_1).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#728: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_729 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_73000
     * @tc.name      : TestCase_730
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.float.float_2).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_730(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_730 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "\0", @r(app.float.float_2).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#729: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_730 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_73100
     * @tc.name      : TestCase_731
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.float.float_2).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_731(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_731 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "\0", @r(app.float.float_2).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#730: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_731 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_73200
     * @tc.name      : TestCase_732
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.float.float_2).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_732(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_732 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "\0", @r(app.float.float_2).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#731: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_732 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_73300
     * @tc.name      : TestCase_733
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.integer.int_1).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_733(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_733 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "\0", @r(app.integer.int_1).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#732: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_733 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_73400
     * @tc.name      : TestCase_734
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.integer.int_1).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_734(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_734 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "\0", @r(app.integer.int_1).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#733: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_734 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_73500
     * @tc.name      : TestCase_735
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.integer.int_1).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_735(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_735 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "\0", @r(app.integer.int_1).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#734: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_735 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_73600
     * @tc.name      : TestCase_736
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.integer.int_2).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_736(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_736 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "\0", @r(app.integer.int_2).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#735: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_736 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_73700
     * @tc.name      : TestCase_737
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.integer.int_2).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_737(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_737 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "\0", @r(app.integer.int_2).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#736: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_737 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_73800
     * @tc.name      : TestCase_738
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.integer.int_2).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_738(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_738 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "\0", @r(app.integer.int_2).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#737: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_738 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_73900
     * @tc.name      : TestCase_739
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.boolean.test_boolean1).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_739(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_739 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "\0", @r(app.boolean.test_boolean1).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#738: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_739 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_74000
     * @tc.name      : TestCase_740
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.boolean.test_boolean1).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_740(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_740 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "\0", @r(app.boolean.test_boolean1).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#739: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_740 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_74100
     * @tc.name      : TestCase_741
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.boolean.test_boolean1).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_741(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_741 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "\0", @r(app.boolean.test_boolean1).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#740: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_741 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_74200
     * @tc.name      : TestCase_742
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.boolean.test_boolean0).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_742(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_742 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "\0", @r(app.boolean.test_boolean0).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#741: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_742 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_74300
     * @tc.name      : TestCase_743
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.boolean.test_boolean0).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_743(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_743 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "\0", @r(app.boolean.test_boolean0).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#742: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_743 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_74400
     * @tc.name      : TestCase_744
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.boolean.test_boolean0).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_744(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_744 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "\0", @r(app.boolean.test_boolean0).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#743: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_744 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_74500
     * @tc.name      : TestCase_745
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.boolean.boolean_3).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_745(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_745 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "\0", @r(app.boolean.boolean_3).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#744: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_745 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_74600
     * @tc.name      : TestCase_746
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.boolean.boolean_3).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_746(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_746 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "\0", @r(app.boolean.boolean_3).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#745: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_746 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_74700
     * @tc.name      : TestCase_747
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.boolean.boolean_3).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_747(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_747 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "\0", @r(app.boolean.boolean_3).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#746: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_747 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_74800
     * @tc.name      : TestCase_748
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.boolean.boolean_4).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_748(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_748 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "\0", @r(app.boolean.boolean_4).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#747: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_748 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_74900
     * @tc.name      : TestCase_749
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.boolean.boolean_4).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_749(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_749 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "\0", @r(app.boolean.boolean_4).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#748: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_749 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_75000
     * @tc.name      : TestCase_750
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.boolean.boolean_4).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_750(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_750 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "\0", @r(app.boolean.boolean_4).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#749: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_750 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_75100
     * @tc.name      : TestCase_751
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=1u32),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_751(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_751 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "nonexisting_module_name", 1u32),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#750: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_751 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_75200
     * @tc.name      : TestCase_752
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=1u32),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_752(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_752 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "nonexisting_module_name", 1u32),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#751: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_752 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_75300
     * @tc.name      : TestCase_753
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=1u32),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_753(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_753 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "nonexisting_module_name", 1u32),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#752: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_753 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_75400
     * @tc.name      : TestCase_754
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=0u32),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_754(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_754 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "nonexisting_module_name", 0u32),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#753: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_754 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_75500
     * @tc.name      : TestCase_755
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=0u32),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_755(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_755 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "nonexisting_module_name", 0u32),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#754: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_755 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_75600
     * @tc.name      : TestCase_756
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=0u32),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_756(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_756 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "nonexisting_module_name", 0u32),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#755: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_756 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_76000
     * @tc.name      : TestCase_760
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=UInt32.Min),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_760(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_760 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "nonexisting_module_name", UInt32.Min
            ), ArgsValueType.Int32Value(100i32))
            @Expect("assertion#759: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_760 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_76100
     * @tc.name      : TestCase_761
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=UInt32.Min),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_761(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_761 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "nonexisting_module_name", UInt32.Min
            ), ArgsValueType.StringValue("hello"))
            @Expect("assertion#760: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_761 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_76200
     * @tc.name      : TestCase_762
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=UInt32.Min),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_762(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_762 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "nonexisting_module_name", UInt32.Min
            ), ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#761: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_762 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_76300
     * @tc.name      : TestCase_763
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=UInt32.Max),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_763(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_763 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "nonexisting_module_name", UInt32.Max
            ), ArgsValueType.Int32Value(100i32))
            @Expect("assertion#762: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_763 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_76400
     * @tc.name      : TestCase_764
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=UInt32.Max),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_764(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_764 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "nonexisting_module_name", UInt32.Max
            ), ArgsValueType.StringValue("hello"))
            @Expect("assertion#763: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_764 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_76500
     * @tc.name      : TestCase_765
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=UInt32.Max),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_765(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_765 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "nonexisting_module_name", UInt32.Max
            ), ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#764: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_765 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_76600
     * @tc.name      : TestCase_766
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.module_desc).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_766(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_766 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.module_desc).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#765: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_766 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_76700
     * @tc.name      : TestCase_767
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.module_desc).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_767(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_767 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.module_desc).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#766: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_767 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_76800
     * @tc.name      : TestCase_768
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.module_desc).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_768(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_768 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.module_desc).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#767: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_768 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_76900
     * @tc.name      : TestCase_769
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.strarray.sizelist).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_769(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_769 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.strarray.sizelist).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#768: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_769 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_77000
     * @tc.name      : TestCase_770
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.strarray.sizelist).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_770(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_770 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.strarray.sizelist).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#769: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_770 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_77100
     * @tc.name      : TestCase_771
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.strarray.sizelist).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_771(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_771 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.strarray.sizelist).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#770: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_771 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_77200
     * @tc.name      : TestCase_772
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.plural.plural_name).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_772(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_772 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.plural.plural_name).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#771: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_772 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_77300
     * @tc.name      : TestCase_773
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.plural.plural_name).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_773(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_773 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.plural.plural_name).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#772: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_773 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_77400
     * @tc.name      : TestCase_774
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.plural.plural_name).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_774(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_774 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.plural.plural_name).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#773: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_774 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_77500
     * @tc.name      : TestCase_775
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format1).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_775(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_775 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.Test_Format1).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#774: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_775 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_77600
     * @tc.name      : TestCase_776
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format1).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_776(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_776 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.Test_Format1).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#775: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_776 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_77700
     * @tc.name      : TestCase_777
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format1).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_777(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_777 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.Test_Format1).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#776: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_777 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_77800
     * @tc.name      : TestCase_778
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format2).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_778(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_778 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.Test_Format2).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#777: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_778 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_77900
     * @tc.name      : TestCase_779
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format2).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_779(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_779 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.Test_Format2).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#778: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_779 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_78000
     * @tc.name      : TestCase_780
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format2).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_780(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_780 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.Test_Format2).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#779: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_780 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_78100
     * @tc.name      : TestCase_781
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format3).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_781(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_781 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.Test_Format3).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#780: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_781 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_78200
     * @tc.name      : TestCase_782
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format3).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_782(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_782 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.Test_Format3).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#781: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_782 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_78300
     * @tc.name      : TestCase_783
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format3).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_783(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_783 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.Test_Format3).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#782: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_783 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_78400
     * @tc.name      : TestCase_784
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_desc).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_784(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_784 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.EntryAbility_desc).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#783: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_784 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_78500
     * @tc.name      : TestCase_785
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_desc).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_785(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_785 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.EntryAbility_desc).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#784: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_785 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_78600
     * @tc.name      : TestCase_786
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_desc).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_786(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_786 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.EntryAbility_desc).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#785: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_786 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_78700
     * @tc.name      : TestCase_787
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.media.layered_image).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_787(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_787 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.media.layered_image).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#786: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_787 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_78800
     * @tc.name      : TestCase_788
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.media.layered_image).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_788(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_788 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.media.layered_image).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#787: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_788 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_78900
     * @tc.name      : TestCase_789
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.media.layered_image).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_789(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_789 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.media.layered_image).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#788: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_789 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_79000
     * @tc.name      : TestCase_790
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_label).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_790(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_790 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.EntryAbility_label).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#789: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_790 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_79100
     * @tc.name      : TestCase_791
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_label).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_791(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_791 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.EntryAbility_label).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#790: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_791 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_79200
     * @tc.name      : TestCase_792
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_label).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_792(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_792 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.EntryAbility_label).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#791: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_792 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_79300
     * @tc.name      : TestCase_793
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.media.startIcon).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_793(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_793 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.media.startIcon).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#792: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_793 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_79400
     * @tc.name      : TestCase_794
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.media.startIcon).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_794(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_794 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.media.startIcon).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#793: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_794 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_79500
     * @tc.name      : TestCase_795
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.media.startIcon).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_795(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_795 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.media.startIcon).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#794: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_795 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_79600
     * @tc.name      : TestCase_796
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.profile.main_pages).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_796(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_796 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.profile.main_pages).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#795: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_796 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_79700
     * @tc.name      : TestCase_797
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.profile.main_pages).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_797(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_797 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.profile.main_pages).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#796: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_797 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_79800
     * @tc.name      : TestCase_798
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.profile.main_pages).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_798(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_798 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.profile.main_pages).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#797: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_798 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_79900
     * @tc.name      : TestCase_799
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.color.start_window_background).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_799(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_799 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name",
                    @r(app.color.start_window_background).id), ArgsValueType.Int32Value(100i32))
            @Expect("assertion#798: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_799 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_80000
     * @tc.name      : TestCase_800
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.color.start_window_background).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_800(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_800 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name",
                    @r(app.color.start_window_background).id), ArgsValueType.StringValue("hello"))
            @Expect("assertion#799: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_800 ends.")
    }
}
