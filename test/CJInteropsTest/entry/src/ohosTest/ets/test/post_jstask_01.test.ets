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

import { hilog } from '@kit.PerformanceAnalysisKit';
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium';
import { requireCJLib } from "libark_interop_loader.so"

interface Lib {
  testPostJSTask00(): void;

  testPostJSTask01(a: number, b: number, f: (a: number, b: number) => number): Promise<number>;
}

export default function postJSTask() {
  describe('TestPostJSTask', () => {
    const lib = requireCJLib('libentry.so') as Lib;

    it('test00', 0, () => {
      lib.testPostJSTask00();
    })
    it('test01', 0, async () => {
      let result = await lib.testPostJSTask01(1, 2, (a: number, b: number) => {
        return a + b;
      });
    })
  })
}