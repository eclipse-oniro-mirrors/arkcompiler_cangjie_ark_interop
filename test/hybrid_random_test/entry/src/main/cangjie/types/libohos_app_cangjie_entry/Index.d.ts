
export declare const enum MacroColor {
    Red = 0,
    Green = 1,
    Blue = 2
}

export declare class MacroCounter {
    count: number
    inc(): number
    get(): number
    add(n: number): number
    constructor(initial: number)
}

export declare interface IMacroCallback {
    onResult: (code: number, msg: string) => number
}

export declare function startTest(modules: string[], seed: number, exceptionRatio: number, isRandom: boolean, threadCount: number, workerDelay: number, targetRunCount: number): string
export declare function stopTest(): string
export declare function getApiCount(): number
export declare function getIsRunning(): boolean
export declare function getTotalRunCount(): number
export declare function getTargetRunCount(): number
export declare function getThreadCount(): number
export declare function getModuleList(): string[]
export declare function getRunStats(): Record<string, number>
export declare function getErrorStats(): Record<string, number>
export declare function getErrorList(): string[]
export declare function getErrorCount(): number
export declare function clearResults(): string
export interface ArkTsReturnObj {
  num: number
  str: string
  flag: boolean
  nil: null
}
export interface ArkTsArrItem {
  key: string
}
export interface ArkTsObjNestedInner {
  deep: string
  count: number
}
export interface ArkTsObjNestedMiddle {
  inner: ArkTsObjNestedInner
}
export interface ArkTsObjNestedOuter {
  outer: ArkTsObjNestedMiddle
}
export interface ArkTsObjWithMethod {
  value: number
  compute: (x: number) => number
}
export interface ArkTsMultiReturnObj {
  a: number
  b: string
}
export type ArkTsMixedArray = Array<number | string | boolean | null | ArkTsArrItem>

export declare function injectArkTsInterfaces(
  arktsAdd: (a: number) => number,
  arktsConcat: (a: number, b: string) => string,
  arktsBoolOp: (a: boolean) => boolean,
  arktsThrowError: () => never,
  arktsReturnObj: () => ArkTsReturnObj,
  arktsReturnArr: () => ArkTsMixedArray,
  arktsReturnNull: () => null,
  arktsReturnUndefined: () => undefined,
  arktsIdentity: (a: number) => number,
  arktsMultiReturn: (typeCode: number) => number | string | boolean | null | number[] | ArkTsMultiReturnObj,
  arktsObj: ArkTsReturnObj,
  arktsObjNested: ArkTsObjNestedOuter,
  arktsObjWithMethod: ArkTsObjWithMethod,
  arktsArr: ArkTsMixedArray
): void
export declare function injectNativeInterfaces(
  nativeAdd: (a: number) => number,
  nativeConcat: (a: number, b: string) => string,
  nativeBoolOp: (a: boolean) => boolean,
  nativeThrow: () => never,
  nativeIdentity: (a: number) => number,
  nativeReturnNumber: () => number,
  nativeReturnString: () => string,
  nativeReturnBoolean: () => boolean,
  nativeReturnVoid: () => void
): void

export declare function injectCjWrapCallbacks(
  doubler: (x: number) => number,
  upper: (s: string) => string,
  thrower: (msg: string) => void
): void

export interface ArkTsCaseResult {
  ok: boolean
  msg?: string
}

export declare function injectArkTsRunners(
  runArkTsCallCjCase: (caseId: number, seed: number, exceptionRatio: number) => Promise<ArkTsCaseResult>,
  runCjWrapArkTsCallbackCase: (caseId: number, seed: number, exceptionRatio: number) => Promise<ArkTsCaseResult>
): void

export declare function cjBusinessAdd(a: number, b: number): number
export declare function cjBusinessConcat(a: string, b: string): string
export declare function cjBusinessEcho(value: number): number
export declare function cjBusinessMax(arr: number[]): number
export declare function cjBusinessAsyncDouble(a: number): Promise<number>
export declare function cjBusinessThrow(msg: string): never

export interface CjCounter {
  inc(): number
  get(): number
  add(n: number): number
}
export declare function cjCreateCounter(initial?: number): CjCounter

export declare function cjWrapSyncDoubler(seed: number): number | { ok: boolean, msg: string }
export declare function cjWrapSyncUpper(seed: number): string | { ok: boolean, msg: string }
export declare function cjWrapCompose(seed: number): string | { ok: boolean, msg: string }
export declare function cjWrapAsyncDoubler(seed: number): Promise<number>
export declare function cjWrapAsyncReject(seed: number): Promise<never>
export declare function cjWrapExceptionCatch(shouldThrow: boolean): string

export declare function injectInteropMacroRunner(
  runInteropMacroCase: (caseId: number, seed: number, exceptionRatio: number) => Promise<ArkTsCaseResult>
): void

export declare function injectJsContextBindRunner(
  runJsContextBindCase: (caseId: number, seed: number, exceptionRatio: number) => Promise<ArkTsCaseResult>
): void

export declare function injectJsContextTaskPoolRunner(
  runJsContextTaskPoolCase: (caseId: number, seed: number, exceptionRatio: number) => Promise<ArkTsCaseResult>
): void

export declare function injectUvloopReleaseRunner(
  runUvloopReleaseCase: (caseId: number, seed: number, exceptionRatio: number) => Promise<ArkTsCaseResult>
): void

export declare function injectLoaderCacheRunner(
  runLoaderCacheCase: (caseId: number, seed: number, exceptionRatio: number) => Promise<ArkTsCaseResult>
): void

export declare function macroAdd(a: number, b: number): number
export declare function macroGreet(name: string, times: number): string
export declare function macroAsyncDouble(a: number): Promise<number>

export declare function macroWithCallback(cb: IMacroCallback, seed: number): number

export declare function macroColorToCode(color: number): number

export declare function macroEchoUtf16(s: string): string

export declare function macroColorByName(name: string): number
