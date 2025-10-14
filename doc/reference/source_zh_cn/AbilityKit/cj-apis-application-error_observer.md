# ohos.application.error_observer

本模块定义异常监听。

## 导入模块

```cangjie
import kit.AbilityKit.*
```

## 权限列表

ohos.permission.DISTRIBUTED_DATASYNC

ohos.permission.PREPARE_APP_TERMINATE

ohos.permission.PRIVACY_WINDOW

## 使用说明

API示例代码使用说明：

- 若示例代码首行有"// index.cj"注释，表示该示例可在仓颉模板工程的"index.cj"文件中编译运行。
- 若示例需获取[Context](./cj-apis-app-ability-ui_ability.md#class-context)应用上下文，需在仓颉模板工程中的"main_ability.cj"文件中进行配置。

上述示例工程及配置模板详见[仓颉示例代码说明](../cj-development-intro.md#仓颉示例代码说明)。

## class ErrorObject

```cangjie
public class ErrorObject {
    public let name: String
    public let message: String
    public let stack: Option<String>
}
```

**功能：** 包含了该未被捕获的异常的异常名称、异常信息与栈追踪。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

### let message

```cangjie
public let message: String
```

**功能：** 包含了该未被捕获的异常的异常信息。

**类型：** String

**读写能力：** 只读

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

### let name

```cangjie
public let name: String
```

**功能：** 包含了该未被捕获的异常的异常名称。

**类型：** String

**读写能力：** 只读

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

### let stack

```cangjie
public let stack: Option<String>
```

**功能：** 包含了该未被捕获的异常的栈追踪。

**类型：** Option\<String>

**读写能力：** 只读

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

## class ErrorObserver

```cangjie
public class ErrorObserver {
    public var onUnhandledException:(String) -> Unit
    public var onException: Option <(ErrorObject) -> Unit>
    public init(
        onUnhandledException: (String) -> Unit,
        onException!: Option<(ErrorObject) -> Unit> = None
    )
}
```

**功能：** 异常监听模块。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

### var onException

```cangjie
public var onException: Option <(ErrorObject) -> Unit>
```

**功能：** 应用产生异常，上报js层时的回调。

**类型：** Option\<([ErrorObject](#class-errorobject))->Unit>

**读写能力：** 可读写

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

### var onUnhandledException

```cangjie
public var onUnhandledException:(String) -> Unit
```

**功能：** 应用产生未捕获的异常时的回调。

**类型：** (String)->Unit

**读写能力：** 可读写

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

### init((String) -> Unit, Option\<(ErrorObject) -> Unit>)

```cangjie
public init(
    onUnhandledException: (String) -> Unit,
    onException!: Option<(ErrorObject) -> Unit> = None
)
```

**功能：** 构建异常监听类。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|onUnhandledException|(String)->Unit|是|-|应用产生未捕获的异常时的回调。|
|onException|Option\<([ErrorObject](#class-errorobject))->Unit>|否|None|应用产生异常，上报js层时的回调。|

**示例：**

<!-- compile -->

```cangjie
// index.cj

import kit.AbilityKit.*
import kit.PerformanceAnalysisKit.*

let observer = ErrorObserver(
    {
        errorMsg =>
            Hilog.info(0, "test_errorManager", "onUnhandledException, errorMsg:  =${errorMsg}")
    },
    onException: Some({ errorObj =>
        Hilog.info(0, "test_errorManager", "onException, name:   =${errorObj.name}")
        Hilog.info(0, "test_errorManager", "onException, message:   =${errorObj.message}")
        if (let Some(v) <-errorObj.stack) {
            Hilog.info(0, "test_errorManager", "onException, stack:    =${v}")
        }
    })
)
ErrorManager.on(ErrorManagerEvent.Error, observer)
```
