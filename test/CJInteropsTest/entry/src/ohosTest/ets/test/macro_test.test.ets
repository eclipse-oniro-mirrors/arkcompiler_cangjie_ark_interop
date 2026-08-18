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
import * as lib from "libentry.macro_test.so"

export default function TestMacro() {
  describe('TestMacro', () => {
    it('exportFunctionNum', 0, ()=> {
      let value = lib.exportNumber()
      expect(value).assertEqual(1)
    })
    it('exportClass', 0, () => {
      let value = new lib.ExportClass("abc", 1)
      expect(value.toString()).assertEqual("abc")
    })
  })
}