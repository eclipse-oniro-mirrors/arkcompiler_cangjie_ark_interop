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
class TestGetMediaContentByAppResource_16 {
    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_150100
     * @tc.name      : TestCase_1501
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=1u32, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1501(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1501 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", 1u32),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4704: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1501 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_150200
     * @tc.name      : TestCase_1502
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=1u32, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1502(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1502 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", 1u32),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4705: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1502 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_150300
     * @tc.name      : TestCase_1503
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=1u32, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1503(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1503 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", 1u32),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4706: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1503 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_150400
     * @tc.name      : TestCase_1504
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=1u32, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1504(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1504 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", 1u32),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4707: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1504 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_150500
     * @tc.name      : TestCase_1505
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=1u32, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1505(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1505 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", 1u32),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4708: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1505 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_150600
     * @tc.name      : TestCase_1506
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=0u32, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1506(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1506 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", 0u32),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4709: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1506 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_150700
     * @tc.name      : TestCase_1507
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=0u32, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1507(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1507 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", 0u32),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4710: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1507 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_150800
     * @tc.name      : TestCase_1508
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=0u32, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1508(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1508 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", 0u32),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4711: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1508 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_150900
     * @tc.name      : TestCase_1509
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=0u32, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1509(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1509 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", 0u32),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4712: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1509 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_151000
     * @tc.name      : TestCase_1510
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=0u32, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1510(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1510 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", 0u32),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4713: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1510 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_151600
     * @tc.name      : TestCase_1516
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=UInt32.Min, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1516(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1516 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", UInt32.Min),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4719: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1516 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_151700
     * @tc.name      : TestCase_1517
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=UInt32.Min, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1517(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1517 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", UInt32.Min),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4720: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1517 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_151800
     * @tc.name      : TestCase_1518
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=UInt32.Min, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1518(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1518 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", UInt32.Min),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4721: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1518 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_151900
     * @tc.name      : TestCase_1519
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=UInt32.Min, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1519(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1519 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", UInt32.Min),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4722: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1519 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_152000
     * @tc.name      : TestCase_1520
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=UInt32.Min, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1520(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1520 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", UInt32.Min),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4723: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1520 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_152100
     * @tc.name      : TestCase_1521
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=UInt32.Max, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1521(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1521 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", UInt32.Max),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4724: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1521 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_152200
     * @tc.name      : TestCase_1522
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=UInt32.Max, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1522(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1522 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", UInt32.Max),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4725: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1522 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_152300
     * @tc.name      : TestCase_1523
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=UInt32.Max, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1523(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1523 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", UInt32.Max),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4726: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1523 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_152400
     * @tc.name      : TestCase_1524
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=UInt32.Max, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1524(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1524 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", UInt32.Max),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4727: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1524 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_152500
     * @tc.name      : TestCase_1525
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=UInt32.Max, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1525(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1525 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", UInt32.Max),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4728: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1525 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_152600
     * @tc.name      : TestCase_1526
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.string.module_desc).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1526(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1526 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.string.module_desc).id), density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4729: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1526 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_152700
     * @tc.name      : TestCase_1527
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.string.module_desc).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1527(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1527 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.string.module_desc).id), density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4730: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1527 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_152800
     * @tc.name      : TestCase_1528
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.string.module_desc).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1528(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1528 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.string.module_desc).id), density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4731: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1528 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_152900
     * @tc.name      : TestCase_1529
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.string.module_desc).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1529(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1529 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.string.module_desc).id), density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4732: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1529 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_153000
     * @tc.name      : TestCase_1530
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.string.module_desc).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1530(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1530 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.string.module_desc).id), density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4733: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1530 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_153100
     * @tc.name      : TestCase_1531
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.strarray.sizelist).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1531(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1531 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.strarray.sizelist).id), density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4734: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1531 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_153200
     * @tc.name      : TestCase_1532
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.strarray.sizelist).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1532(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1532 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.strarray.sizelist).id), density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4735: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1532 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_153300
     * @tc.name      : TestCase_1533
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.strarray.sizelist).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1533(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1533 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.strarray.sizelist).id), density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4736: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1533 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_153400
     * @tc.name      : TestCase_1534
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.strarray.sizelist).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1534(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1534 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.strarray.sizelist).id), density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4737: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1534 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_153500
     * @tc.name      : TestCase_1535
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.strarray.sizelist).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1535(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1535 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.strarray.sizelist).id), density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4738: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1535 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_153600
     * @tc.name      : TestCase_1536
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.plural.plural_name).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1536(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1536 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.plural.plural_name).id), density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4739: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1536 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_153700
     * @tc.name      : TestCase_1537
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.plural.plural_name).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1537(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1537 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.plural.plural_name).id), density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4740: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1537 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_153800
     * @tc.name      : TestCase_1538
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.plural.plural_name).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1538(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1538 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.plural.plural_name).id), density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4741: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1538 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_153900
     * @tc.name      : TestCase_1539
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.plural.plural_name).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1539(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1539 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.plural.plural_name).id), density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4742: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1539 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_154000
     * @tc.name      : TestCase_1540
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.plural.plural_name).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1540(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1540 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.plural.plural_name).id), density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4743: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1540 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_154100
     * @tc.name      : TestCase_1541
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.string.Test_Format1).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1541(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1541 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.string.Test_Format1).id), density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4744: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1541 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_154200
     * @tc.name      : TestCase_1542
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.string.Test_Format1).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1542(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1542 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.string.Test_Format1).id), density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4745: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1542 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_154300
     * @tc.name      : TestCase_1543
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.string.Test_Format1).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1543(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1543 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.string.Test_Format1).id), density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4746: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1543 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_154400
     * @tc.name      : TestCase_1544
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.string.Test_Format1).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1544(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1544 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.string.Test_Format1).id), density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4747: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1544 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_154500
     * @tc.name      : TestCase_1545
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.string.Test_Format1).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1545(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1545 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.string.Test_Format1).id), density: ScreenDensity.ScreenXxldpi
            )
            @Expect("assertion#4748: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1545 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_154600
     * @tc.name      : TestCase_1546
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.string.Test_Format2).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1546(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1546 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.string.Test_Format2).id), density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4749: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1546 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_154700
     * @tc.name      : TestCase_1547
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.string.Test_Format2).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1547(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1547 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.string.Test_Format2).id), density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4750: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1547 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_154800
     * @tc.name      : TestCase_1548
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.string.Test_Format2).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1548(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1548 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.string.Test_Format2).id), density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4751: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1548 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_154900
     * @tc.name      : TestCase_1549
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.string.Test_Format2).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1549(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1549 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.string.Test_Format2).id), density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4752: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1549 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_155000
     * @tc.name      : TestCase_1550
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.string.Test_Format2).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1550(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1550 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.string.Test_Format2).id), density: ScreenDensity.ScreenXxldpi
            )
            @Expect("assertion#4753: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1550 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_155100
     * @tc.name      : TestCase_1551
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.string.Test_Format3).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1551(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1551 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.string.Test_Format3).id), density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4754: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1551 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_155200
     * @tc.name      : TestCase_1552
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.string.Test_Format3).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1552(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1552 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.string.Test_Format3).id), density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4755: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1552 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_155300
     * @tc.name      : TestCase_1553
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.string.Test_Format3).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1553(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1553 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.string.Test_Format3).id), density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4756: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1553 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_155400
     * @tc.name      : TestCase_1554
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.string.Test_Format3).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1554(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1554 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.string.Test_Format3).id), density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4757: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1554 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_155500
     * @tc.name      : TestCase_1555
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.string.Test_Format3).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1555(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1555 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.string.Test_Format3).id), density: ScreenDensity.ScreenXxldpi
            )
            @Expect("assertion#4758: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1555 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_155600
     * @tc.name      : TestCase_1556
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.string.EntryAbility_desc).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1556(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1556 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.string.EntryAbility_desc).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4759: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1556 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_155700
     * @tc.name      : TestCase_1557
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.string.EntryAbility_desc).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1557(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1557 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.string.EntryAbility_desc).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4760: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1557 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_155800
     * @tc.name      : TestCase_1558
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.string.EntryAbility_desc).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1558(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1558 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.string.EntryAbility_desc).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4761: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1558 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_155900
     * @tc.name      : TestCase_1559
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.string.EntryAbility_desc).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1559(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1559 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.string.EntryAbility_desc).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4762: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1559 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_156000
     * @tc.name      : TestCase_1560
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.string.EntryAbility_desc).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1560(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1560 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.string.EntryAbility_desc).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4763: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1560 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_156100
     * @tc.name      : TestCase_1561
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.media.layered_image).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1561(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1561 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.media.layered_image).id), density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4764: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1561 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_156200
     * @tc.name      : TestCase_1562
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.media.layered_image).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1562(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1562 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.media.layered_image).id), density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4765: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1562 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_156300
     * @tc.name      : TestCase_1563
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.media.layered_image).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1563(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1563 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.media.layered_image).id), density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4766: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1563 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_156400
     * @tc.name      : TestCase_1564
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.media.layered_image).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1564(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1564 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.media.layered_image).id), density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4767: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1564 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_156500
     * @tc.name      : TestCase_1565
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.media.layered_image).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1565(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1565 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.media.layered_image).id), density: ScreenDensity.ScreenXxldpi
            )
            @Expect("assertion#4768: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1565 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_156600
     * @tc.name      : TestCase_1566
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.string.EntryAbility_label).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1566(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1566 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.string.EntryAbility_label).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4769: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1566 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_156700
     * @tc.name      : TestCase_1567
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.string.EntryAbility_label).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1567(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1567 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.string.EntryAbility_label).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4770: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1567 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_156800
     * @tc.name      : TestCase_1568
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.string.EntryAbility_label).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1568(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1568 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.string.EntryAbility_label).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4771: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1568 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_156900
     * @tc.name      : TestCase_1569
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.string.EntryAbility_label).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1569(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1569 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.string.EntryAbility_label).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4772: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1569 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_157000
     * @tc.name      : TestCase_1570
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.string.EntryAbility_label).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1570(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1570 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.string.EntryAbility_label).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4773: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1570 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_157100
     * @tc.name      : TestCase_1571
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.media.startIcon).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1571(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1571 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", @r(app.media.startIcon).id
            ), density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4774: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1571 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_157200
     * @tc.name      : TestCase_1572
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.media.startIcon).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1572(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1572 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", @r(app.media.startIcon).id
            ), density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4775: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1572 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_157300
     * @tc.name      : TestCase_1573
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.media.startIcon).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1573(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1573 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", @r(app.media.startIcon).id
            ), density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4776: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1573 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_157400
     * @tc.name      : TestCase_1574
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.media.startIcon).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1574(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1574 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", @r(app.media.startIcon).id
            ), density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4777: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1574 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_157500
     * @tc.name      : TestCase_1575
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.media.startIcon).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1575(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1575 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", @r(app.media.startIcon).id
            ), density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4778: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1575 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_157600
     * @tc.name      : TestCase_1576
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.profile.main_pages).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1576(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1576 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.profile.main_pages).id), density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4779: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1576 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_157700
     * @tc.name      : TestCase_1577
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.profile.main_pages).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1577(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1577 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.profile.main_pages).id), density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4780: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1577 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_157800
     * @tc.name      : TestCase_1578
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.profile.main_pages).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1578(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1578 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.profile.main_pages).id), density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4781: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1578 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_157900
     * @tc.name      : TestCase_1579
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.profile.main_pages).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1579(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1579 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.profile.main_pages).id), density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4782: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1579 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_158000
     * @tc.name      : TestCase_1580
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.profile.main_pages).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1580(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1580 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.profile.main_pages).id), density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4783: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1580 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_158100
     * @tc.name      : TestCase_1581
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.color.start_window_background).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1581(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1581 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.color.start_window_background).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4784: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1581 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_158200
     * @tc.name      : TestCase_1582
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.color.start_window_background).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1582(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1582 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.color.start_window_background).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4785: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1582 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_158300
     * @tc.name      : TestCase_1583
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.color.start_window_background).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1583(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1583 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.color.start_window_background).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4786: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1583 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_158400
     * @tc.name      : TestCase_1584
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.color.start_window_background).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1584(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1584 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.color.start_window_background).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4787: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1584 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_158500
     * @tc.name      : TestCase_1585
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.color.start_window_background).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1585(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1585 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "", @r(app.color.start_window_background).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4788: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1585 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_158600
     * @tc.name      : TestCase_1586
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.float.float_1).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1586(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1586 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", @r(app.float.float_1).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4789: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1586 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_158700
     * @tc.name      : TestCase_1587
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.float.float_1).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1587(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1587 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", @r(app.float.float_1).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4790: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1587 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_158800
     * @tc.name      : TestCase_1588
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.float.float_1).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1588(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1588 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", @r(app.float.float_1).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4791: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1588 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_158900
     * @tc.name      : TestCase_1589
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.float.float_1).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1589(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1589 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", @r(app.float.float_1).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4792: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1589 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_159000
     * @tc.name      : TestCase_1590
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.float.float_1).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1590(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1590 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", @r(app.float.float_1).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4793: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1590 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_159100
     * @tc.name      : TestCase_1591
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.float.float_2).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1591(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1591 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", @r(app.float.float_2).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4794: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1591 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_159200
     * @tc.name      : TestCase_1592
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.float.float_2).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1592(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1592 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", @r(app.float.float_2).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4795: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1592 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_159300
     * @tc.name      : TestCase_1593
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.float.float_2).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1593(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1593 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", @r(app.float.float_2).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4796: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1593 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_159400
     * @tc.name      : TestCase_1594
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.float.float_2).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1594(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1594 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", @r(app.float.float_2).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4797: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1594 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_159500
     * @tc.name      : TestCase_1595
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.float.float_2).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1595(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1595 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", @r(app.float.float_2).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4798: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1595 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_159600
     * @tc.name      : TestCase_1596
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.integer.int_1).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1596(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1596 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", @r(app.integer.int_1).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4799: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1596 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_159700
     * @tc.name      : TestCase_1597
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.integer.int_1).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1597(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1597 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", @r(app.integer.int_1).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4800: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1597 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_159800
     * @tc.name      : TestCase_1598
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.integer.int_1).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1598(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1598 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", @r(app.integer.int_1).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4801: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1598 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_159900
     * @tc.name      : TestCase_1599
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.integer.int_1).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1599(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1599 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", @r(app.integer.int_1).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4802: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1599 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_160000
     * @tc.name      : TestCase_1600
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.integer.int_1).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1600(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1600 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "", @r(app.integer.int_1).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4803: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1600 ends.")
    }
}
