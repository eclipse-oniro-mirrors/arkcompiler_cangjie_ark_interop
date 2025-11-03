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
  testRegisterClass00: () => IPerson;
}

interface IPerson {
  name: string;
  age: number;
}

export default function testJSModule00() {
  describe('TestRegisterClass', () => {
    const lib = requireCJLib('libentry.so') as Lib;

    it('test00', 0, () => {
      lib.testRegisterClass00 = () => {
        class Person implements IPerson {
          name: string;
          age: number;
          constructor(name: string, age: number){
            this.name = name
            this.age = age
          }
        }
        return new Person('tom', 23)
      }
      let person = lib.testRegisterClass00();
      expect(JSON.stringify(person)).assertEqual('{"name":"tom","age":23}');
      expect(person.name).assertEqual('tom');
    })
  })
}