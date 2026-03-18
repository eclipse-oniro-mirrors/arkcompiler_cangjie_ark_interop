/*
 * Copyright (c) 2026 Huawei Device Co., Ltd.
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

import { hilog } from '@kit.PerformanceAnalysisKit';
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium';
import * as lib from "libentry.so"

export default function newScopeTask() {
  describe('TestNewScopeTask', () => {
    it('test00', 0, () => {
      lib.testNewScope00();
    })
    it('testNewScope0', 0, async ()=> {
        await lib.testNewScope0()
    })
    it('testNewScope1', 0, async ()=> {
        await lib.testNewScope1()
    })
    it('testNewScope2', 0, ()=> {
        expect(lib.testNewScope2()).assertTrue()
    })
  })
}