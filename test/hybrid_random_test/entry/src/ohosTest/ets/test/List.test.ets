import { hilog } from '@kit.PerformanceAnalysisKit';
import { describe, beforeAll, it, expect } from '@ohos/hypium';
import {
  startTest, stopTest, getIsRunning, getModuleList, getRunStats,
  getErrorStats, getErrorList, getErrorCount, getTotalRunCount,
  getTargetRunCount, getApiCount, clearResults
} from 'libohos_app_cangjie_entry.so';
import { injectAllRunners } from '../../../main/ets/StabilityTestRunner';

const DOMAIN = 0x0000
const TAG = 'StabilityAutoTest'

function sleep(ms: number): Promise<void> {
  return new Promise(resolve => setTimeout(resolve, ms))
}

function log(msg: string): void {
  hilog.info(DOMAIN, TAG, '%{public}s', msg)
}

function logError(msg: string): void {
  hilog.error(DOMAIN, TAG, '%{public}s', msg)
}

// 等待测试运行结束（fail-fast: 检测到错误立即终止）
async function waitTestDone(timeoutMs: number = 600000): Promise<boolean> {
  const start = Date.now()
  while (Date.now() - start < timeoutMs) {
    if (!getIsRunning()) {
      return true
    }
    // fail-fast: 有错误立即停止
    const errCount = getErrorCount()
    if (errCount > 0) {
      logError(`error detected (count=${errCount}), stopping test immediately`)
      stopTest()
      await sleep(1000)
      return true
    }
    // 每10秒打印一次进度
    const elapsed = Date.now() - start
    if (elapsed % 10000 < 2000) {
      log(`waiting... elapsed=${Math.floor(elapsed / 1000)}s totalRun=${getTotalRunCount()}/${getTargetRunCount()}`)
    }
    await sleep(2000)
  }
  return false
}

// 打印完整测试报告
function printReport(target: number, startTime: number): void {
  const totalRun = getTotalRunCount()
  const errorCount = getErrorCount()
  const errors = getErrorList()
  const runStats = getRunStats() as Record<string, number>
  const errorStats = getErrorStats() as Record<string, number>
  const apiCount = getApiCount()
  const duration = Math.floor((Date.now() - startTime) / 1000)

  const passed = errorCount === 0 && totalRun >= target

  log('========== Stability Test Report ==========')
  log(`Result: ${passed ? 'PASS' : 'FAIL'}`)
  log(`Total Run: ${totalRun} / ${target} (target)`)
  log(`Errors: ${errorCount}`)
  log(`Duration: ${duration}s`)
  log(`APIs: ${apiCount}`)
  log('------------------------------------------')

  // 按错误数排序输出 per-API 统计
  const apiNames = Object.keys(runStats).sort((a, b) => {
    const errA = errorStats[a] || 0
    const errB = errorStats[b] || 0
    if (errA !== errB) return errB - errA
    return (runStats[b] || 0) - (runStats[a] || 0)
  })

  const showCount = Math.min(apiNames.length, 20)
  log(`Per-API Stats (top ${showCount} by error):`)
  for (let i = 0; i < showCount; i++) {
    const name = apiNames[i]
    const run = runStats[name] || 0
    const err = errorStats[name] || 0
    log(`  ${name.padEnd(30, ' ')} run=${run}  err=${err}`)
  }
  log('------------------------------------------')

  if (errors.length > 0) {
    log(`Errors (${errors.length} total, showing first 20):`)
    const showErr = Math.min(errors.length, 20)
    for (let i = 0; i < showErr; i++) {
      logError(`  [${i}] ${errors[i]}`)
    }
  } else {
    log('No errors detected.')
  }
  log('==========================================')
}

export default function testsuite() {
  describe('StabilityTest', () => {
    beforeAll(() => {
      log('beforeAll: injecting runners...')
      injectAllRunners()
      log('beforeAll: runners injected')
    })

    /**
     * 全量稳定性测试：自动选择所有模块，随机模式运行
     * 每个用例平均跑约 50 次（target = apiCount * 50），最低 5000 次
     * 2 线程并发压测，无延迟，遇到错误立即终止（fail-fast）
     * 通过 aa test 命令触发，无需手动操作 UI
     */
    it('stability_full_test', 0, async () => {
      const modules = getModuleList()
      log('modules: ' + JSON.stringify(modules))
      expect(modules.length > 0).assertTrue()

      clearResults()

      // 测试参数
      const seed = 42
      const exceptionRatio = 0.1
      const isRandom = true
      const threadCount = 1
      const workerDelay = 0
      // 目标运行次数：API 数量 × 50（每个用例平均跑约50次），最低 5000 次
      const apiCount = getApiCount()
      const target = Math.max(apiCount * 50, 5000)

      log(`startTest: modules=${modules.length} apis=${apiCount} target=${target} threads=${threadCount} seed=${seed}`)
      const result = startTest(modules, seed, exceptionRatio, isRandom, threadCount, workerDelay, target)
      log('startTest result: ' + result)
      expect(result === 'ok').assertTrue()

      const startTime = Date.now()

      // 等待测试完成（最长10分钟，遇到错误立即终止）
      const done = await waitTestDone(600000)
      if (!done) {
        logError('test timeout, force stop')
        stopTest()
        await sleep(1000)
      }

      // 输出完整报告
      printReport(target, startTime)

      // 断言：测试完成且无错误
      const totalRun = getTotalRunCount()
      const errorCount = getErrorCount()

      log(`Final: done=${done} totalRun=${totalRun}/${target} errors=${errorCount}`)

      expect(done).assertTrue()
      expect(errorCount).assertEqual(0)
    })
  })
}
