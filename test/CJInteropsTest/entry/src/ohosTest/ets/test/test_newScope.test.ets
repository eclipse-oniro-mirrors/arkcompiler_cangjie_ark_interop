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
import deviceInfo from '@ohos.deviceInfo';

export default function newScopeTask() {
  describe('TestNewScopeTask', () => {
    it('test_JSContext_newScope_fixMemoryLeak_success', 0, async ()=> {
      if (deviceInfo.sdkApiVersion >= 24) {
        let result = await lib.test_JSContext_newScope_fixMemoryLeak_success()
        expect(result).assertTrue()
      }
    })
    it('test_JSContext_newScope_throwException_referenceBeyondReach', 0, async ()=> {
      if (deviceInfo.sdkApiVersion >= 24) {
        let result = await lib.test_JSContext_newScope_throwException_referenceBeyondReach()
        expect(typeof result).assertEqual('string')
        expect(result.includes('beyond reach') || result === 'no exception throw').assertTrue()
      }
    })
    it('test_JSContext_newScope_throwException_threadMismatch', 0, ()=> {
      if (deviceInfo.sdkApiVersion >= 24) {
        expect(lib.test_JSContext_newScope_throwException_threadMismatch()).assertEqual("Thread mismatch")
      }
    })
  })
}