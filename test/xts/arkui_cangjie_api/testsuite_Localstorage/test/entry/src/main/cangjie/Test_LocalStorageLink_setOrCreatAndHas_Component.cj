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
class Test_LocalStorageLink_setOrCreateAndHas_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }
    protected override func beforeAll() {
        driver.delayMs(3000)
        let scrollBar: Component = driver.findComponent(On().onType("Scroll")).getOrThrow()
        driver.delayMs(3000)
        scrollBar.scrollSearch(On().id("View_LocalStorageLink_setOrCreatAndHas")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_LocalStorageLink_setOrCreateAndHas_Component_0100
    * @tc.name      : Test_LocalStorageLink_setOrCreateAndHas_Component_0100
    * @tc.desc      : test UIKit TLocalStorageLink setOrCreateAndHas
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_LocalStorageLink_setOrCreateAndHas_Component_0100() {
        let text00 = driver.findComponent(On().id("IntTable")).getOrThrow().getText()
        let text01 = driver.findComponent(On().id("FloatTable")).getOrThrow().getText()
        let text02 = driver.findComponent(On().id("RuneTable")).getOrThrow().getText()
        let text03 = driver.findComponent(On().id("BoolTable")).getOrThrow().getText()
        let text04 = driver.findComponent(On().id("StringTable")).getOrThrow().getText()
        let text05 = driver.findComponent(On().id("ClassTable")).getOrThrow().getText()
        let text06 = driver.findComponent(On().id("StructTable")).getOrThrow().getText()
        let text07 = driver.findComponent(On().id("EnumTable")).getOrThrow().getText()
        @Expect(text00,"IntTable storage6:true ")
        @Expect(text01,"FloatTable storage6:true ")
        @Expect(text02,"RuneTable storage6:true ")
        @Expect(text03,"BoolTable storage6:true ")
        @Expect(text04,"StringTable storage6:true ")
        @Expect(text05,"ClassTable storage6:true ")
        @Expect(text06,"StructTable storage6:true ")
        @Expect(text07,"EnumTable storage6:true ")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_LocalStorageLink_setOrCreateAndHas_Component_0200
    * @tc.name      : Test_LocalStorageLink_setOrCreateAndHas_Component_0200
    * @tc.desc      : test UIKit TLocalStorageLink setOrCreateAndHas
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_LocalStorageLink_setOrCreateAndHas_Component_0200() {
        driver.findComponent(On().id("Test_Bottum")).getOrThrow().click()
        let text00 = driver.findComponent(On().id("Int1")).getOrThrow().getText()
        let text01 = driver.findComponent(On().id("Float1")).getOrThrow().getText()
        let text02 = driver.findComponent(On().id("Rune1")).getOrThrow().getText()
        let text03 = driver.findComponent(On().id("Bool1")).getOrThrow().getText()
        let text04 = driver.findComponent(On().id("String1")).getOrThrow().getText()
        let text05 = driver.findComponent(On().id("Class1")).getOrThrow().getText()
        let text06 = driver.findComponent(On().id("Struct1")).getOrThrow().getText()
        let text07 = driver.findComponent(On().id("Enum1")).getOrThrow().getText()
        @Expect(text00,"ValueInt storage6:true 20")
        @Expect(text01,"ValueFloat storage6:true 20.000000")
        @Expect(text02,"ValueRune storage6:true B")
        @Expect(text03,"ValueBool storage6:true false")
        @Expect(text04,"ValueString storage6:true HelloCangjie")
        @Expect(text05,"ValueClass storage6:true HelloCangjie")
        @Expect(text06,"ValueStruct storage6:true HelloCangjie")
        @Expect(text07,"ValueEnum storage6:true 100")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_LocalStorageLink_setOrCreateAndHas_Component_0300
    * @tc.name      : Test_LocalStorageLink_setOrCreateAndHas_Component_0300
    * @tc.desc      : test UIKit TLocalStorageLink setOrCreateAndHas
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_LocalStorageLink_setOrCreateAndHas_Component_0300() {
        driver.findComponent(On().id("Test_Bottum_01")).getOrThrow().click()
        let text00 = driver.findComponent(On().id("Test_Res")).getOrThrow().getText()
        let text01 = driver.findComponent(On().id("Test_Res1")).getOrThrow().getText()
        @Expect(text00,"true")
        @Expect(text01,"false")
    }
}
