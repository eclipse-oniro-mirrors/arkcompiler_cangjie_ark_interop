import {
  startTest, stopTest, getApiCount, getIsRunning,
  getTotalRunCount, getTargetRunCount, getModuleList, getRunStats, getThreadCount,
  getErrorList, getErrorCount, getErrorStats, clearResults
} from 'libohos_app_cangjie_entry.so';
import { injectAllRunners } from '../StabilityTestRunner';

interface ApiStat {
  name: string
  runs: number
  errors: number
}

interface ModuleCategory {
  name: string
  color: string
  desc: string
  modules: string[]
}

interface ModuleGroup {
  name: string
  color: string
  desc: string
  modules: string[]
}

@Entry
@Component
struct Index {
  @State currentTabIndex: number = 0
  @State isRandomMode: boolean = true
  @State randomSeed: string = '0'
  @State exceptionRatio: string = '0.0'
  @State threadCount: string = '1'
  @State workerDelay: string = '10'
  @State targetRunCount: string = '0'
  @State isRunning: boolean = false
  @State totalRunCount: number = 0
  @State apiCount: number = 0
  @State activeThreadCount: number = 0
  @State errorList: string[] = []
  @State errorCount: number = 0
  @State selectedModules: Set<string> = new Set()
  @State allSelected: boolean = false
  @State runStats: Record<string, number> = {}
  @State errorStats: Record<string, number> = {}
  @State apiStats: ApiStat[] = []
  @State moduleList: string[] = []
  private timerId: number = -1

  // 模块分类定义：顺序即界面显示顺序
  private readonly moduleCategories: ModuleCategory[] = [
    {
      name: '基础接口用例',
      color: '#607D8B',
      desc: '原有互操作接口测试',
      modules: [
        'arkts_call_cj', 'cl_cj_call_arkts', 'interop_ark_interface', 'interop_native_interface',
        'interop_cj_export', 'interop_global_arkts', 'interop_macro', 'cj_wrap_arkts_cb',
        'jsclass', 'jsarray', 'jsfunction', 'jsobject', 'jsvalue', 'jspromise',
        'dt_bigint', 'dt_arraybuffer', 'dt_boundary', 'async_sched', 'exception', 'register'
      ]
    },
    {
      name: '内存问题 (Memory)',
      color: '#D32F2F',
      desc: 'PromiseCapability 泄漏与 HWASan 内存检测类型识别',
      modules: ['mem_leak', 'hwasan_tag']
    },
    {
      name: '线程绑定问题 (Thread Binding)',
      color: '#1976D2',
      desc: 'Worker/TaskPool JSContext 绑定与 getNapiEnv 线程校验',
      modules: ['jscontext_bind', 'napi_env', 'taskpool_bind', 'thread_safety', 'concurrency']
    },
    {
      name: '生命周期问题 (Lifecycle)',
      color: '#7B1FA2',
      desc: 'uvloop 释放后投递任务触发 coredump',
      modules: ['uvloop_release', 'lifecycle']
    },
    {
      name: '对象构造/作用域问题 (Object & Scope)',
      color: '#E65100',
      desc: 'JSArrayEx 构造、loader 缓存、scope 生命周期',
      modules: ['array_ex', 'loader_cache', 'scope_lifetime']
    }
  ]

  // 把模块列表按分类分组，未归类的放到"其他"组
  private getGroupedModules(): ModuleGroup[] {
    const groups: ModuleGroup[] = []
    const seen: Set<string> = new Set()

    for (const cat of this.moduleCategories) {
      const matched: string[] = []
      for (const mod of cat.modules) {
        if (this.moduleList.includes(mod)) {
          matched.push(mod)
          seen.add(mod)
        }
      }
      if (matched.length > 0) {
        groups.push({ name: cat.name, color: cat.color, desc: cat.desc, modules: matched })
      }
    }

    // 兜底：未归类的模块
    const others: string[] = []
    for (const mod of this.moduleList) {
      if (!seen.has(mod)) {
        others.push(mod)
      }
    }
    if (others.length > 0) {
      groups.push({ name: '其他', color: '#9E9E9E', desc: '未分类模块', modules: others })
    }
    return groups
  }

