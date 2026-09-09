import {
  injectArkTsInterfaces, injectNativeInterfaces,
  injectCjWrapCallbacks, injectArkTsRunners, injectInteropMacroRunner, injectJsContextBindRunner,
  injectJsContextTaskPoolRunner, injectUvloopReleaseRunner, injectLoaderCacheRunner,
  cjBusinessAdd, cjBusinessConcat, cjBusinessEcho, cjBusinessMax, cjCreateCounter,
  cjBusinessAsyncDouble, cjBusinessThrow,
  cjWrapSyncDoubler, cjWrapSyncUpper, cjWrapCompose, cjWrapAsyncDoubler, cjWrapAsyncReject, cjWrapExceptionCatch,
  macroAdd, macroGreet, macroAsyncDouble, macroWithCallback, macroColorToCode,
  macroEchoUtf16, macroColorByName, MacroColor,
  MacroCounter, IMacroCallback,
  CjCounter, ArkTsCaseResult,
  ArkTsReturnObj, ArkTsArrItem, ArkTsObjNestedInner, ArkTsObjNestedMiddle,
  ArkTsObjNestedOuter, ArkTsObjWithMethod, ArkTsMultiReturnObj, ArkTsMixedArray
} from 'libohos_app_cangjie_entry.so';
import { taskpool } from '@kit.ArkTS';
import { cangjieTaskPoolTask, cangjieUvloopTask } from './taskpools/CangjieTaskPoolTask';

// ArkTS 运行时全局对象（部分环境可用，通过 try-catch 兜底）
declare interface ArkToolsType {
  forceFullGC(): void
}
declare const ArkTools: ArkToolsType

function sleepMs(ms: number): Promise<void> {
  return new Promise<void>((resolve) => setTimeout(resolve, ms))
}

function promiseAllWithTimeout<T>(promises: Promise<T>[], timeoutMs: number, label: string): Promise<T[]> {
  const timeoutPromise = new Promise<T[]>((_, reject) => {
    setTimeout(() => reject(new Error(`${label} timeout after ${timeoutMs}ms`)), timeoutMs)
  })
  return Promise.race([Promise.all(promises), timeoutPromise])
}

// ==================== Runner 回调函数 ====================

async function runArkTsCallCjCase(caseId: number, seed: number, exceptionRatio: number): Promise<ArkTsCaseResult> {
  try {
    if (caseId === 0) {
      const r = cjBusinessAdd(seed, seed * 2)
      const expected = seed * 3
      return r === expected ? { ok: true } : { ok: false, msg: `add got ${r}, expected ${expected}` }
    } else if (caseId === 1) {
      const a = `a${seed}`
      const b = `b${seed}`
      const r = cjBusinessConcat(a, b)
      return r === (a + b) ? { ok: true } : { ok: false, msg: `concat got ${r}, expected ${a}${b}` }
    } else if (caseId === 2) {
      const r = cjBusinessEcho(seed)
      return r === seed ? { ok: true } : { ok: false, msg: `echo got ${r}, expected ${seed}` }
    } else if (caseId === 3) {
      const arr: number[] = [seed, seed + 10, seed + 5]
      const r = cjBusinessMax(arr)
      return r === seed + 10 ? { ok: true } : { ok: false, msg: `max got ${r}, expected ${seed + 10}` }
    } else if (caseId === 4) {
      const counter: CjCounter = cjCreateCounter(seed)
      const v1 = counter.inc()
      const v2 = counter.add(5)
      const v3 = counter.get()
      return (v1 === seed + 1 && v2 === seed + 6 && v3 === seed + 6)
        ? { ok: true }
        : { ok: false, msg: `counter v1=${v1} v2=${v2} v3=${v3}` }
    } else if (caseId === 5) {
      const r = await cjBusinessAsyncDouble(seed)
      const expected = seed * 2
      return r === expected ? { ok: true } : { ok: false, msg: `asyncDouble got ${r}, expected ${expected}` }
    } else if (caseId === 6) {
      try {
        cjBusinessThrow("planned_cj_error")
        return { ok: false, msg: `expected exception but none thrown` }
      } catch (e) {
        const msg = (e as Error).message ?? String(e)
        return msg.includes("planned_cj_error") ? { ok: true } : { ok: false, msg: `wrong exception msg: ${msg}` }
      }
    }
    return { ok: false, msg: `unknown caseId ${caseId}` }
  } catch (e) {
    return { ok: false, msg: `exception: ${(e as Error).message ?? e}` }
  }
}

