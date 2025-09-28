# ohos.app.ability

Ability模块提供了包含BaseContext类的定义。

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

## class BaseContext

```cangjie
public abstract class BaseContext {
    public let stageMode: Bool
}
```

**功能：** 提供ability或application的上下文的能力。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 22

### let stageMode

```cangjie
public let stageMode: Bool
```

**功能：** 表示是否Stage模型。

**类型：** Bool

**读写能力：** 只读

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 21

**示例：**

<!-- compile -->
```cangjie
import kit.AbilityKit.*

class MyUIAbility <: UIAbility {
    public override func onWindowStageCreate(windowStage: WindowStage): Unit {
          let isStageMode = this.context.stageMode
    }
}
