# ohos.app.ability.dialog_request

DialogRequest提供对话框请求相关的能力，包括请求结果和结果码等。

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

上述示例工程及配置模板详见[仓颉示例代码说明](../../cj-development-intro.md#仓颉示例代码说明)。

## class RequestResult

```cangjie
public class RequestResult {
    public var result: ResultCode
    public var want: Want
}
```

**功能：** 请求结果，包含结果码和Want信息。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 21

### var result

```cangjie
public var result: ResultCode
```

**功能：** 结果码。

**类型：** [ResultCode](#enum-resultcode)

**读写能力：** 可读写

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 21

### var want

```cangjie
public var want: Want
```

**功能：** Want信息。

**类型：** [Want](./cj-apis-app-ability-want.md#class-want)

**读写能力：** 可读写

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 21

## enum ResultCode

```cangjie
public enum ResultCode {
    | ResultOk
    | ResultCancel
    | ...
}
```

**功能：** 结果码。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 21

### ResultCancel

```cangjie
ResultCancel
```

**功能：** 取消。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 21

### ResultOk

```cangjie
ResultOk
```

**功能：** 成功。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 21