async function runCjWrapArkTsCallbackCase(caseId: number, seed: number, exceptionRatio: number): Promise<ArkTsCaseResult> {
  try {
    if (caseId === 0) {
      const r = cjWrapSyncDoubler(seed)
      if (typeof r === 'number') {
        const expected = (seed + 10) * 2 - 5
        return r === expected ? { ok: true } : { ok: false, msg: `doubler got ${r}, expected ${expected}` }
      }
      return { ok: false, msg: `doubler returned non-number: ${(r as ArkTsCaseResult).msg ?? JSON.stringify(r)}` }
    } else if (caseId === 1) {
      const r = cjWrapSyncUpper(seed)
      if (typeof r === 'string') {
        const expected = `ID_${seed}_cj`
        return r === expected ? { ok: true } : { ok: false, msg: `upper got ${r}, expected ${expected}` }
      }
      return { ok: false, msg: `upper returned non-string: ${(r as ArkTsCaseResult).msg ?? JSON.stringify(r)}` }
    } else if (caseId === 2) {
      const r = cjWrapCompose(seed)
      if (typeof r === 'string') {
        const expected = `NUM_${seed * 2}_END`.toUpperCase()
        return r === expected ? { ok: true } : { ok: false, msg: `compose got ${r}, expected ${expected}` }
      }
      return { ok: false, msg: `compose returned non-string: ${(r as ArkTsCaseResult).msg ?? JSON.stringify(r)}` }
    } else if (caseId === 3) {
      const r = cjWrapExceptionCatch(true)
      if (typeof r === 'string' && r.startsWith('caught:')) {
        return { ok: true }
      }
      return { ok: false, msg: `exceptionCatch got ${r}, expected 'caught:...'` }
    } else if (caseId === 4) {
      const r = await cjWrapAsyncDoubler(seed)
      if (typeof r === 'number') {
        const expected = (seed + 100) * 2
        return r === expected ? { ok: true } : { ok: false, msg: `asyncDoubler got ${r}, expected ${expected}` }
      }
      return { ok: false, msg: `asyncDoubler returned non-number: ${(r as ArkTsCaseResult).msg ?? JSON.stringify(r)}` }
    } else if (caseId === 5) {
      try {
        await cjWrapAsyncReject(seed)
        return { ok: false, msg: `expected reject but promise resolved` }
      } catch (e) {
        const msg = (e as Error).message ?? String(e)
        return msg.startsWith('async-rejected:') ? { ok: true } : { ok: false, msg: `wrong reject msg: ${msg}` }
      }
    }
    return { ok: false, msg: `unknown caseId ${caseId}` }
  } catch (e) {
    return { ok: false, msg: `exception: ${(e as Error).message ?? e}` }
  }
}

