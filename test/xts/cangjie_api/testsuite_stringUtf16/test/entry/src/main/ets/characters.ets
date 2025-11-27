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

import { HashMap } from "@kit.ArkTS"
// import {requireCJLib} from "libark_interop_loader.so"

import {
  doGC, doSync, readStrToJ, readStrToC, createStdLaint1, createStdUtf16, createNewLaint1, createNewUtf16, createString, benchGC, testString
} from "libohos_app_cangjie_entry.so";

/*
interface CJLib {
  doGC(): void;
  doSync(callback: ()=>void): number;
  readStrToJ(src: string): void
  readStrToC(src: string): void
  createStdLaint1(length: number): [()=>void, ()=>string, ()=>void]
  createStdUtf16(length: number): [()=>void, ()=>string, ()=>void]
  createNewLaint1(length: number): [()=>void, ()=>string, ()=>void]
  createNewUtf16(length: number): [()=>void, ()=>string, ()=>void]
  createString(encoding: number, length: number): string
  benchGC(repeat: number): void
  testString(): void
}*/
// const cjlib = requireCJLib("libohos_app_cangjie_entry.so") as CJLib

interface CharsetOption {
  encodingWidth: number;
  length: number;
  randomRange: [number, number];
}

const latin1Option: CharsetOption = {
  encodingWidth: 1,
  length: 0,
  randomRange: ["他".charCodeAt(0), "吴".charCodeAt(0) + 1]
};

const utf16Option: CharsetOption = {
  encodingWidth: 2,
  length: 0,
  randomRange: ["A".charCodeAt(0), "Z".charCodeAt(0) + 1]
};

class StrIterator implements Iterator<string> {
  private creator_: ()=>string
  constructor(creator: ()=>string) {
    this.creator_ = creator
  }

  next(): IteratorResult<string> {
    return {
      done: false,
      value: this.creator_()
    }
  }
}

const randers = [latin1Option, utf16Option].map(o => {
  let map = new HashMap<number, ()=>string>()
  return (length: number) => {
    let creator = map.get(length);
    if (!creator) {
      o.length = length;
      creator = () => {
        return createString(o.encodingWidth - 1, length)
      }
      map[length] = creator;
    }
    return new StrIterator(creator);
  }
})

export const enum Encoding {
  AllLatin1 = 0,
  AllUtf16 = 1
}

export function createSamples(encoding: Encoding, length: number): Iterator<string> {
  return randers[encoding](length);
}