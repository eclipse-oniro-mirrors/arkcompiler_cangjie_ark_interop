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

import { createSamples, Encoding } from './characters';
import { Runner } from './framework';
import { readStrToJ, readStrToC, createStdLaint1, createStdUtf16, createNewLaint1, createNewUtf16} from "libohos_app_cangjie_entry.so";


/*import {requireCJLib} from "libark_interop_loader.so"
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
}
const cjlib = requireCJLib("libohos_app_cangjie_entry.so") as CJLib*/

interface Case {
  length: number;
  repeat: number;
  latin1: Iterator<string, string>;
  utf16: Iterator<string, string>;
}

function createCase(length: number, repeat: number): Case {
  return {
    length, repeat,
    latin1: createSamples(Encoding.AllLatin1, length),
    utf16: createSamples(Encoding.AllUtf16, length)
  };
}

const cases = [
  [500, 1000],
  [1000, 800],
  [1500, 700],
  [2000, 600],
  [3000, 500],
  [4000, 400],
  [6000, 300],
  [8000, 200],
  [10000, 100]
].map(l => createCase(l[0], l[1]))

export function createInteropBenchmark(): Runner {
  const runner = new Runner()
  // const readStrToJ = readStrToJ
  // const readStrToC = readStrToC
  //
  // const createStdLaint1 = createStdLaint1
  // const createStdUtf16 = createStdUtf16
  // const createNewLaint1 = createNewLaint1
  // const createNewUtf16 = createNewUtf16

  for (const one of cases) {
    runner.register(`js2cjStr, ${one.length}, latin1`, (src: string)=> {
      readStrToC(src)
    }, one.repeat, ()=> {
      return one.latin1.next().value
    })
    runner.register(`js2cjStr, ${one.length}, utf16`, (src: string)=> {
      readStrToC(src)
    }, one.repeat, ()=> one.utf16.next().value)
    runner.register(`js2NewStr, ${one.length}, latin1`, (src: string)=> {
      readStrToJ(src);
    }, one.repeat, ()=> one.latin1.next().value)
    runner.register(`js2NewStr, ${one.length}, utf16`, (src: string)=> {
      readStrToJ(src);
    }, one.repeat, ()=> one.utf16.next().value)
    {
      const o = createStdLaint1(one.length)
      const doInit = o[0], doRun = o[1], doFini = o[2]
      runner.register(`cjStr2js, ${one.length}, latin1`, doRun, one.repeat, doInit, doFini)
    }
    {
      const o = createStdUtf16(one.length)
      const doInit = o[0], doRun = o[1], doFini = o[2]
      runner.register(`cjStr2js, ${one.length}, utf16`, doRun, one.repeat, doInit, doFini)
    }

    {
      const o = createNewLaint1(one.length)
      const doInit = o[0], doRun = o[1], doFini = o[2]
      runner.register(`NewStr2js, ${one.length}, latin1`, doRun, one.repeat, doInit, doFini)
    }
    {
      const o = createNewUtf16(one.length)
      const doInit = o[0], doRun = o[1], doFini = o[2]
      runner.register(`NewStr2js, ${one.length}, utf16`, doRun, one.repeat, doInit, doFini)
    }
  }

  return runner
}