  aboutToAppear() {
    injectAllRunners()
    this.moduleList = getModuleList()
    this.apiCount = getApiCount()
  }

  onPageHide() {
    if (this.isRunning) {
      this.stopRun()
    }
  }

  private getSelectableModules(): string[] {
    const isSingleThread = parseInt(this.threadCount) <= 1
    return this.moduleList.filter((mod: string) => mod !== 'register' || isSingleThread)
  }

  private isAllModulesSelected(): boolean {
    const selectable = this.getSelectableModules()
    return selectable.length > 0 && selectable.every((mod: string) => this.selectedModules.has(mod))
  }

  private toggleAllModules() {
    if (this.isAllModulesSelected()) {
      this.selectedModules = new Set<string>()
      this.allSelected = false
    } else {
      this.selectAllModules()
    }
    this.apiCount = getApiCount()
  }

  private selectAllModules() {
    const newSet = new Set<string>()
    const isSingleThread = parseInt(this.threadCount) <= 1
    for (const mod of this.moduleList) {
      if (mod !== 'register' || isSingleThread) {
        newSet.add(mod)
      }
    }
    this.selectedModules = newSet
    this.allSelected = true
  }

  startRun() {
    if (this.selectedModules.size === 0) {
      return
    }
    const modules = Array.from(this.selectedModules)
    const seed = parseInt(this.randomSeed) || 0
    const ratio = parseFloat(this.exceptionRatio) || 0.0
    const threads = parseInt(this.threadCount) || 1
    const delay = parseInt(this.workerDelay) || 10
    const target = parseInt(this.targetRunCount) || 0
    if (threads < 1) {
      this.threadCount = '1'
      return
    }

    startTest(modules, seed, ratio, this.isRandomMode, threads, delay, target)
    this.apiCount = getApiCount()
    this.isRunning = true

    this.timerId = setInterval(() => {
      const newTotal = getTotalRunCount()
      const newRunning = getIsRunning()
      const newThreadCount = getThreadCount()
      const newErrorCount = getErrorCount()

      const totalChanged = newTotal !== this.totalRunCount
      const errorChanged = newErrorCount !== this.errorCount

      if (totalChanged) {
        this.totalRunCount = newTotal
      }
      if (newRunning !== this.isRunning) {
        this.isRunning = newRunning
      }
      if (newThreadCount !== this.activeThreadCount) {
        this.activeThreadCount = newThreadCount
      }
      if (errorChanged) {
        this.errorList = getErrorList()
        this.errorCount = newErrorCount
      }
      if (totalChanged || errorChanged) {
        this.runStats = getRunStats()
        this.errorStats = getErrorStats()
        this.updateApiStats()
      }
    }, 2000)
  }

  stopRun() {
    if (this.timerId !== -1) {
      clearInterval(this.timerId)
      this.timerId = -1
    }
    stopTest()
    this.isRunning = false
    this.totalRunCount = getTotalRunCount()
    this.runStats = getRunStats()
    this.errorStats = getErrorStats()
    this.updateApiStats()
    this.errorList = getErrorList()
    this.errorCount = getErrorCount()
    this.activeThreadCount = getThreadCount()
  }

  clearResultsRun() {
    clearResults()
    this.totalRunCount = 0
    this.errorList = []
    this.errorCount = 0
    this.runStats = {}
    this.errorStats = {}
    this.apiStats = []
  }

  updateApiStats() {
    const result: ApiStat[] = []
    const keys = Object.keys(this.runStats)
    for (let i = 0; i < keys.length; i++) {
      const name = keys[i]
      const stat: ApiStat = {
        name: name,
        runs: this.runStats[name] || 0,
        errors: this.errorStats[name] || 0
      }
      result.push(stat)
    }
    result.sort((a: ApiStat, b: ApiStat) => b.runs - a.runs)
    this.apiStats = result
  }

  build() {
    Tabs({ index: this.currentTabIndex }) {
      TabContent() {
        this.buildHomeTab()
      }.tabBar('Home')

      TabContent() {
        this.buildSelectTab()
      }.tabBar('Select')

      TabContent() {
        this.buildLogTab()
      }.tabBar('Log')
    }
    .width('100%')
    .height('100%')
  }