async function runInteropMacroCase(caseId: number, seed: number, exceptionRatio: number): Promise<ArkTsCaseResult> {
  try {
    if (caseId === 0) {
      const r = macroAdd(seed, seed * 2)
      const expected = seed * 3
      return r === expected ? { ok: true } : { ok: false, msg: `macroAdd got ${r}, expected ${expected}` }
    } else if (caseId === 1) {
      const r = macroGreet("world", 3)
      const expected = "Hello world Hello world Hello world "
      return r === expected ? { ok: true } : { ok: false, msg: `macroGreet got '${r}', expected '${expected}'` }
    } else if (caseId === 2) {
      const r = await macroAsyncDouble(seed)
      const expected = seed * 2
      return r === expected ? { ok: true } : { ok: false, msg: `macroAsyncDouble got ${r}, expected ${expected}` }
    } else if (caseId === 3) {
      const cb: IMacroCallback = { onResult: (code: number, msg: string): number => code * 10 }
      const r = macroWithCallback(cb, seed)
      const expected = seed * 10
      return r === expected ? { ok: true } : { ok: false, msg: `macroWithCallback got ${r}, expected ${expected}` }
    } else if (caseId === 4) {
      const counter = new MacroCounter(seed)
      const v1 = counter.inc()
      const v2 = counter.add(5)
      const v3 = counter.get()
      return (v1 === seed + 1 && v2 === seed + 6 && v3 === seed + 6)
        ? { ok: true }
        : { ok: false, msg: `counter v1=${v1} v2=${v2} v3=${v3}` }
    } else if (caseId === 5) {
      const r = macroColorToCode(0)
      return r === 1 ? { ok: true } : { ok: false, msg: `colorToCode(0) got ${r}, expected 1` }
    } else if (caseId === 6) {
      const a = seed * 1.0
      const b = seed * 2.0
      const r = macroAdd(a, b)
      return r === a + b ? { ok: true } : { ok: false, msg: `macroAdd(${a}, ${b}) got ${r}, expected ${a + b}` }
    } else if (caseId === 7) {
      const counter = new MacroCounter(seed)
      const v1 = counter.inc()
      const v2 = counter.add(5)
      const v3 = counter.get()
      return (v1 === seed + 1 && v2 === seed + 6 && v3 === seed + 6)
        ? { ok: true }
        : { ok: false, msg: `invisible test counter v1=${v1} v2=${v2} v3=${v3}` }
    } else if (caseId === 8) {
      const c: MacroColor = MacroColor.Green
      const r = macroColorByName('Green')
      return (c === 1 && r === 1) ? { ok: true } : { ok: false, msg: `enum Green=${c}, byName=${r}, expected 1` }
    } else if (caseId === 9) {
      const r = macroEchoUtf16("中文🎨test")
      return r === "中文🎨test" ? { ok: true } : { ok: false, msg: `echoUtf16 got '${r}'` }
    }
    return { ok: false, msg: `unknown caseId ${caseId}` }
  } catch (e) {
    return { ok: false, msg: `exception: ${(e as Error).message ?? e}` }
  }
}

async function runOneBindCycle(seed: number, taskCount: number): Promise<ArkTsCaseResult> {
  const promises: Promise<ArkTsCaseResult>[] = []
  for (let i = 0; i < taskCount; i++) {
    const taskSeed = seed + i
    promises.push(
      taskpool.execute(cangjieTaskPoolTask, taskSeed).then((r: Object) => r as ArkTsCaseResult).catch((e: Error) => ({
        ok: false,
        msg: `taskpool ${i} error: ${e.message ?? String(e)}`
      } as ArkTsCaseResult))
    )
  }
  const results = await promiseAllWithTimeout(promises, 15000, `runOneBindCycle(${taskCount} tasks)`)
  const mismatched = results.find(r => !r.ok && r.msg && (
    r.msg.includes('thread') || r.msg.includes('Thread') ||
    r.msg.includes('mismatch') || r.msg.includes('bind') ||
    r.msg.includes('context') || r.msg.includes('Context')))
  if (mismatched) {
    return { ok: false, msg: `JSContext thread mismatch in taskpool: ${mismatched.msg}` }
  }
  const failedCount = results.filter(r => !r.ok).length
  if (failedCount > 0) {
    const firstError = results.find(r => !r.ok)
    return { ok: false, msg: `${failedCount}/${taskCount} taskpool tasks failed: ${firstError?.msg ?? 'unknown'}` }
  }
  return { ok: true, msg: `all ${taskCount} taskpool tasks completed successfully` }
}

async function runJsContextBindCase(caseId: number, seed: number, exceptionRatio: number): Promise<ArkTsCaseResult> {
  const taskCount = 5
  if (caseId === 0) {
    try {
      return await runOneBindCycle(seed, taskCount)
    } catch (e) {
      return { ok: false, msg: `bind single-cycle exception: ${(e as Error).message ?? String(e)}` }
    }
  } else if (caseId === 1) {
    const totalRounds = 20 + (seed % 5)
    let failedRounds = 0
    let lastErrorMsg = ''
    for (let round = 0; round < totalRounds; round++) {
      try {
        const result = await runOneBindCycle(seed + round, taskCount)
        if (!result.ok) {
          failedRounds++
          lastErrorMsg = result.msg ?? 'unknown error'
        }
      } catch (e) {
        failedRounds++
        lastErrorMsg = `round ${round} exception: ${(e as Error).message ?? String(e)}`
      }
      await sleepMs(100)
    }
    if (failedRounds > 0) {
      return { ok: false, msg: `${failedRounds}/${totalRounds} rounds failed, last error: ${lastErrorMsg}` }
    }
    return { ok: true, msg: `all ${totalRounds} rounds passed with ${taskCount} taskpool tasks per round` }
  }
  return { ok: false, msg: `unknown caseId ${caseId}` }
}

