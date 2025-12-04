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
import { CustomLib, Season } from "libark_interop_api.so"
import { requireCJLib } from "libark_interop_loader.so"

export default function TestEnum() {
  describe('TestEnum', () => {
    const lib: CustomLib = requireCJLib("libohos_app_cangjie_entry.so") as CustomLib;
    beforeAll(() => {
    })
    beforeEach(() => {
    })
    afterEach(() => {
    })
    afterAll(() => {
    })
    it('getDefaultSeasonReturnsSpring', 0, () => {
      const result = lib.getDefaultSeason();
      expect(result).assertEqual(Season.Spring);
    })
    it('rotateSeasonMovesForward', 0, () => {
      const next = lib.rotateSeason(Season.Autumn);
      expect(next).assertEqual(Season.Winter);
    })
    it('rotateSeasonWrapsAround', 0, () => {
      const next = lib.rotateSeason(Season.Winter);
      expect(next).assertEqual(Season.Spring);
    })
    it('isHotSeasonOnlyTrueForSummer', 0, () => {
      expect(lib.isHotSeason(Season.Summer)).assertTrue();
      expect(lib.isHotSeason(Season.Spring)).assertFalse();
    })
    it('seasonFromOrdinalHandlesInvalid', 0, () => {
      const valid = lib.seasonFromOrdinal(2);
      expect(valid).assertEqual(Season.Autumn);
      const invalid = lib.seasonFromOrdinal(-1);
      expect(invalid === undefined).assertTrue();
    })
  })
}
