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
import ohos.telephony.call.*
import kit.PerformanceAnalysisKit.Hilog

@Test
class testMakeCall_1 {
    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_hasCallDataFactor_0100
     * @tc.name      : TestCase_0
     * @tc.desc      : descriptor of telephony_call.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_0(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_0 begins.")
        Hilog.info(0, "cangjietest", "would throw exception")
        try {
            Call.makeCall("")
            @Expect("assertion#0: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.message, "Unknown error code: 2097205")
            @Expect(e.code, 2097205i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_0 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_hasCallDataFactor_0200
     * @tc.name      : TestCase_1
     * @tc.desc      : descriptor of telephony_call.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1 begins.")
        Hilog.info(0, "cangjietest", "would throw exception")
        try {
            Call.makeCall("123456789")
            @Expect("assertion#1: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.message, "Unknown error code: 2097205")
            @Expect(e.code, 2097205i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_hasCallDataFactor_0300
     * @tc.name      : TestCase_2
     * @tc.desc      : descriptor of telephony_call.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_2 begins.")
        Hilog.info(0, "cangjietest", "would throw exception")
        try {
            Call.makeCall("abcdrf")
            @Expect("assertion#2: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.message, "Unknown error code: 2097205")
            @Expect(e.code, 2097205i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_hasCallDataFactor_0400
     * @tc.name      : TestCase_3
     * @tc.desc      : descriptor of telephony_call.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_3 begins.")
        Hilog.info(0, "cangjietest", "would throw exception")
        try {
            Call.makeCall("010-222222")
            @Expect("assertion#3: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.message, "Unknown error code: 2097205")
            @Expect(e.code, 2097205i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_hasCallDataFactor_0500
     * @tc.name      : TestCase_4
     * @tc.desc      : descriptor of telephony_call.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_4 begins.")
        Hilog.info(0, "cangjietest", "would throw exception")
        try {
            Call.makeCall("9223372036854775807")
            @Expect("assertion#4: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.message, "Unknown error code: 2097205")
            @Expect(e.code, 2097205i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_4 ends.")
    }
}
