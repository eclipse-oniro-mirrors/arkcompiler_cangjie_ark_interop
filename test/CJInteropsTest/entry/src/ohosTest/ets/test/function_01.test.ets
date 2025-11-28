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
import * as lib from "libentry.so"

function globalFunction(a: number): number {
  return a + 1;
}

declare function globalFunction01(a: number): number;

let globalLambda = (a: number) => {
  return a + 1;
}

class C {
  instanceMethod(a: number): number {
    return a + 2;
  }

  static staticMethod(a: number): number {
    return a + 3;
  }
}

export default function functionTest() {
  describe('TestFunction', () => {
    it('test00', 0, () => {
      lib.testFunction00(globalFunction);
    })
    it('test01', 0, () => {
      try {
        lib.testFunction01(globalFunction01);
      } catch (e) {
        expect(e.message.toString()).assertEqual('globalFunction01 is not defined');
      }
    })
    it('test02', 0, () => {
      lib.testFunction02(globalLambda);
    })
    it('test03', 0, () => {
      let localLambda = (a: number) => {
        return a + 1;
      }
      lib.testFunction03(localLambda);
    })
    it('test04', 0, async () => {
      let c = new C();
      let m = c.instanceMethod;
      lib.testFunction04(m);
    })
    it('test05', 0, async () => {
      let c = new C();
      let m = C.staticMethod;
      lib.testFunction05(m);
    })
    it('test06', 0, () => {
      let f = lib.testFunction06();
      expect(f(114.514)).assertEqual(115.514);
    })
  })
}