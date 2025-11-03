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
import { print } from './utility';

interface Lib {
  testBigInt13(bigInt: bigint): void;

  testBigInt14(bigInt: bigint): void;

  testBigInt15(bigInt: bigint): void;

  testBigInt16(bigInt: bigint): void;

  testBigInt17(bigInt: bigint): void;

  testBigInt18(bigInt: bigint): void;

  testBigInt19(bigInt: bigint): void;

  testBigInt20(bigInt: bigint): void;

  testBigInt21(bigInt: bigint): void;

  testBigInt22(bigInt: bigint): void;

  testBigInt23(bigInt: bigint): void;

  testBigInt24(bigInt: bigint): void;

  testBigInt25(bigInt: bigint): void;

  testBigInt26(bigInt: bigint): void;

  testBigInt27(bigInt: bigint): void;

  testBigInt28(bigInt: bigint): void;

  testBigInt29(bigInt: bigint): void;

  testBigInt30(bigInt: bigint): void;

  testBigInt31(bigInt: bigint): void;

  testBigInt32(bigInt: bigint): void;

  testBigInt33(bigInt: bigint): void;

  testBigInt34(bigInt: bigint): void;

  testBigInt35(bigInt: bigint): void;

  testBigInt36(bigInt: bigint): void;

  testBigInt37(bigInt: bigint): void;

  testBigInt38(bigInt: bigint): void;

  testBigInt39(bigInt: bigint): void;
}

export default function testBigInt01() {
  describe('TestBigIntPrecision', () => {
    const lib = requireCJLib('libentry.so') as Lib;
    const int64MinValue = -9_223_372_036_854_775_808n;
    // print(int64MinValue.toString());
    const int64MaxValue = 9_223_372_036_854_775_807n;
    // print(int64MaxValue.toString());
    const maxSafeInteger = BigInt(Number.MAX_SAFE_INTEGER);
    print(maxSafeInteger.toString());
    const maxValue = BigInt(Number.MAX_VALUE);
    // // print(maxValue.toString());
    // const minValue = BigInt(Number.MIN_VALUE);
    // // print(minValue.toString());
    const minSafeInteger = BigInt(Number.MIN_SAFE_INTEGER);
    print(minSafeInteger.toString());
    // const negativeInfinity = BigInt(Number.NEGATIVE_INFINITY);
    // // print(negativeInfinity.toString());
    // const positiveInfinity = BigInt(Number.POSITIVE_INFINITY);
    // // print(positiveInfinity.toString());
    // const epsilon = BigInt(Number.EPSILON);
    // print(epsilon.toString());
    print(`maxSafeInteger + 1n = ${maxSafeInteger + 1n}`);
    print(`maxSafeInteger = ${maxSafeInteger}`);
    print(`minSafeInteger - 1n = ${minSafeInteger - 1n}`);
    print(`minSafeInteger = ${minSafeInteger}`);
    print(`Number.MAX_SAFE_INTEGER     = ${Number.MAX_SAFE_INTEGER}`);
    print(`Number.MAX_SAFE_INTEGER + 1 = ${Number.MAX_SAFE_INTEGER + 1}`);
    print(`Number.MIN_SAFE_INTEGER     = ${Number.MIN_SAFE_INTEGER}`);
    print(`Number.MIN_SAFE_INTEGER - 1 = ${Number.MIN_SAFE_INTEGER - 1}`);
    print(Number(BigInt('999999999999999999')).toString());
    print(`${999999999999999999}`);
    print(`${999999999999999}`);

    it('test13', 0, () => {
      lib.testBigInt13(int64MinValue - 1n);
    })
    it('test14', 0, () => {
      lib.testBigInt14(int64MinValue);
    })
    it('test15', 0, () => {
      lib.testBigInt15(int64MinValue + 1n);
    })
    it('test16', 0, () => {
      lib.testBigInt16(-114514n);
    })
    it('test17', 0, () => {
      lib.testBigInt17(-1n);
    })
    it('test18', 0, () => {
      lib.testBigInt18(0n);
    })
    it('test19', 0, () => {
      lib.testBigInt19(1n);
    })
    it('test20', 0, () => {
      lib.testBigInt20(114514n);
    })
    it('test21', 0, () => {
      lib.testBigInt21(int64MaxValue - 1n);
    })
    it('test22', 0, () => {
      lib.testBigInt22(int64MaxValue);
    })
    it('test23', 0, () => {
      lib.testBigInt23(int64MaxValue + 1n);
    })
    it('test24', 0, () => {
      lib.testBigInt24(int64MinValue - 1n);
    })
    it('test25', 0, () => {
      lib.testBigInt25(int64MinValue);
    })
    it('test26', 0, () => {
      lib.testBigInt26(int64MinValue + 1n);
    })
    it('test27', 0, () => {
      lib.testBigInt27(-114514n);
    })
    it('test28', 0, () => {
      lib.testBigInt28(-1n);
    })
    it('test29', 0, () => {
      lib.testBigInt29(0n);
    })
    it('test30', 0, () => {
      lib.testBigInt30(1n);
    })
    it('test31', 0, () => {
      lib.testBigInt31(114514n);
    })
    it('test32', 0, () => {
      lib.testBigInt32(int64MaxValue - 1n);
    })
    it('test33', 0, () => {
      lib.testBigInt33(int64MaxValue);
    })
    it('test34', 0, () => {
      lib.testBigInt34(int64MaxValue + 1n);
    })
  })
}