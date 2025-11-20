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

import kit.PerformanceAnalysisKit.Hilog
import std.unittest.testmacro.*
import ohos.ui_test.*

@Test
class Test_TextClock_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }
    protected override func beforeAll() {
        driver.delayMs(3000)
        let scrollBar: Component = driver.findComponent(On().onType("Scroll")).getOrThrow()
        driver.delayMs(3000)
        scrollBar.scrollSearch(On().id("View_TextClock")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextClock_Component_0100
    * @tc.name      : Test_TextClock_Component_001
    * @tc.desc      : test UIKit TextClock
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextClock_Component_001() {
        Hilog.info(0,"",   "cangjietest", "[Test_TextClock_Component_001] start")
        // 1、获取页面中id为TextClockBasis的组件信息
        let Inspector = getInspectorByKey("TextClockBasis")
        Hilog.info(0,"",   "cangjietest", "[Test_TextClock_Component_001] Inspector value: ${Inspector}")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        for (a in aar) {
            Hilog.info(0,"",   "cangjietest", "[Test_TextClock_Component_001]: ${a}")
        }
        // 3、读取组件信息json中的timeZoneOffset
        let obj_timeZoneOffset = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("timeZoneOffset")
            .getOrThrow()
            .toString()
        Hilog.info(0,"",   "cangjietest", "[Test_TextClock_Component_001] timeZoneOffset value: ${obj_timeZoneOffset}")
        @Expect(obj_timeZoneOffset, "\"-8.000000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextClock_Component_0200
    * @tc.name      : Test_TextClock_Component_002
    * @tc.desc      : test UIKit TextClock
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextClock_Component_002() {
        Hilog.info(0,"",   "cangjietest", "[Test_TextClock_Component_002] start")
        // 1、获取页面中id为TextClockBasis的组件信息
        let Inspector = getInspectorByKey("TextClockBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的format
        let obj_format = obj.get("$attrs").getOrThrow().asObject().get("format").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_TextClock_Component_002] format value: ${obj_format}")
        @Expect(obj_format, "\"aa hh:mm:ss\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextClock_Component_0300
    * @tc.name      : Test_TextClock_Component_003
    * @tc.desc      : test UIKit TextClock
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextClock_Component_003() {
        Hilog.info(0,"",   "cangjietest", "[Test_TextClock_Component_003] start")
        // 1、获取页面中id为TextClockBasis的组件信息
        let Inspector = getInspectorByKey("TextClockBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的textShadow
        let obj_textShadow = obj.get("$attrs").getOrThrow().asObject().get("textShadow").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_TextClock_Component_003] textShadow value: ${obj_textShadow}")
        @Expect(obj_textShadow.contains("radius10.000000color#FFFF0000offsetX10.000000offsetY0.000000"))
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextClock_Component_0400
    * @tc.name      : Test_TextClock_Component_004
    * @tc.desc      : test UIKit TextClock
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextClock_Component_004() {
        Hilog.info(0,"",   "cangjietest", "[Test_TextClock_Component_004] start")
        // 1、获取页面中id为accumulateTime的组件信息
        let Inspector = getInspectorByKey("accumulateTime")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的content
        let obj_content = obj.get("$attrs").getOrThrow().asObject().get("content").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_TextClock_Component_004] obj_content value: ${obj_content}")
        driver.delayMs(3000)
        // 1、获取页面中id为accumulateTime的组件信息
        let Inspector1 = getInspectorByKey("accumulateTime")
        // 2、将组件信息string转换为json
        let obj1 = JsonValue.fromStr(Inspector1).asObject()
        // 3、读取组件信息json中的content
        let obj_content1 = obj1.get("$attrs").getOrThrow().asObject().get("content").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_TextClock_Component_004] obj_content value: ${obj_content1}")
        @Expect(obj_content!=obj_content1)
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextClock_Component_0500
    * @tc.name      : Test_TextClock_Component_005
    * @tc.desc      : test UIKit TextClock
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextClock_Component_005() {
        Hilog.info(0,"",   "cangjietest", "[Test_TextClock_Component_005] start")
        driver.findComponent(On().id("stopButton")).getOrThrow().click()
        // 1、获取页面中id为accumulateTime的组件信息
        let Inspector = getInspectorByKey("accumulateTime")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的content
        let obj_content = obj.get("$attrs").getOrThrow().asObject().get("content").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_TextClock_Component_005] obj_content value 1: ${obj_content}")
        driver.delayMs(3000)
        // 1、获取页面中id为accumulateTime的组件信息
        let Inspector1 = getInspectorByKey("accumulateTime")
        // 2、将组件信息string转换为json
        let obj1 = JsonValue.fromStr(Inspector1).asObject()
        // 3、读取组件信息json中的content
        let obj_content1 = obj1.get("$attrs").getOrThrow().asObject().get("content").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_TextClock_Component_005] obj_content value 2: ${obj_content1}")
        driver.findComponent(On().id("startButton")).getOrThrow().click()
        driver.delayMs(3000)
        // 1、获取页面中id为accumulateTime的组件信息
        let Inspector2 = getInspectorByKey("accumulateTime")
        // 2、将组件信息string转换为json
        let obj2 = JsonValue.fromStr(Inspector2).asObject()
        // 3、读取组件信息json中的content
        let obj_content2 = obj2.get("$attrs").getOrThrow().asObject().get("content").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_TextClock_Component_005] obj_content value 3: ${obj_content2}")
        @Expect(obj_content==obj_content1)
        @Expect(obj_content1!=obj_content2)
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextClock_Component_0600
    * @tc.name      : Test_TextClock_Component_006
    * @tc.desc      : test UIKit TextClock
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextClock_Component_006() {
        Hilog.info(0,"",   "cangjietest", "[Test_TextClock_Component_006] start")
        // 1、获取页面中id为TextClockBasis的组件信息
        let Inspector = getInspectorByKey("TextClockBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的fontColor
        let obj_fontColor = obj.get("$attrs").getOrThrow().asObject().get("fontColor").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_TextClock_Component_006] fontColor value: ${obj_fontColor}")
        @Expect(obj_fontColor, "\"#FF0000FF\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextClock_Component_0700
    * @tc.name      : Test_TextClock_Component_007
    * @tc.desc      : test UIKit TextClock
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextClock_Component_007() {
        Hilog.info(0,"",   "cangjietest", "[Test_TextClock_Component_007] start")
        // 1、获取页面中id为TextClockBasis的组件信息
        let Inspector = getInspectorByKey("TextClockBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的fontSize
        let obj_fontSize = obj.get("$attrs").getOrThrow().asObject().get("fontSize").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_TextClock_Component_007] fontSize value: ${obj_fontSize}")
        @Expect(obj_fontSize, "\"30.00fp\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextClock_Component_0800
    * @tc.name      : Test_TextClock_Component_008
    * @tc.desc      : test UIKit TextClock
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextClock_Component_008() {
        Hilog.info(0,"",   "cangjietest", "[Test_TextClock_Component_008] start")
        // 1、获取页面中id为TextClockBasis的组件信息
        let Inspector = getInspectorByKey("TextClockBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的fontStyle
        let obj_fontStyle = obj.get("$attrs").getOrThrow().asObject().get("fontStyle").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_TextClock_Component_008] fontStyle value: ${obj_fontStyle}")
        @Expect(obj_fontStyle, "\"FontStyle.Italic\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextClock_Component_0900
    * @tc.name      : Test_TextClock_Component_009
    * @tc.desc      : test UIKit TextClock
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextClock_Component_009() {
        Hilog.info(0,"",   "cangjietest", "[Test_TextClock_Component_009] start")
        // 1、获取页面中id为TextClockBasis的组件信息
        let Inspector = getInspectorByKey("TextClockBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的fontWeight
        let obj_fontWeight = obj.get("$attrs").getOrThrow().asObject().get("fontWeight").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_TextClock_Component_009] fontWeight value: ${obj_fontWeight}")
        @Expect(obj_fontWeight, "\"400\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextClock_Component_1000
    * @tc.name      : Test_TextClock_Component_010
    * @tc.desc      : test UIKit TextClock
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextClock_Component_010() {
        Hilog.info(0,"",   "cangjietest", "[Test_TextClock_Component_010] start")
        // 1、获取页面中id为TextClockBasis的组件信息
        let Inspector = getInspectorByKey("TextClockBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的fontFamily
        let obj_fontFamily = obj.get("$attrs").getOrThrow().asObject().get("fontFamily").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_TextClock_Component_010] fontFamily value: ${obj_fontFamily}")
        @Expect(obj_fontFamily, "\"Arial\"")
    }
}