async function runOneUvloopCycle(seed: number, taskCount: number): Promise<ArkTsCaseResult> {
  const holdCount = 20
  const promises: Promise<ArkTsCaseResult>[] = []
  for (let i = 0; i < taskCount; i++) {
    const taskSeed = seed + i
    promises.push(
      taskpool.execute(cangjieUvloopTask, taskSeed, holdCount).then((r: Object) => r as ArkTsCaseResult).catch((e: Error) => ({
        ok: false,
        msg: `uvloop taskpool ${i} error: ${e.message ?? String(e)}`
      } as ArkTsCaseResult))
    )
  }

  let results: ArkTsCaseResult[]
  try {
    results = await promiseAllWithTimeout(promises, 15000, `runOneUvloopCycle(${taskCount} tasks)`)
  } catch (e) {
    return { ok: false, msg: `uvloop taskpool timeout: ${(e as Error).message}` }
  }

  await sleepMs(200)

  try {
    ArkTools.forceFullGC()
  } catch (e) {
    // 忽略 ArkTools 不可用的情况
  }

  for (let i = 0; i < 1000; i++) {
    const tmp: number[] = new Array<number>(100).fill(seed + i)
  }

  const failedCount = results.filter(r => !r.ok).length
  if (failedCount > 0) {
    const firstError = results.find(r => !r.ok)
    return { ok: false, msg: `${failedCount}/${taskCount} uvloop tasks failed: ${firstError?.msg ?? 'unknown'}` }
  }

  return { ok: true, msg: `uvloop cycle completed without coredump (tasks=${taskCount})` }
}

async function runUvloopReleaseCase(caseId: number, seed: number, exceptionRatio: number): Promise<ArkTsCaseResult> {
  if (caseId === 0) {
    try {
      return await runOneUvloopCycle(seed, 2)
    } catch (e) {
      return { ok: false, msg: `uvloop single-cycle exception: ${(e as Error).message ?? String(e)}` }
    }
  } else if (caseId === 1) {
    const totalRounds = 10 + (seed % 5)
    let failedRounds = 0
    let lastErrorMsg = ''
    for (let round = 0; round < totalRounds; round++) {
      try {
        const result = await runOneUvloopCycle(seed + round, 2)
        if (!result.ok) {
          failedRounds++
          lastErrorMsg = result.msg ?? 'unknown error'
        }
      } catch (e) {
        failedRounds++
        lastErrorMsg = `round ${round} exception: ${(e as Error).message ?? String(e)}`
      }
      await sleepMs(150)
    }
    if (failedRounds > 0) {
      return { ok: false, msg: `${failedRounds}/${totalRounds} rounds failed, last error: ${lastErrorMsg}` }
    }
    return { ok: true, msg: `all ${totalRounds} uvloop rounds passed` }
  }
  return { ok: false, msg: `unknown caseId ${caseId}` }
}

