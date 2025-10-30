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

import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium';
import { requireCJLib } from "libark_interop_loader.so"
import { hilog } from '@kit.PerformanceAnalysisKit';
import { JSON } from '@kit.ArkTS';

interface Lib {
  testRegisterAfterStaticInit00(): void;

  testRegisterAfterStaticInit00_00(): void;
}

export default function testJSModule04() {
  describe('TestRegisterAfterStaticInit', () => {
    let lib = requireCJLib('libentry.so') as Lib;

    it('test00', 0, () => {
      let i = Object.keys(lib).indexOf('testRegisterAfterStaticInit00_00');
      expect(i).assertEqual(-1);
      lib.testRegisterAfterStaticInit00();
      lib = requireCJLib('libentry.so') as Lib;
      i = Object.keys(lib).indexOf('testRegisterAfterStaticInit00_00');
      expect(i).assertEqual(-1);
    })
    it('test01', 0, () => {
    })
  })
}