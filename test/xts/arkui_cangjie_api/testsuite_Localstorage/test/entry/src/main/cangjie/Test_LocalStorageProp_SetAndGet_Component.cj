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
class Test_LocalStorageProp_SetAndGet_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }
    protected override func beforeAll() {
        driver.delayMs(3000)
        let scrollBar: Component = driver.findComponent(On().onType("Scroll")).getOrThrow()
        driver.delayMs(3000)
        scrollBar.scrollSearch(On().id("View_LocalStorageProp_SetAndGet")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_LocalStorageProp_SetAndGet_Component_0100
    * @tc.name      : Test_LocalStorageProp_SetAndGet_Component_0100
    * @tc.desc      : test UIKit LocalStorageProp SetAndGet
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_LocalStorageProp_SetAndGet_Component_0100() {
        driver.findComponent(On().id("change2")).getOrThrow().click()
        let text00 = driver.findComponent(On().id("LinkInt2")).getOrThrow().getText()
        let text01 = driver.findComponent(On().id("LinkFloat2")).getOrThrow().getText()
        let text02 = driver.findComponent(On().id("LinkRune2")).getOrThrow().getText()
        let text03 = driver.findComponent(On().id("LinkBool2")).getOrThrow().getText()
        let text04 = driver.findComponent(On().id("LinkString2")).getOrThrow().getText()
        let text05 = driver.findComponent(On().id("LinkClass2")).getOrThrow().getText()
        let text06 = driver.findComponent(On().id("LinkStruct2")).getOrThrow().getText()
        let text07 = driver.findComponent(On().id("LinkEnum2")).getOrThrow().getText()
        @Expect(text00,"ValueInt In ChildComp: 10")
        @Expect(text01,"ValueFloat In ChildComp: 10.000000")
        @Expect(text02,"ValueRune In ChildComp: A")
        @Expect(text03,"ValueBool In ChildComp: true")
        @Expect(text04,"ValueString In ChildComp: HelloWorld")
        @Expect(text05,"ValueClass In ChildComp: HelloWorld")
        @Expect(text06,"ValueStruct In ChildComp: HelloWorld")
        @Expect(text07,"ValueEnum In ChildComp: 10")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_LocalStorageProp_SetAndGet_Component_0200
    * @tc.name      : Test_LocalStorageProp_SetAndGet_Component_0200
    * @tc.desc      : test UIKit LocalStorageProp SetAndGet
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_LocalStorageProp_SetAndGet_Component_0200() {
        driver.findComponent(On().id("change1")).getOrThrow().click()
        let text00 = driver.findComponent(On().id("Int1")).getOrThrow().getText()
        let text01 = driver.findComponent(On().id("Float1")).getOrThrow().getText()
        let text02 = driver.findComponent(On().id("Rune1")).getOrThrow().getText()
        let text03 = driver.findComponent(On().id("Bool1")).getOrThrow().getText()
        let text04 = driver.findComponent(On().id("String1")).getOrThrow().getText()
        let text05 = driver.findComponent(On().id("Class1")).getOrThrow().getText()
        let text06 = driver.findComponent(On().id("Struct1")).getOrThrow().getText()
        let text07 = driver.findComponent(On().id("Enum1")).getOrThrow().getText()
        let text08 = driver.findComponent(On().id("Int2")).getOrThrow().getText()
        @Expect(text00,"ValueInt storage3:true 20")
        @Expect(text01,"ValueFloat storage3:true 20.000000")
        @Expect(text02,"ValueRune storage3:true B")
        @Expect(text03,"ValueBool storage3:true false")
        @Expect(text04,"ValueString storage3:true HelloCangjie")
        @Expect(text05,"ValueClass storage3:true HelloCangjie")
        @Expect(text06,"ValueStruct storage3:true HelloCangjie")
        @Expect(text07,"ValueEnum storage3:true 100")
        @Expect(text08,"ValueInt1 storage3:false")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_LocalStorageProp_SetAndGet_Component_0300
    * @tc.name      : Test_LocalStorageProp_SetAndGet_Component_0300
    * @tc.desc      : test UIKit LocalStorageProp SetAndGet
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_LocalStorageProp_SetAndGet_Component_0300() {
        driver.findComponent(On().id("change2")).getOrThrow().click()
        let text00 = driver.findComponent(On().id("LinkInt2")).getOrThrow().getText()
        let text01 = driver.findComponent(On().id("LinkFloat2")).getOrThrow().getText()
        let text02 = driver.findComponent(On().id("LinkRune2")).getOrThrow().getText()
        let text03 = driver.findComponent(On().id("LinkBool2")).getOrThrow().getText()
        let text04 = driver.findComponent(On().id("LinkString2")).getOrThrow().getText()
        let text05 = driver.findComponent(On().id("LinkClass2")).getOrThrow().getText()
        let text06 = driver.findComponent(On().id("LinkStruct2")).getOrThrow().getText()
        let text07 = driver.findComponent(On().id("LinkEnum2")).getOrThrow().getText()
        let text08 = driver.findComponent(On().id("ValueInt_01")).getOrThrow().getText()
        @Expect(text00,"ValueInt In ChildComp: 20")
        @Expect(text01,"ValueFloat In ChildComp: 20.000000")
        @Expect(text02,"ValueRune In ChildComp: B")
        @Expect(text03,"ValueBool In ChildComp: false")
        @Expect(text04,"ValueString In ChildComp: HelloCangjie")
        @Expect(text05,"ValueClass In ChildComp: HelloCangjie")
        @Expect(text06,"ValueStruct In ChildComp: HelloCangjie")
        @Expect(text07,"ValueEnum In ChildComp: 100")
        @Expect(text08,"ValueEnum In ValueInt_01:true")
    }
}
