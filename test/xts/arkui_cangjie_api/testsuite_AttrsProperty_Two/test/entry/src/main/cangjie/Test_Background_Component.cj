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
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
internal import ohos.arkui.component.getInspectorByKey
internal import stdx.encoding.json.JsonValue
import ohos.display
@Test
class Test_Background_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }
    protected override func beforeAll() {
        driver.delayMs(3000)
        let scrollBar: Component = driver.findComponent(On().onType("Scroll")).getOrThrow()
        driver.delayMs(3000)
        scrollBar.scrollSearch(On().id("View_Background")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_Background_Component_0100
     * @tc.desic：backgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Background_Component_0100() {
        let Border = getInspectorByKey("Test_Row00")
        let obj = JsonValue.fromStr(Border).asObject()
        let obj_backgroundColor = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("backgroundColor")
            .getOrThrow()
            .toString()
        @Expect(obj_backgroundColor,"\"#FFC11010\"")
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_Background_Component_0200
     * @tc.desic：backgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Background_Component_0200() {
        let Border = getInspectorByKey("Test_Row01")
        let obj = JsonValue.fromStr(Border).asObject()
        let obj_backgroundColor = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("backgroundColor")
            .getOrThrow()
            .toString()
        @Expect(obj_backgroundColor,"\"#FFAFEEEE\"")
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_Background_Component_0300
     * @tc.desic：backgroundImage
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Background_Component_0300() {
        let Border = getInspectorByKey("Test_Row02")
        let obj = JsonValue.fromStr(Border).asObject()
        let obj_backgroundImage = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("backgroundImage")
            .getOrThrow()
            .toString()
        @Expect(obj_backgroundImage.contains("http://gips0.baidu.com/"))
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_Background_Component_0400
     * @tc.desic：borderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Background_Component_0400() {
        let Border = getInspectorByKey("Test_Row02")
        let obj = JsonValue.fromStr(Border).asObject()
        let obj_backgroundImageSize = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("backgroundImageSize")
            .getOrThrow()
            .toString()
        @Expect(obj_backgroundImageSize,"\"ImageSize.Auto\"")
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_Background_Component_0500
     * @tc.desic：backgroundImagePosition
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Background_Component_0500() {
        let Border = getInspectorByKey("Test_Row02")
        let obj = JsonValue.fromStr(Border).asObject()
        let obj_backgroundImagePosition = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("backgroundImagePosition")
            .getOrThrow()
            .toString()
        let strokeWidthpx = -500.0 * display
            .getDefaultDisplaySync()
            .densityPixels
        let strokehightpx = -300.0 * display
            .getDefaultDisplaySync()
            .densityPixels
        @Expect(obj_backgroundImagePosition,"\"{\\\"x\\\":${Int64(strokeWidthpx).toString()},\\\"y\\\":${Int64(strokehightpx).toString()}}\"")
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_Background_Component_0600
     * @tc.desic：backgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Background_Component_0600() {
        let Border = getInspectorByKey("Test_Row03")
        let obj = JsonValue.fromStr(Border).asObject()
        let obj_backgroundImageSize = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("backgroundImageSize")
            .getOrThrow()
            .toString()
        let strokeWidthpx = 50.0 * display
            .getDefaultDisplaySync()
            .densityPixels
        let strokehightpx = 50.0 * display
            .getDefaultDisplaySync()
            .densityPixels
         let length = strokeWidthpx.toString().size
        let length1 = strokehightpx.toString().size
        let  finalstrokeWidthpx = strokeWidthpx.toString()[0..length - 4]
        let  finalstrokehightpx = strokehightpx.toString()[0..length1 - 4]
        @Expect(obj_backgroundImageSize,"\"{\\\"width\\\":\\\"${finalstrokeWidthpx}px\\\",\\\"height\\\":\\\"${finalstrokehightpx}px\\\"}\"")
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_Background_Component_0700
     * @tc.desic：backgroundImagePosition
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Background_Component_0700() {
        let Border = getInspectorByKey("Test_Row03")
        let obj = JsonValue.fromStr(Border).asObject()
        let obj_backgroundImagePosition = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("backgroundImagePosition")
            .getOrThrow()
            .toString()
         let strokeWidthpx = -500.0 * display
            .getDefaultDisplaySync()
            .densityPixels
        let strokehightpx = -300.0 * display
            .getDefaultDisplaySync()
            .densityPixels
        @Expect(obj_backgroundImagePosition,"\"{\\\"x\\\":${Int64(strokeWidthpx).toString()},\\\"y\\\":${Int64(strokehightpx).toString()}}\"")
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_Background_Component_0800
     * @tc.desic：backgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Background_Component_0800() {
        let Border = getInspectorByKey("Test_Row04")
        let obj = JsonValue.fromStr(Border).asObject()
        let obj_backgroundImageSize = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("backgroundImageSize")
            .getOrThrow()
            .toString()
        let strokeWidthpx = 50.0 * display
            .getDefaultDisplaySync()
            .densityPixels
        let strokehightpx = 50.0 * display
            .getDefaultDisplaySync()
            .densityPixels
        let length = strokeWidthpx.toString().size
        let length1 = strokehightpx.toString().size
        let  finalstrokeWidthpx = strokeWidthpx.toString()[0..length - 4]
        let  finalstrokehightpx = strokehightpx.toString()[0..length1 - 4]
        @Expect(obj_backgroundImageSize,"\"{\\\"width\\\":\\\"${finalstrokeWidthpx}px\\\",\\\"height\\\":\\\"${finalstrokehightpx}px\\\"}\"")
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_Background_Component_0900
     * @tc.desic：backgroundImagePosition
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Background_Component_0900() {
        let Border = getInspectorByKey("Test_Row04")
        let obj = JsonValue.fromStr(Border).asObject()
        let obj_backgroundImagePosition = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("backgroundImagePosition")
            .getOrThrow()
            .toString()
        let strokeWidthpx = 50.0 * display
            .getDefaultDisplaySync()
            .densityPixels
        let strokehightpx = 50.0 * display
            .getDefaultDisplaySync()
            .densityPixels
        @Expect(obj_backgroundImagePosition,"\"{\\\"x\\\":${Int64(strokeWidthpx).toString()},\\\"y\\\":${Int64(strokehightpx).toString()}}\"")
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_Background_Component_01000
     * @tc.desic：backgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Background_Component_01000() {
        let Border = getInspectorByKey("Test_Row05")
        let obj = JsonValue.fromStr(Border).asObject()
        let obj_backgroundImageSize = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("backgroundImageSize")
            .getOrThrow()
            .toString()
         let strokeWidthpx = 100.0 * display
            .getDefaultDisplaySync()
            .densityPixels
        let strokehightpx = 100.0 * display
            .getDefaultDisplaySync()
            .densityPixels
         let length = strokeWidthpx.toString().size
        let length1 = strokehightpx.toString().size
        let  finalstrokeWidthpx = strokeWidthpx.toString()[0..length - 4]
        let  finalstrokehightpx = strokehightpx.toString()[0..length1 - 4]
        @Expect(obj_backgroundImageSize,"\"{\\\"width\\\":\\\"${finalstrokeWidthpx}px\\\",\\\"height\\\":\\\"${finalstrokehightpx}px\\\"}\"")
    }
}
