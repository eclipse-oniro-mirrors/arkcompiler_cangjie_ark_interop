# ohos.app.ability.ability_delegator_registry

AbilityDelegatorRegistry模块提供用于存储已注册的[AbilityDelegator](#class-abilitydelegator)和[AbilityDelegatorArgs](#class-abilitydelegatorargs)对象的全局寄存器的能力，包括获取应用程序的[AbilityDelegator](#class-abilitydelegator)对象、获取单元测试参数对象。该模块中的接口只能用于测试框架中。

## 导入模块

```cangjie
import kit.TestKit.*
```

## 使用说明

API示例代码使用说明：

- 若示例代码首行有“// index.cj”注释，表示该示例可在仓颉模板工程的“index.cj”文件中编译运行。
- 若示例需获取[Context](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-context)应用上下文，需在仓颉模板工程中的“main_ability.cj”文件中进行配置。

上述示例工程及配置模板详见[仓颉示例代码说明](../../cj-development-intro.md#仓颉示例代码说明)。

## class AbilityDelegator

```cangjie
public class AbilityDelegator {}
```

**功能：** AbilityDelegator用于创建并管理一个[AbilityMonitor](#class-abilitymonitor)对象（该对象用于监视指定[UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability)生命周期状态的更改），包括对[AbilityMonitor](#class-abilitymonitor)实例的添加、删除，等待[UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability)到达OnCreate生命周期、设置等待时间、获取指定Ability的生命周期状态、获取当前应用顶部[UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability)、启动指定[UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability)等。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

### func addAbilityMonitor(AbilityMonitor)

```cangjie
public func addAbilityMonitor(monitor: AbilityMonitor): Unit
```

**功能：** 添加[AbilityMonitor](#class-abilitymonitor)实例。不支持多线程并发调用。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|monitor|[AbilityMonitor](#class-abilitymonitor)|是|-|[AbilityMonitor](#class-abilitymonitor)实例。|

**异常：**

以下错误码详细介绍请参见[通用错误码](../../errorcodes/cj-errorcode-universal.md)和[元能力子系统错误码](../../errorcodes/cj-errorcode-ability.md)。

  | 错误码ID | 错误信息 |
  | :--- | :--- |
  | 401| Parameter error. Possible causes: 1.Mandatory parameters are left unspecified. 2.Incorrect parameter types. |
  | 16000100 | AddAbilityMonitor failed. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.AbilityKit.*
import kit.TestKit.*

let delegator = AbilityDelegatorRegistry.getAbilityDelegator()
let monitor = AbilityMonitor(
        "EntryAbility", moduleName: "entry",
        onAbilityCreate: {ability => delegator.print("onAbilityCreate called, abilityName: ${ability.launchWant.abilityName}")}
)
delegator.addAbilityMonitor(monitor)
```

### func addAbilityStageMonitor(AbilityStageMonitor)

```cangjie
public func addAbilityStageMonitor(monitor: AbilityStageMonitor): Unit
```

**功能：** 添加一个[AbilityStageMonitor](#class-abilitystagemonitor)对象，用于监视指定[AbilityStage](../AbilityKit/cj-apis-app-ability-ability_stage.md#class-abilitystage)的生命周期状态更改。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|monitor|[AbilityStageMonitor](#class-abilitystagemonitor)|是|-|[AbilityStageMonitor](#class-abilitystagemonitor)实例。|

**异常：**

以下错误码详细介绍请参见[通用错误码](../../errorcodes/cj-errorcode-universal.md)和[元能力子系统错误码](../../errorcodes/cj-errorcode-ability.md)。

  | 错误码ID | 错误信息 |
  | :--- | :--- |
  | 401| Parameter error. Possible causes: 1.Mandatory parameters are left unspecified. 2.Incorrect parameter types. |
  | 16000100 | AddAbilityStageMonitor failed. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.AbilityKit.*
import kit.TestKit.*

let delegator = AbilityDelegatorRegistry.getAbilityDelegator()
let monitor = AbilityStageMonitor("entry", "ohos_app_cangjie_entry.MyAbilityStage")
delegator.addAbilityStageMonitor(monitor)
```

### func doAbilityBackground(UIAbility)

```cangjie
public func doAbilityBackground(ability: UIAbility): Unit
```

**功能：** 调度指定[UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability)生命周期状态到Background状态。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|ability|[UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability)|是|-|[UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability)对象。|

**异常：**

以下错误码详细介绍请参见[通用错误码](../../errorcodes/cj-errorcode-universal.md)和[元能力子系统错误码](../../errorcodes/cj-errorcode-ability.md)。

  | 错误码ID | 错误信息 |
  | :--- | :--- |
  | 401| Parameter error. Possible causes: 1.Mandatory parameters are left unspecified. 2.Incorrect parameter types. |
  | 16000100 | DoAbilityBackground failed. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.AbilityKit.*
import kit.TestKit.*

let delegator = AbilityDelegatorRegistry.getAbilityDelegator()
let ability = delegator.getCurrentTopAbility()
delegator.doAbilityBackground(ability)
```

### func doAbilityForeground(UIAbility)

```cangjie
public func doAbilityForeground(ability: UIAbility): Unit
```

**功能：** 调度指定[UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability)生命周期状态到Foreground状态。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|ability|[UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability)|是|-|[UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability)对象。|

**异常：**

以下错误码详细介绍请参见[通用错误码](../../errorcodes/cj-errorcode-universal.md)和[元能力子系统错误码](../../errorcodes/cj-errorcode-ability.md)。

  | 错误码ID | 错误信息 |
  | :--- | :--- |
  | 401| Parameter error. Possible causes: 1.Mandatory parameters are left unspecified. 2.Incorrect parameter types. |
  | 16000100 | DoAbilityForeground failed. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.AbilityKit.*
import kit.TestKit.*

let delegator = AbilityDelegatorRegistry.getAbilityDelegator()
let ability = delegator.getCurrentTopAbility()
delegator.doAbilityForeground(ability)
```

### func executeShellCommand(String, Int64)

```cangjie
public func executeShellCommand(cmd: String, timeoutSecs!: Int64 = 0): ShellCmdResult
```

**功能：** 执行指定的Shell命令。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|cmd|String|是|-|Shell命令字符串。|
|timeoutSecs|Int64|否|0|设定命令超时时间，单位秒（s）。|

**返回值：**

|类型|说明|
|:----|:----|
|[ShellCmdResult](#class-shellcmdresult)|返回Shell命令执行结果[ShellCmdResult](#class-shellcmdresult)对象。|

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.AbilityKit.*
import kit.TestKit.*

let delegator = AbilityDelegatorRegistry.getAbilityDelegator()
let cmd = "cmd"
delegator.executeShellCommand(cmd, 2)
```

### func finishTest(String, Int64)

```cangjie
public func finishTest(msg: String, code: Int64): Unit
```

**功能：** 结束测试并打印日志信息到单元测试终端控制台。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|msg|String|是|-|日志字符串。|
|code|Int64|是|-|日志码。|

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.AbilityKit.*
import kit.TestKit.*

let delegator = AbilityDelegatorRegistry.getAbilityDelegator()
let msg = "msg"
delegator.finishTest(msg, 0)
```

### func getAbilityState(UIAbility)

```cangjie
public func getAbilityState(ability: UIAbility): AbilityLifecycleState
```

**功能：** 获取指定ability的生命周期状态。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|ability|[UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability)|是|-|指定[UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability)对象。|

**返回值：**

|类型|说明|
|:----|:----|
|[AbilityLifecycleState](#enum-abilitylifecyclestate)|指定ability的生命周期状态。|

**异常：**

以下错误码详细介绍请参见[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息|
  | :--- | :--- |
  | 401| Parameter error. Possible causes: 1.Mandatory parameters are left unspecified. 2.Incorrect parameter types. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.AbilityKit.*
import kit.TestKit.*

let delegator = AbilityDelegatorRegistry.getAbilityDelegator()
let ability = delegator.getCurrentTopAbility()
delegator.getAbilityState(ability)
```

### func getAppContext()

```cangjie
public func getAppContext(): Context
```

**功能：** 获取应用Context。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

**返回值：**

|类型|说明|
|:----|:----|
|[Context](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-context)|应用Context。|

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.AbilityKit.*
import kit.TestKit.*

let delegator = AbilityDelegatorRegistry.getAbilityDelegator()
let context = delegator.getAppContext()
```

### func getCurrentTopAbility()

```cangjie
public func getCurrentTopAbility(): UIAbility
```

**功能：** 获取当前应用顶部[UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability)。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

**返回值：**

|类型|说明|
|:----|:----|
|[UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability)|返回[UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability)实例。|

**异常：**

以下错误码详细介绍请参见[通用错误码](../../errorcodes/cj-errorcode-universal.md)和[元能力子系统错误码](../../errorcodes/cj-errorcode-ability.md)。

  | 错误码ID | 错误信息 |
  | :--- | :--- |
  | 401| Parameter error. Possible causes: 1.Mandatory parameters are left unspecified. 2.Incorrect parameter types. |
  | 16000100 | GetCurrentTopAbility failed. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.AbilityKit.*
import kit.TestKit.*

let delegator = AbilityDelegatorRegistry.getAbilityDelegator()
let ability = delegator.getCurrentTopAbility()
delegator.getAbilityState(ability)
```

### func print(String)

```cangjie
public func print(msg: String): Unit
```

**功能：** 打印日志信息到单元测试终端控制台。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|msg|String|是|-|日志字符串。|

**异常：**

以下错误码详细介绍请参见[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :--- | :--- |
  | 401| Parameter error. Possible causes: 1.Mandatory parameters are left unspecified. 2.Incorrect parameter types. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.AbilityKit.*
import kit.TestKit.*

let delegator = AbilityDelegatorRegistry.getAbilityDelegator()
let msg = "msg"
delegator.print(msg)
```

### func removeAbilityMonitor(AbilityMonitor)

```cangjie
public func removeAbilityMonitor(monitor: AbilityMonitor): Unit
```

**功能：** 删除已经添加的[AbilityMonitor](#class-abilitymonitor)对象。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|monitor|[AbilityMonitor](#class-abilitymonitor)|是|-|[AbilityMonitor](#class-abilitymonitor)实例。|

**异常：**

以下错误码详细介绍请参见[通用错误码](../../errorcodes/cj-errorcode-universal.md)和[元能力子系统错误码](../../errorcodes/cj-errorcode-ability.md)。

  | 错误码ID | 错误信息 |
  | :--- | :--- |
  | 401| Parameter error. Possible causes: 1.Mandatory parameters are left unspecified. 2.Incorrect parameter types. |
  | 16000100 | RemoveAbilityMonitor failed. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.AbilityKit.*
import kit.TestKit.*

let delegator = AbilityDelegatorRegistry.getAbilityDelegator()
let monitor = AbilityMonitor(
    "EntryAbility", moduleName: "entry",
    onAbilityCreate: {ability => delegator.print("onAbilityCreate called, abilityName: ${ability.launchWant.abilityName}")}
)
delegator.removeAbilityMonitor(monitor)
```

### func removeAbilityStageMonitor(AbilityStageMonitor)

```cangjie
public func removeAbilityStageMonitor(monitor: AbilityStageMonitor): Unit
```

**功能：** 删除已经添加的[AbilityStageMonitor](#class-abilitystagemonitor)对象。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|monitor|[AbilityStageMonitor](#class-abilitystagemonitor)|是|-|[AbilityStageMonitor](#class-abilitystagemonitor)实例。|

**异常：**

以下错误码详细介绍请参见[通用错误码](../../errorcodes/cj-errorcode-universal.md)和[元能力子系统错误码](../../errorcodes/cj-errorcode-ability.md)。

  | 错误码ID | 错误信息 |
  | :--- | :--- |
  | 401| Parameter error. Possible causes: 1.Mandatory parameters are left unspecified. 2.Incorrect parameter types. |
  | 16000100 | RemoveAbilityStageMonitor failed. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.AbilityKit.*
import kit.TestKit.*

let delegator = AbilityDelegatorRegistry.getAbilityDelegator()
let monitor = AbilityStageMonitor("entry", "ohos_app_cangjie_entry.MyAbilityStage")
delegator.removeAbilityStageMonitor(monitor)
```

### func startAbility(Want)

```cangjie
public func startAbility(want: Want): Future<Unit>
```

**功能：** 启动指定[UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability)。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|want|[Want](../AbilityKit/cj-apis-app-ability-want.md#class-want)|是|-|启动[UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability)参数。|

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.AbilityKit.*
import kit.TestKit.*

let delegator = AbilityDelegatorRegistry.getAbilityDelegator()
let want = Want(bundleName: "com.example.myapplication", abilityName: "EntryAbility")
delegator.startAbility(want).get()
```

### func waitAbilityMonitor(AbilityMonitor, Int64)

```cangjie
public func waitAbilityMonitor(monitor: AbilityMonitor, timeout!: Int64 = 5000): UIAbility
```

doc/API_Reference/source_zh_cn/AbilityKit/
**功能：** 设置等待时间，并等待与[AbilityMonitor](#class-abilitymonitor)实例匹配的[UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability)到达[onCreate](../AbilityKit/cj-apis-app-ability-ui_ability.md#func-oncreatewant-launchparam)生命周期，并返回[UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability)实例。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|monitor|[AbilityMonitor](#class-abilitymonitor)|是|-|[AbilityMonitor](#class-abilitymonitor)实例。|
|timeout|Int64|否|5000|最大等待时间，单位毫秒（ms）。|

**返回值：**

|类型|说明|
|:----|:----|
|[UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability)|返回[UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability)实例。|

**异常：**

以下错误码详细介绍请参见[通用错误码](../../errorcodes/cj-errorcode-universal.md)和[元能力子系统错误码](../../errorcodes/cj-errorcode-ability.md)。

  | 错误码ID | 错误信息 |
  | :--- | :--- |
  | 401| Parameter error. Possible causes: 1.Mandatory parameters are left unspecified. 2.Incorrect parameter types. |
  | 16000100 | WaitAbilityMonitor failed. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.AbilityKit.*
import kit.TestKit.*

let delegator = AbilityDelegatorRegistry.getAbilityDelegator()
let monitor = AbilityMonitor("EntryAbility", moduleName: "entry",
    onAbilityCreate: {ability => delegator.print("call onAbilityCreate success!")}
)
spawn {
    let ability = delegator.waitAbilityMonitor(monitor)
}
```

### func waitAbilityStageMonitor(AbilityStageMonitor, Int64)

```cangjie
public func waitAbilityStageMonitor(monitor: AbilityStageMonitor, timeout!: Int64 = 5000): AbilityStage
```

**功能：** 等待并返回与给定[AbilityStageMonitor](#class-abilitystagemonitor)中设置的条件匹配的[AbilityStage](../AbilityKit/cj-apis-app-ability-ability_stage.md#class-abilitystage)对象。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|monitor|[AbilityStageMonitor](#class-abilitystagemonitor)|是|-|[AbilityStageMonitor](#class-abilitystagemonitor)实例。|
|timeout|Int64|否|5000|超时最大等待时间，以毫秒（ms）为单位。|

**返回值：**

|类型|说明|
|:----|:----|
|[AbilityStage](../AbilityKit/cj-apis-app-ability-ability_stage.md#class-abilitystage)|返回[AbilityStage](../AbilityKit/cj-apis-app-ability-ability_stage.md#class-abilitystage)对象。|

**异常：**

以下错误码详细介绍请参见[通用错误码](../../errorcodes/cj-errorcode-universal.md)和[元能力子系统错误码](../../errorcodes/cj-errorcode-ability.md)。

  | 错误码ID | 错误信息 |
  | :--- | :--- |
  | 401| Parameter error. Possible causes: 1.Mandatory parameters are left unspecified. 2.Incorrect parameter types. |
  | 16000100 | WaitAbilityStageMonitor failed. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.AbilityKit.*
import kit.TestKit.*

let delegator = AbilityDelegatorRegistry.getAbilityDelegator()
let stageMonitor = AbilityStageMonitor("entry", "ohos_app_cangjie_entry.MyAbilityStage")
spawn {
    let abilityStage = delegator.waitAbilityStageMonitor(stageMonitor, 2000)
}
```

## class AbilityDelegatorArgs

```cangjie
public class AbilityDelegatorArgs {}
```

**功能：** 测试参数信息。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

### prop bundleName

```cangjie
public mut prop bundleName: String
```

**功能：** 当前被测试应用的包名。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

### prop parameters

```cangjie
public mut prop parameters: HashMap<String,String>
```

**功能：** 当前启动单元测试的参数。

**类型：** HashMap\<String,String>

**读写能力：** 可读写

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

### prop testCaseNames

```cangjie
public mut prop testCaseNames: String
```

**功能：** 测试用例名称。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

### prop testRunnerClassName

```cangjie
public mut prop testRunnerClassName: String
```

**功能：** 执行测试用例的测试执行器名称。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

## class AbilityDelegatorRegistry

```cangjie
public class AbilityDelegatorRegistry {}
```

**功能：** [AbilityDelegatorRegistry](#class-abilitydelegatorregistry)提供用于存储已注册的[AbilityDelegator](#class-abilitydelegator)和[AbilityDelegatorArgs](#class-abilitydelegatorargs)对象的全局寄存器的能力。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

### static func getAbilityDelegator()

```cangjie
public static func getAbilityDelegator(): AbilityDelegator
```

**功能：** 获取应用程序的[AbilityDelegator](#class-abilitydelegator)对象，该对象能够使用调度测试框架的相关功能。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

**返回值：**

|类型|说明|
|:----|:----|
|[AbilityDelegator](#class-abilitydelegator)|[AbilityDelegator](#class-abilitydelegator)对象。可以用来调度测试框架相关功能。|

### static func getArguments()

```cangjie
public static func getArguments(): AbilityDelegatorArgs
```

**功能：** 获取单元测试参数[AbilityDelegatorArgs](#class-abilitydelegatorargs)对象。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

**返回值：**

|类型|说明|
|:----|:----|
|[AbilityDelegatorArgs](#class-abilitydelegatorargs)|[AbilityDelegatorArgs](#class-abilitydelegatorargs)对象。可以用来获取测试参数。|

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let args = AbilityDelegatorRegistry.getArguments()
AppLog.info("args is ${args.bundleName}")
AppLog.info("args is ${args.testCaseNames}")
AppLog.info("args is ${args.testRunnerClassName}")
AppLog.info("args is ${args.parameters}")
```

## class AbilityMonitor

```cangjie
public class AbilityMonitor {
    public var abilityName: String
    public var moduleName: String
    public var onAbilityCreate:?(UIAbility) -> Unit
    public var onAbilityForeground:?(UIAbility) -> Unit
    public var onAbilityBackground:?(UIAbility) -> Unit
    public var onAbilityDestroy:?(UIAbility) -> Unit
    public var onWindowStageCreate:?(UIAbility) -> Unit
    public var onWindowStageRestore:?(UIAbility) -> Unit
    public var onWindowStageDestroy:?(UIAbility) -> Unit
    public init(
        abilityName: String,
        moduleName!: String = "",
        onAbilityCreate!: ?(UIAbility) -> Unit = None,
        onAbilityForeground!: ?(UIAbility) -> Unit = None,
        onAbilityBackground!: ?(UIAbility) -> Unit = None,
        onAbilityDestroy!: ?(UIAbility) -> Unit = None,
        onWindowStageCreate!: ?(UIAbility) -> Unit = None,
        onWindowStageRestore!: ?(UIAbility) -> Unit = None,
        onWindowStageDestroy!: ?(UIAbility) -> Unit = None
    )
}
```

**功能：** [AbilityMonitor](#class-abilitymonitor)模块提供匹配满足指定条件的受监视能力对象的方法的能力，最近匹配的ability对象将保存在[AbilityMonitor](#class-abilitymonitor)中。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

### var abilityName

```cangjie
public var abilityName: String
```

**功能：** 当前[AbilityMonitor](#class-abilitymonitor)绑定的ability名称。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

### var moduleName

```cangjie
public var moduleName: String
```

**功能：** 当前[AbilityMonitor](#class-abilitymonitor)绑定的模块名称。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

### var onAbilityBackground

```cangjie
public var onAbilityBackground:?(UIAbility) -> Unit
```

**功能：** ability状态变成后台时的回调函数。不设置该属性则不能收到该生命周期回调。

**类型：** ?([UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability))->Unit

**读写能力：** 可读写

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

### var onAbilityCreate

```cangjie
public var onAbilityCreate:?(UIAbility) -> Unit
```

**功能：** ability被启动初始化时的回调函数。不设置该属性则不能收到该生命周期回调。

**类型：** ?([UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability))->Unit

**读写能力：** 可读写

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

### var onAbilityDestroy

```cangjie
public var onAbilityDestroy:?(UIAbility) -> Unit
```

**功能：** ability被销毁前的回调函数。不设置该属性则不能收到该生命周期回调。

**类型：** ?([UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability))->Unit

**读写能力：** 可读写

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

### var onAbilityForeground

```cangjie
public var onAbilityForeground:?(UIAbility) -> Unit
```

**功能：** ability状态变成前台时的回调函数。不设置该属性则不能收到该生命周期回调。

**类型：** ?([UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability))->Unit

**读写能力：** 可读写

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

### var onWindowStageCreate

```cangjie
public var onWindowStageCreate:?(UIAbility) -> Unit
```

**功能：** window stage被创建时的回调函数。不设置该属性则不能收到该生命周期回调。

**类型：** ?([UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability))->Unit

**读写能力：** 可读写

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

### var onWindowStageDestroy

```cangjie
public var onWindowStageDestroy:?(UIAbility) -> Unit
```

**功能：** window stage被销毁前的回调函数。不设置该属性则不能收到该生命周期回调。

**类型：** ?([UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability))->Unit

**读写能力：** 可读写

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

### var onWindowStageRestore

```cangjie
public var onWindowStageRestore:?(UIAbility) -> Unit
```

**功能：** window stage被重载时的回调函数。不设置该属性则不能收到该生命周期回调。

**类型：** ?([UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability))->Unit

**读写能力：** 可读写

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

### init(String, String, ?(UIAbility) -> Unit, ?(UIAbility) -> Unit, ?(UIAbility) -> Unit, ?(UIAbility) -> Unit, ?(UIAbility) -> Unit, ?(UIAbility) -> Unit, ?(UIAbility) -> Unit)

```cangjie
public init(
    abilityName: String,
    moduleName!: String = "",
    onAbilityCreate!: ?(UIAbility) -> Unit = None,
    onAbilityForeground!: ?(UIAbility) -> Unit = None,
    onAbilityBackground!: ?(UIAbility) -> Unit = None,
    onAbilityDestroy!: ?(UIAbility) -> Unit = None,
    onWindowStageCreate!: ?(UIAbility) -> Unit = None,
    onWindowStageRestore!: ?(UIAbility) -> Unit = None,
    onWindowStageDestroy!: ?(UIAbility) -> Unit = None
)
```

**功能：** 构造一个[AbilityMonitor](#class-abilitymonitor)对象。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|abilityName|String|是|-|当前[AbilityMonitor](#class-abilitymonitor)绑定的ability名称。|
|moduleName|String|否|""| **命名参数。** 当前[AbilityMonitor](#class-abilitymonitor)绑定的模块名称。|
|onAbilityCreate|?([UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability)) -> Unit|否|None| **命名参数。** ability被启动初始化时的回调函数。None即不设置该属性，则不能收到该生命周期回调。|
|onAbilityForeground|?([UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability)) -> Unit|否|None| **命名参数。** ability状态变成前台时的回调函数。None即不设置该属性，则不能收到该生命周期回调。|
|onAbilityBackground|?([UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability)) -> Unit|否|None| **命名参数。** ability状态变成后台时的回调函数。None即不设置该属性，则不能收到该生命周期回调。|
|onAbilityDestroy|?([UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability)) -> Unit|否|None| **命名参数。** ability被销毁前的回调函数。None即不设置该属性，则不能收到该生命周期回调。|
|onWindowStageCreate|?([UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability)) -> Unit|否|None| **命名参数。** windowStage被创建时的回调函数。None即不设置该属性，则不能收到该生命周期回调。|
|onWindowStageRestore|?([UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability)) -> Unit|否|None| **命名参数。** windowStage被重载时的回调函数。None即不设置该属性，则不能收到该生命周期回调。|
|onWindowStageDestroy|?([UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability)) -> Unit|否|None| **命名参数。** windowStage销毁前调用的回调函数。None即不设置该属性，则不能收到该生命周期回调。|

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let monitor = AbilityMonitor(
    "EntryAbility", moduleName: "entry",
    onAbilityCreate: {ability => delegator.print("onAbilityCreate called, abilityName: ${ability.launchWant.abilityName}")}
)
```

## class AbilityStageMonitor

```cangjie
public class AbilityStageMonitor <: FFIData {
    public var moduleName: String
    public var srcEntrance: String
    public init(
        moduleName: String,
        srcEntrance: String
    )
}
```

**功能：** [AbilityStageMonitor](#class-abilitystagemonitor)模块提供用于匹配满足指定条件的受监视的[AbilityStage](../AbilityKit/cj-apis-app-ability-ability_stage.md#class-abilitystage)对象的方法。最近匹配的[AbilityStage](../AbilityKit/cj-apis-app-ability-ability_stage.md#class-abilitystage)对象将保存在[AbilityStageMonitor](#class-abilitystagemonitor)中。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

**父类型：**

- FFIData

### var moduleName

```cangjie
public var moduleName: String
```

**功能：** 要监视的abilityStage的模块名。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

### var srcEntrance

```cangjie
public var srcEntrance: String
```

**功能：** 要监视的abilityStage的源路径。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

### init(String, String)

```cangjie
public init(
    moduleName: String,
    srcEntrance: String
)
```

**功能：** 构造一个[AbilityStageMonitor](#class-abilitystagemonitor)对象。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|moduleName|String|是|-|要监视的abilityStage的模块名。|
|srcEntrance|String|是|-|要监视的abilityStage的源路径。|

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.AbilityKit.*
import kit.TestKit.*

let delegator = AbilityDelegatorRegistry.getAbilityDelegator()
let monitor = AbilityStageMonitor("entry", "ohos_app_cangjie_entry.MyAbilityStage")
delegator.addAbilityStageMonitor(monitor)
```

## class ShellCmdResult

```cangjie
public class ShellCmdResult {}
```

**功能：** Shell命令执行结果。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

### prop exitCode

```cangjie
public mut prop exitCode: Int32
```

**功能：** 结果码。

**类型：** Int32

**读写能力：** 可读写

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

### prop stdResult

```cangjie
public mut prop stdResult: String
```

**功能：** 标准输出内容。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

## enum AbilityLifecycleState

```cangjie
public enum AbilityLifecycleState <: Equatable<AbilityLifecycleState> & ToString {
    | Uninitialized
    | Create
    | Foreground
    | Background
    | Destroy
    | ...
}
```

**功能：** [UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability)生命周期状态，该类型为枚举，可配合[AbilityDelegator](#class-abilitydelegator)的[getAbilityState](#func-getabilitystateuiability)方法返回不同ability生命周期。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

**父类型：**

- Equatable\<AbilityLifecycleState>
- ToString

### Background

```cangjie
Background
```

**功能：** 表示[UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability)处于后台状态。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

### Create

```cangjie
Create
```

**功能：** 表示[UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability)处于已创建状态。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

### Destroy

```cangjie
Destroy
```

**功能：** 表示[UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability)处于已销毁状态。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

### Foreground

```cangjie
Foreground
```

**功能：** 表示[UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability)处于前台状态。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

### Uninitialized

```cangjie
Uninitialized
```

**功能：** 表示[UIAbility](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-uiability)处于无效状态。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

### func !=(AbilityLifecycleState)

```cangjie
public operator func !=(other: AbilityLifecycleState): Bool
```

**功能：** 判断两个枚举值是否不等。

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|other|[AbilityLifecycleState](#enum-abilitylifecyclestate)|是|-|另一个枚举值。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|两个枚举值不等返回true，否则返回false。|

### func ==(AbilityLifecycleState)

```cangjie
public operator func ==(other: AbilityLifecycleState): Bool
```

**功能：** 判断两个枚举值是否相等。

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|other|[AbilityLifecycleState](#enum-abilitylifecyclestate)|是|-|另一个枚举值。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|两个枚举值相等返回true，否则返回false。|

### func toString()

```cangjie
public func toString(): String
```

**功能：** 获取当前枚举的字符串表示。

**返回值：**

|类型|说明|
|:----|:----|
|String|当前枚举的字符串表示。|
