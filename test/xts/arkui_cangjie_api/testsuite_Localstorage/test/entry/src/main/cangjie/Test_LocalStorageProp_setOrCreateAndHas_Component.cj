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
class Test_LocalStorageProp_setOrCreateAndHas_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }
    protected override func beforeAll() {
        driver.delayMs(3000)
        let scrollBar: Component = driver.findComponent(On().onType("Scroll")).getOrThrow()
        driver.delayMs(3000)
        scrollBar.scrollSearch(On().id("View_LocalStorageProp_setOrCreatAndHas")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_LocalStorageProp_setOrCreateAndHas_Component_0100
    * @tc.name      : Test_LocalStorageProp_setOrCreateAndHas_Component_0100
    * @tc.desc      : test UIKit LocalStorageProp SetAndLink
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_LocalStorageProp_setOrCreateAndHas_Component_0100() {
        let text00 = driver.findComponent(On().id("IntTable")).getOrThrow().getText()
        let text01 = driver.findComponent(On().id("FloatTable")).getOrThrow().getText()
        let text02 = driver.findComponent(On().id("RuneTable")).getOrThrow().getText()
        let text03 = driver.findComponent(On().id("BoolTable")).getOrThrow().getText()
        let text04 = driver.findComponent(On().id("StringTable")).getOrThrow().getText()
        let text05 = driver.findComponent(On().id("ClassTable")).getOrThrow().getText()
        let text06 = driver.findComponent(On().id("StructTable")).getOrThrow().getText()
        let text07 = driver.findComponent(On().id("EnumTable")).getOrThrow().getText()
        @Expect(text00,"IntTable storage: true")
        @Expect(text01,"FloatTable storage: true")
        @Expect(text02,"RuneTable storage: true")
        @Expect(text03,"BoolTable storage: true")
        @Expect(text04,"StringTable storage: true")
        @Expect(text05,"ClassTable storage: true")
        @Expect(text06,"StructTable storage: true")
        @Expect(text07,"EnumTable storage: true")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_LocalStorageProp_setOrCreateAndHas_Component_0200
    * @tc.name      : Test_LocalStorageProp_setOrCreateAndHas_Component_0200
    * @tc.desc      : test UIKit LocalStorageProp SetAndLink
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_LocalStorageProp_setOrCreateAndHas_Component_0200() {
        driver.findComponent(On().id("Test_Bottum")).getOrThrow().click()
        let text00 = driver.findComponent(On().id("Int1")).getOrThrow().getText()
        let text01 = driver.findComponent(On().id("Float1")).getOrThrow().getText()
        let text02 = driver.findComponent(On().id("Rune1")).getOrThrow().getText()
        let text03 = driver.findComponent(On().id("Bool1")).getOrThrow().getText()
        let text04 = driver.findComponent(On().id("String1")).getOrThrow().getText()
        let text05 = driver.findComponent(On().id("Class1")).getOrThrow().getText()
        let text06 = driver.findComponent(On().id("Struct1")).getOrThrow().getText()
        let text07 = driver.findComponent(On().id("Enum1")).getOrThrow().getText()
        @Expect(text00,"ValueInt storage:true 20")
        @Expect(text01,"ValueFloat storage:true 20.000000")
        @Expect(text02,"ValueRune storage:true B")
        @Expect(text03,"ValueBool storage:true false")
        @Expect(text04,"ValueString storage:true HelloCangjie")
        @Expect(text05,"ValueClass storage:true HelloCangjie")
        @Expect(text06,"ValueStruct storage:true HelloCangjie")
        @Expect(text07,"ValueEnum storage:true 100")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_LocalStorageProp_setOrCreateAndHas_Component_0300
    * @tc.name      : Test_LocalStorageProp_setOrCreateAndHas_Component_0300
    * @tc.desc      : test UIKit LocalStorageProp SetAndLink
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_LocalStorageProp_setOrCreateAndHas_Component_0300() {
        driver.findComponent(On().id("Test_Bottum_01")).getOrThrow().click()
        let text00 = driver.findComponent(On().id("Test_Res")).getOrThrow().getText()
        let text01 = driver.findComponent(On().id("Test_Res1")).getOrThrow().getText()
        @Expect(text00,"true")
        @Expect(text01,"false")
    }
}