  @Builder
  buildHomeTab() {
    Scroll() {
      Column({ space: 10 }) {
        Text('Cangjie-ArkTS Interop Stability Test')
          .fontSize(20)
          .fontWeight(FontWeight.Bold)

        Row({ space: 10 }) {
          Text('Mode:')
          Toggle({ type: ToggleType.Switch, isOn: this.isRandomMode })
            .onChange((isOn: boolean) => {
              this.isRandomMode = isOn
            })
          Text(this.isRandomMode ? 'Random' : 'Sequential')
        }

        Row({ space: 10 }) {
          Text('Threads:')
          TextInput({ text: this.threadCount })
            .type(InputType.Number)
            .width(100)
            .onChange((value: string) => { this.threadCount = value })
        }

        Row({ space: 10 }) {
          Text('Delay(ms):')
          TextInput({ text: this.workerDelay })
            .type(InputType.Number)
            .width(100)
            .onChange((value: string) => { this.workerDelay = value })
        }

        Row({ space: 10 }) {
          Text('Target Count:')
          TextInput({ text: this.targetRunCount })
            .type(InputType.Number)
            .width(100)
            .onChange((value: string) => { this.targetRunCount = value })
          Text('(0=infinite)')
            .fontSize(10)
            .fontColor('#999')
        }

        Row({ space: 10 }) {
          Text('Seed:')
          TextInput({ text: this.randomSeed })
            .type(InputType.Number)
            .width(100)
            .onChange((value: string) => { this.randomSeed = value })
        }

        Row({ space: 10 }) {
          Text('Exception Ratio:')
          TextInput({ text: this.exceptionRatio })
            .width(100)
            .onChange((value: string) => { this.exceptionRatio = value })
        }

        Row({ space: 10 }) {
          Text('API Count:')
          Text(`${this.apiCount}`)
        }

        Row({ space: 10 }) {
          Text('Total Runs:')
          Text(`${this.totalRunCount}`)
        }

        Row({ space: 10 }) {
          Text('Threads Active:')
          Text(`${this.activeThreadCount}`)
        }

        Row({ space: 10 }) {
          Text('Status:')
          Text(this.isRunning ? 'Running' : 'Stopped')
            .fontColor(this.isRunning ? Color.Green : Color.Red)
        }

        Row({ space: 15 }) {
          Button('Start')
            .enabled(!this.isRunning)
            .onClick(() => this.startRun())
          Button('Stop')
            .enabled(this.isRunning)
            .onClick(() => this.stopRun())
          Button('Clean')
            .enabled(!this.isRunning)
            .onClick(() => this.clearResultsRun())
        }

        Divider()

        Text('Selected Modules:')
        ForEach(Array.from(this.selectedModules), (mod: string) => {
          Text(`  ${mod}`).fontSize(14)
        })
      }
      .padding(15)
    }
    .width('100%')
    .height('100%')
  }

  @Builder
  buildSelectTab() {
    Scroll() {
      Column({ space: 10 }) {
        Text('Select Test Modules')
          .fontSize(18)
          .fontWeight(FontWeight.Bold)

        Row({ space: 10 }) {
          Checkbox()
            .select(this.allSelected)
            .onChange((_checked: boolean) => {
              this.toggleAllModules()
            })
          Text(this.allSelected ? 'Deselect All' : 'Select All')
            .fontSize(16)
            .fontWeight(FontWeight.Medium)
        }
        .width('100%')
        .padding({ top: 8, bottom: 8 })

        Divider()

        // 按分类分组渲染
        ForEach(this.getGroupedModules(), (group: ModuleGroup) => {
          Column({ space: 6 }) {
            // 分类标题
            Row({ space: 8 }) {
              Text('■')
                .fontColor(group.color)
                .fontSize(14)
              Text(group.name)
                .fontSize(15)
                .fontWeight(FontWeight.Bold)
                .fontColor(group.color)
              Text(`(${group.modules.length})`)
                .fontSize(12)
                .fontColor('#9E9E9E')
            }
            .width('100%')
            .padding({ top: 6, bottom: 2 })

            // 分类描述
            Text(group.desc)
              .fontSize(11)
              .fontColor('#757575')
              .width('100%')

            // 分类内模块列表（缩进）
            Column({ space: 4 }) {
              ForEach(group.modules, (mod: string) => {
                Row({ space: 10 }) {
                  Checkbox()
                    .select(this.selectedModules.has(mod))
                    .enabled(mod !== 'register' || parseInt(this.threadCount) <= 1)
                    .onChange((checked: boolean) => {
                      const newSet = new Set<string>(this.selectedModules)
                      if (checked) {
                        newSet.add(mod)
                      } else {
                        newSet.delete(mod)
                      }
                      this.selectedModules = newSet
                      this.allSelected = this.isAllModulesSelected()
                      this.apiCount = getApiCount()
                    })
                  Text(mod)
                }
              }, (mod: string) => mod)
            }
          }
        }, (group: ModuleGroup) => group.name)

        Divider()
      }
      .padding(15)
    }
    .width('100%')
    .height('100%')
  }

