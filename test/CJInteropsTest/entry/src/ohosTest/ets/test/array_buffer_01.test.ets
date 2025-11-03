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
  testArray00<T>(array: Array<T>): void;

  testArray01<T>(array: Array<T>): void;

  testArray02(): Array<number | boolean>;
}

export default function arrayTest() {
  describe('TestArray', () => {
    const lib = requireCJLib('libentry.so') as Lib;

    it('test00', 0, () => {
      let emptyArray = [];
      lib.testArray00(emptyArray);
    })
    it('test01', 0, () => {
      let array = [114.514, "my love", undefined, null, true];
      lib.testArray01(array);
    })
    it('test02', 0, () => {
      let array = lib.testArray02();
      expect(array[0]).assertEqual(114.514);
      expect(array[1]).assertEqual(false);
    })
  })
}