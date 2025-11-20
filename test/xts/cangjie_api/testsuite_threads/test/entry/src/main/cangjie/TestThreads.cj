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
import ohos.base.*

@Test
class TestThreads {
    @BeforeAll
    func wait(): Unit {
        sleepFor(5.second)
    }
    /*
     * @tc.number    : Sub_Cangjie_arkts_interop_TestThreads_0100
     * @tc.name      : onWindowStageCreate_spawnMain
     * @tc.desc      : waits for an event with the name "onWindowStageCreate spawn(UIThread)" to occur and then executes the provided closure.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func onWindowStageCreate_spawnMain(): Unit {
        waitForEventWithName("onWindowStageCreate spawn(UIThread)") {_ =>}
    }
    /*
     * @tc.number    : Sub_Cangjie_arkts_interop_TestThreads_0200
     * @tc.name      : onWindowStageCreate_spawn_spawnMain
     * @tc.desc      : waits for an event with the name "onWindowStageCreate spawn(UIThread)" to occur and then executes the provided closure.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func onWindowStageCreate_spawn_spawnMain(): Unit {
        waitForEventWithName("onWindowStageCreate spawn spawn(UIThread)") {_ =>}
    }
    /*
     * @tc.number    : Sub_Cangjie_arkts_interop_TestThreads_0300
     * @tc.name      : onWindowStageCreate_spawnMain_spawnMain
     * @tc.desc      : waits for an event with the name "onWindowStageCreate spawn(UIThread)" to occur and then executes the provided closure.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func onWindowStageCreate_spawnMain_spawnMain(): Unit {
        waitForEventWithName("onWindowStageCreate spawn(UIThread) spawn(UIThread)") {_ =>}
    }
    /*
     * @tc.number    : Sub_Cangjie_arkts_interop_TestThreads_0400
     * @tc.name      : onClick_spawnMain_spawnMain
     * @tc.desc      : Test whether the click event can be correctly triggered and the related events handled
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func onClick_spawnMain_spawnMain(): Unit {
        click(at: Screen.getTheOnlyUiComponentWhoseTextEqualsTo("onClick spawn(UIThread) spawn(UIThread)").centerPoint)
        waitForEventWithName("onClick spawn(UIThread) spawn(UIThread)") {_ =>}
    }
    /*
     * @tc.number    : Sub_Cangjie_arkts_interop_TestThreads_0500
     * @tc.name      : onClick_spawnMain
     * @tc.desc      : Test whether the click event can be correctly triggered and the related events handled
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func onClick_spawnMain(): Unit {
        click(at: Screen.getTheOnlyUiComponentWhoseTextEqualsTo("onClick spawn(UIThread)").centerPoint)
        waitForEventWithName("onClick spawn(UIThread)") {_ =>}
    }
    /*
     * @tc.number    : Sub_Cangjie_arkts_interop_TestThreads_0600
     * @tc.name      : onClick_spawn_spawnMain
     * @tc.desc      : Test whether the click event can be correctly triggered and the related events handled
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func onClick_spawn_spawnMain(): Unit {
        click(at: Screen.getTheOnlyUiComponentWhoseTextEqualsTo("onClick spawn spawn(UIThread)").centerPoint)
        waitForEventWithName("onClick spawn spawn(UIThread)") {_ =>}
    }
}
