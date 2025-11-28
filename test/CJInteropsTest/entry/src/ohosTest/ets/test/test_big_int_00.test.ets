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

export default function testBigInt00() {
  describe('TestBigInt01', () => {
    it('test00', 0, () => {
      const bigInt = 123n;
      lib.testBigInt00(bigInt);
    })
    it('test01', 0, () => {
      const bigInt = lib.testBigInt01();
      expect(typeof bigInt).assertEqual('bigint');
    })
    it('test02', 0, () => {
      const bigInt = BigInt('123');
      lib.testBigInt02(bigInt);
    })
    // 一般使用toInt64时，不丢失精度转换为Int64
    it('test03', 0, () => {
      const bigInt = 114514n;
      lib.testBigInt03(bigInt);
    })
    // 一般使用toBigInt
    it('test04', 0, () => {
      const bigInt = 3n;
      lib.testBigInt04(bigInt);
    })
    // 一般使用toInt64时，丢失精度转换为Int64
    it('test05', 0, () => {
      const int64Max = 9_223_372_036_854_775_807n;
      const bigInt = int64Max + 3n;
      lib.testBigInt05(bigInt);
    })
    // cj侧构造的bigint在js侧可以与另一个bigint正常进行数学运算
    it('test06', 0, () => {
      const bigInt = lib.testBigInt06();
      const result = bigInt + 1n;
      expect(result).assertEqual(4n);
    })
    // BigInt.prototype.toString()
    it('test07', 0, () => {
      const bigInt = lib.testBigInt07();
      expect(bigInt.toString()).assertEqual('3');
    })
    // BigInt.prototype.valueOf()
    it('test08', 0, () => {
      const bigInt = lib.testBigInt08();
      expect(bigInt.valueOf()).assertEqual(bigInt);
      expect(bigInt.valueOf()).assertEqual(3n);
    })
    // BigInt.prototype.toLocaleString()
    it('test09', 0, () => {
      const bigInt = lib.testBigInt09();
      expect(bigInt.toLocaleString()).assertEqual('3');
    })
  })
}