  @Builder
  buildLogTab() {
    Scroll() {
      Column({ space: 10 }) {
        Text('Run Log')
          .fontSize(18)
          .fontWeight(FontWeight.Bold)

        Row({ space: 10 }) {
          Column() {
            Text('Total').fontSize(11).fontColor('#888')
            Text(`${this.totalRunCount}`).fontSize(20).fontWeight(FontWeight.Bold)
          }.layoutWeight(1).alignItems(HorizontalAlign.Center)

          Column() {
            Text('Errors').fontSize(11).fontColor('#888')
            Text(`${this.errorCount}`).fontSize(20).fontWeight(FontWeight.Bold)
              .fontColor(this.errorCount > 0 ? Color.Red : Color.Black)
          }.layoutWeight(1).alignItems(HorizontalAlign.Center)

          Column() {
            Text('APIs').fontSize(11).fontColor('#888')
            Text(`${this.apiCount}`).fontSize(20).fontWeight(FontWeight.Bold)
          }.layoutWeight(1).alignItems(HorizontalAlign.Center)

          Column() {
            Text('Threads').fontSize(11).fontColor('#888')
            Text(`${this.activeThreadCount}`).fontSize(20).fontWeight(FontWeight.Bold)
          }.layoutWeight(1).alignItems(HorizontalAlign.Center)
        }.width('100%')

        if (this.totalRunCount > 0) {
          Text(`Success Rate: ${((this.totalRunCount - this.errorCount) / this.totalRunCount * 100).toFixed(2)}%`)
            .fontSize(13)
            .fontColor(this.errorCount === 0 ? Color.Green : Color.Red)
        }

        Divider()

        Text('Per-API Stats').fontSize(15).fontWeight(FontWeight.Bold)

        if (this.apiStats.length === 0) {
          Text('No stats yet. Run a test to see per-API statistics.')
            .fontSize(13).fontColor('#999').padding(10)
        } else {
          ForEach(this.apiStats, (stat: ApiStat) => {
            Row({ space: 8 }) {
              Text(stat.name).fontSize(12).layoutWeight(1)
              Text(`runs:${stat.runs}`).fontSize(12).fontColor('#666')
              if (stat.errors > 0) {
                Text(`err:${stat.errors}`).fontSize(12).fontColor(Color.Red)
              } else {
                Text('err:0').fontSize(12).fontColor('#999')
              }
            }.width('100%').padding(4)
          })
        }

        Divider()

        Row({ space: 8 }) {
          Text('Errors').fontSize(15).fontWeight(FontWeight.Bold)
          if (this.errorCount > 0) {
            Text(`(showing latest ${this.errorList.length} of ${this.errorCount})`)
              .fontSize(11).fontColor('#888')
          }
        }

        if (this.errorList.length === 0) {
          Text(this.isRunning ? 'No errors so far...' : 'No errors. Run a test to see results.')
            .fontSize(13).fontColor('#999')
            .padding(15)
        } else {
          ForEach(this.errorList, (err: string, index: number) => {
            Text(err)
              .fontSize(12)
              .fontColor(Color.Red)
              .backgroundColor('#FFF0F0')
              .borderRadius(4)
              .padding(6)
              .width('100%')
          })
        }
      }
      .padding(15)
    }
    .width('100%')
    .height('100%')
  }
}
