import { taskpool } from '@kit.ArkTS';
import {
  cjBusinessAdd, cjBusinessConcat, cjBusinessEcho, cjBusinessMax,
  cjCreateCounter, macroAdd, cjWrapAsyncDoubler
} from 'libohos_app_cangjie_entry.so';

// 问题单#3/#5：TaskPool 多线程场景下 JSContext 绑定冲突的复现任务
// 通过 TaskPool 调度（系统管理的线程池），任务结束时 ArkTS 运行时实例会被回收，
// 多轮调度会触发内存地址复用，导致新的运行时实例绑定到已存在的 JSContext

export interface TaskPoolResult {
  ok: boolean
  msg: string
}

@Concurrent
export function cangjieTaskPoolTask(seed: number): TaskPoolResult {
  try {
    // 加载仓颉模块（TaskPool 首次执行时），调用接口验证仓颉正常工作
    // 这是 JSContext 绑定冲突测试的核心：TaskPool 任务加载仓颉模块时会创建新的 JSContext
    const addResult = cjBusinessAdd(seed, seed * 2)
    const concatResult = cjBusinessConcat(`a${seed}`, `b${seed}`)
    const echoResult = cjBusinessEcho(seed)
    const macroResult = macroAdd(seed, seed * 2)

    const counter = cjCreateCounter(seed)
    const incResult = counter.inc()
    const counterVal = counter.get()

    const allOk = (addResult === seed * 3) &&
                  (concatResult === `a${seed}b${seed}`) &&
                  (echoResult === seed) &&
                  (macroResult === seed * 3) &&
                  (incResult === seed + 1)

    return {
      ok: allOk,
      msg: allOk ? `taskpool success: add=${addResult} echo=${echoResult} counter=${counterVal}` :
                   `taskpool mismatch: add=${addResult}(exp ${seed * 3}) concat=${concatResult} echo=${echoResult}(exp ${seed}) macro=${macroResult}(exp ${seed * 3}) inc=${incResult}(exp ${seed + 1})`
    }
  } catch (e) {
    return {
      ok: false,
      msg: `taskpool exception: ${(e as Error).message ?? String(e)}`
    }
  }
}

// 问题单#6：TaskPool 场景下 ArkTS 运行时释放后仓颉对象 GC 向 uvloop 抛任务的 coredump 复现任务
// 在 TaskPool 任务中创建多个仓颉 HeapObject（CjCounter 背后通过 JSHeapObject 持有 ArkTS 引用）
// 并触发异步调用让 promiseCapability 进入 ArkTS 运行时。
// 任务返回后这些局部引用会被回收，但仓颉侧的原始对象在全局堆上仍存在（等待仓颉 GC）。
// 主线程随后触发 GC，~JSHeapObject 会向已释放的 uvloop 抛任务，验证修复后不再 coredump。
@Concurrent
export function cangjieUvloopTask(seed: number, holdCount: number): TaskPoolResult {
  try {
    let created = 0
    // 创建多个 CjCounter（仓颉对象，背后通过 JSHeapObject 持有 ArkTS 引用）
    for (let i = 0; i < holdCount; i++) {
      const counter = cjCreateCounter(seed + i)
      counter.inc()
      counter.add(i)
      created++
      // 触发跨互操作接口调用，生成更多临时 HeapObject
      macroAdd(seed + i, i)
      cjBusinessAdd(seed + i, i)
    }
    // 触发一次异步调用，让 promiseCapability 进入 ArkTS 运行时
    // 异步 promise 的 resolve/reject 也通过 uvloop 抛任务执行
    cjWrapAsyncDoubler(seed).then((r: number) => {
      // 仅消费结果，让 promise 完成生命周期
    }).catch(() => {})

    return {
      ok: true,
      msg: `uvloop task created ${created} HeapObjects, seed=${seed}`
    }
  } catch (e) {
    return {
      ok: false,
      msg: `uvloop task exception: ${(e as Error).message ?? String(e)}`
    }
  }
}
