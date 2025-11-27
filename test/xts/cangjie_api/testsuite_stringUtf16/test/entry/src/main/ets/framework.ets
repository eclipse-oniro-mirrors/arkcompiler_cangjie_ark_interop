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

import hilog from '@ohos.hilog';
import hidebug from '@ohos.hidebug';

import { doGC, doSync } from "libohos_app_cangjie_entry.so";

/*interface CJLib {
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


interface Task<T> {
  name: string;
  run: (data: T)=>void;
  repeat: number;
  prepare?: (index: number)=> T;
  afterAll?: ()=>void;
  total?: number;
  actualRepeat?: number;
}

export class Runner {
  private tasks_: Task<Object>[] = []
  private last_: number = 0

  register<T>(name: string, run: (data: T)=>void, repeat: number, prepare?: (index: number)=> T, afterAll?: ()=> void) {
    const task: Task<T> = {name, run, repeat, prepare, afterAll};
    this.tasks_.push(task as Object as Task<Object>)
    return this;
  }

  async execute(process?: (prime: [number, number], sub: number)=>void) {
    await this.sleep(100);
    let doneTask = 0
    for (const task of this.tasks_) {
      let cost: number = 0
      let repeat = 0;
      {
        const runner = task.run;
        await this.checkpoint()
        for (let i = 0, il = task.repeat;i < il; ++i) {
          const data = task.prepare ? task.prepare(i) : ""
          let oneCost = doSync(()=> {
            runner(data)
          })
          repeat++;
          cost += oneCost;
          if (process && ((i % 20) == 0)) {
            process([doneTask, this.tasks_.length], i / il);
            await this.checkpoint()
          }
        }
      }
      task.total = cost;
      task.actualRepeat = repeat;

      if (task.afterAll) {
        task.afterAll()
      }
      ++doneTask
      if (process) {
        process([doneTask, this.tasks_.length], 0)
        await this.sleep(100)
      }
      await this.postClean();
    }

    for (const task of this.tasks_) {
      hilog.info(0, "test", `${task.name}, ${task.actualRepeat}, ${task.total}, ${task.repeat - task.actualRepeat!}`)
    }
  }

  getCatalog(): string[] {
    return this.tasks_.map(t => t.name);
  }

  private async postClean() {
    await this.sleep(100);
    doGC();
    await this.sleep(1800)
    ArkTools.forceFullGC()
    await this.sleep(100);
  }

  private async checkpoint() {
    if (hidebug.getAppVMMemoryInfo().heapUsed > 10000) {
      do {
        await this.postClean()
      } while (hidebug.getAppVMMemoryInfo().heapUsed > 7000)
      hilog.error(0, "test", "heap after GC: %{public}d", hidebug.getAppVMMemoryInfo().heapUsed)
    } else {
      const past = Date.now() - this.last_
      if (past > 2000) {
        await this.sleep(100);
      }
    }
  }

  private async sleep(ms: number) {
    return new Promise<void>(resolve => {
      setTimeout(()=> {
        this.last_ = Date.now()
        resolve()
      }, ms);
    });
  }
}

declare class ArkTools {
  static forceFullGC(): void;
}