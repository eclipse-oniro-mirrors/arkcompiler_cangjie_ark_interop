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
      lib.test_JSFunction_call_globalFunction_success(globalFunction);
    })
    it('test01', 0, () => {
      try {
        lib.test_JSFunction_call_undefinedFunction_throwException34300002_notDefined(globalFunction01);
      } catch (e) {
        expect(e.message.toString()).assertEqual('globalFunction01 is not defined');
      }
    })
    it('test02', 0, () => {
      lib.test_JSFunction_call_globalLambda_success(globalLambda);
    })
    it('test03', 0, () => {
      let localLambda = (a: number) => {
        return a + 1;
      }
      lib.test_JSFunction_call_localLambda_success(localLambda);
    })
    it('test04', 0, async () => {
      let c = new C();
      let m = c.instanceMethod;
      lib.test_JSFunction_call_instanceMethod_success(m);
    })
    it('test05', 0, async () => {
      let c = new C();
      let m = C.staticMethod;
      lib.test_JSFunction_call_staticMethod_success(m);
    })
    it('test06', 0, () => {
      let f = lib.test_JSContext_function_returnCallable_success();
      expect(f(114.514)).assertEqual(115.514);
    })
  })
}