async function runLoaderCacheCase(caseId: number, seed: number, exceptionRatio: number): Promise<ArkTsCaseResult> {
  if (caseId === 0) {
    try {
      const count = 100 + (seed % 500)
      let empty = 0
      for (let i = 0; i < count; i++) {
        const r = cjBusinessAdd(seed + i, seed + i + 1)
        if (r === undefined || r === null) {
          empty++
        }
      }
      if (empty > 0) {
        return { ok: false, msg: `cjBusinessAdd returned empty ${empty}/${count} times (loader returned empty JSObject?)` }
      }
      return { ok: true, msg: `single-round: ${count} cjBusinessAdd calls all non-empty` }
    } catch (e) {
      return { ok: false, msg: `single-cycle exception: ${(e as Error).message ?? String(e)}` }
    }
  } else if (caseId === 1) {
    try {
      const rounds = 50 + (seed % 300)
      const fns: Array<(a: number, b?: number) => number> = [
        (a: number, b?: number) => cjBusinessAdd(a, b ?? 0),
        (a: number) => cjBusinessEcho(a),
        (a: number) => cjBusinessMax([a, a + 10, a + 5])
      ]
      let empty = 0
      for (let i = 0; i < rounds; i++) {
        for (const fn of fns) {
          const r = fn(seed + i, i)
          if (r === undefined || r === null) {
            empty++
          }
        }
      }
      if (empty > 0) {
        return { ok: false, msg: `batch exports returned empty ${empty}/${rounds * fns.length} times` }
      }
      return { ok: true, msg: `batch: ${rounds} rounds × ${fns.length} exports all non-empty` }
    } catch (e) {
      return { ok: false, msg: `batch exception: ${(e as Error).message ?? String(e)}` }
    }
  } else if (caseId === 2) {
    try {
      const rounds = 10 + (seed % 20)
      const perRound = 20 + (seed % 50)
      let empty = 0
      for (let r = 0; r < rounds; r++) {
        for (let i = 0; i < perRound; i++) {
          for (let j = 0; j < 5; j++) {
            const v = cjBusinessEcho(seed + i + j)
            if (v === undefined || v === null) {
              empty++
            }
          }
        }
      }
      if (empty > 0) {
        return { ok: false, msg: `repeated access returned empty ${empty}/${rounds * perRound * 5} times` }
      }
      return { ok: true, msg: `repeated access: ${rounds}×${perRound}×5 all non-empty` }
    } catch (e) {
      return { ok: false, msg: `repeated access exception: ${(e as Error).message ?? String(e)}` }
    }
  } else if (caseId === 3) {
    try {
      const totalRounds = 10 + (seed % 15)
      const perRound = 100 + (seed % 200)
      const fns: Array<(a: number, b?: number) => number> = [
        (a: number, b?: number) => cjBusinessAdd(a, b ?? 0),
        (a: number) => cjBusinessEcho(a),
        (a: number) => cjBusinessMax([a, a + 1, a + 2])
      ]
      let totalEmpty = 0
      let lastError = ''
      for (let r = 0; r < totalRounds; r++) {
        for (let i = 0; i < perRound; i++) {
          for (const fn of fns) {
            const v = fn(seed + r + i, i)
            if (v === undefined || v === null) {
              totalEmpty++
              lastError = `round=${r} idx=${i} returned empty`
            }
          }
        }
        await sleepMs(20)
      }
      if (totalEmpty > 0) {
        return { ok: false, msg: `pressure test: ${totalEmpty} empty results, last: ${lastError}` }
      }
      return { ok: true, msg: `pressure: ${totalRounds}×${perRound}×${fns.length} all non-empty` }
    } catch (e) {
      return { ok: false, msg: `pressure exception: ${(e as Error).message ?? String(e)}` }
    }
  }
  return { ok: false, msg: `unknown caseId ${caseId}` }
}

async function runOneTaskPoolCycle(seed: number, taskCount: number): Promise<ArkTsCaseResult> {
  const promises: Promise<ArkTsCaseResult>[] = []
  for (let i = 0; i < taskCount; i++) {
    const taskSeed = seed + i
    promises.push(
      taskpool.execute(cangjieTaskPoolTask, taskSeed).then((r: Object) => r as ArkTsCaseResult).catch((e: Error) => ({
        ok: false,
        msg: `taskpool ${i} error: ${e.message ?? String(e)}`
      } as ArkTsCaseResult))
    )
  }
  const results = await promiseAllWithTimeout(promises, 15000, `runOneTaskPoolCycle(${taskCount} tasks)`)
  const mismatched = results.find(r => !r.ok && r.msg && (
    r.msg.includes('thread') || r.msg.includes('Thread') ||
    r.msg.includes('mismatch') || r.msg.includes('bind') ||
    r.msg.includes('context') || r.msg.includes('Context')))
  if (mismatched) {
    return { ok: false, msg: `JSContext thread mismatch in taskpool: ${mismatched.msg}` }
  }
  const failedCount = results.filter(r => !r.ok).length
  if (failedCount > 0) {
    const firstError = results.find(r => !r.ok)
    return { ok: false, msg: `${failedCount}/${taskCount} taskpool tasks failed: ${firstError?.msg ?? 'unknown'}` }
  }
  return { ok: true, msg: `all ${taskCount} taskpool tasks completed successfully` }
}

async function runJsContextTaskPoolCase(caseId: number, seed: number, exceptionRatio: number): Promise<ArkTsCaseResult> {
  const taskCount = 3
  if (caseId === 0) {
    try {
      return await runOneTaskPoolCycle(seed, taskCount)
    } catch (e) {
      return { ok: false, msg: `taskpool single-cycle exception: ${(e as Error).message ?? String(e)}` }
    }
  } else if (caseId === 1) {
    const totalRounds = 20 + (seed % 5)
    let failedRounds = 0
    let lastErrorMsg = ''
    for (let round = 0; round < totalRounds; round++) {
      try {
        const result = await runOneTaskPoolCycle(seed + round, taskCount)
        if (!result.ok) {
          failedRounds++
          lastErrorMsg = result.msg ?? 'unknown error'
        }
      } catch (e) {
        failedRounds++
        lastErrorMsg = `round ${round} exception: ${(e as Error).message ?? String(e)}`
      }
      await sleepMs(100)
    }
    if (failedRounds > 0) {
      return { ok: false, msg: `${failedRounds}/${totalRounds} rounds failed, last error: ${lastErrorMsg}` }
    }
    return { ok: true, msg: `all ${totalRounds} rounds passed with ${taskCount} taskpool tasks per round` }
  }
  return { ok: false, msg: `unknown caseId ${caseId}` }
}

// ==================== 注入入口 ====================

export function injectAllRunners(): void {
  const returnObj: ArkTsReturnObj = { num: 42, str: "hello", flag: true, nil: null }
  const arrItem: ArkTsArrItem = { key: "val" }

  const returnArr: ArkTsMixedArray = []
  returnArr.push(1)
  returnArr.push("two")
  returnArr.push(true)
  returnArr.push(null)
  returnArr.push(arrItem)

  const arktsObj: ArkTsReturnObj = { num: 42, str: "hello", flag: true, nil: null }

  const nestedInner: ArkTsObjNestedInner = { deep: "value", count: 99 }
  const nestedMiddle: ArkTsObjNestedMiddle = { inner: nestedInner }
  const arktsObjNested: ArkTsObjNestedOuter = { outer: nestedMiddle }

  const arktsObjWithMethod: ArkTsObjWithMethod = {
    value: 10,
    compute: (x: number): number => x * 10
  }

  const arktsArr: ArkTsMixedArray = []
  arktsArr.push(1)
  arktsArr.push("two")
  arktsArr.push(true)
  arktsArr.push(null)
  arktsArr.push(arrItem)

  injectArkTsInterfaces(
    (a: number): number => a + 1,
    (a: number, b: string): string => `${a}${b}`,
    (a: boolean): boolean => !a,
    (): never => { throw new Error("arkts_err") },
    (): ArkTsReturnObj => returnObj,
    (): ArkTsMixedArray => returnArr,
    (): null => null,
    (): undefined => undefined,
    (a: number): number => a,
    (typeCode: number): number | string | boolean | null | number[] | ArkTsMultiReturnObj => {
      if (typeCode === 0) return 42
      if (typeCode === 1) return "hello"
      if (typeCode === 2) return true
      if (typeCode === 3) return null
      if (typeCode === 4) return [1, 2, 3]
      const obj: ArkTsMultiReturnObj = { a: 1, b: "2" }
      return obj
    },
    arktsObj,
    arktsObjNested,
    arktsObjWithMethod,
    arktsArr
  )
  injectNativeInterfaces(
    (a: number): number => a + 1,
    (a: number, b: string): string => `${a}${b}`,
    (a: boolean): boolean => !a,
    (): never => { throw new Error("native_err") },
    (a: number): number => a,
    (): number => 42,
    (): string => "hello_native",
    (): boolean => true,
    (): void => {}
  )
  injectCjWrapCallbacks(
    (x: number): number => x * 2,
    (s: string): string => s.toUpperCase(),
    (msg: string): void => { throw new Error(msg) }
  )
  injectArkTsRunners(runArkTsCallCjCase, runCjWrapArkTsCallbackCase)
  injectInteropMacroRunner(runInteropMacroCase)
  injectJsContextBindRunner(runJsContextBindCase)
  injectJsContextTaskPoolRunner(runJsContextTaskPoolCase)
  injectUvloopReleaseRunner(runUvloopReleaseCase)
  injectLoaderCacheRunner(runLoaderCacheCase)
}
