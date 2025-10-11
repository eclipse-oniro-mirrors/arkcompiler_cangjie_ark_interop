# ohos.resource

本模块描述资源类型。

## 导入模块

```cangjie
import kit.LocalizationKit.*
```

## 使用说明

API示例代码使用说明：

- 若示例代码首行有“// index.cj”注释，表示该示例可在仓颉模板工程的“index.cj”文件中编译运行。
- 若示例需获取[Context](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-context)应用上下文，需在仓颉模板工程中的“main_ability.cj”文件中进行配置。

上述示例工程及配置模板详见[仓颉示例代码说明](../../cj-development-intro.md#仓颉示例代码说明)。

## class AppResource

```cangjie
public class AppResource <: Length & ResourceColor & ResourceStr {
    public let bundleName: String
    public let moduleName: String
    public let id: UInt32
    public let params:?Array<Any>
    public let resType:?Int32
    public init(
        bundleName: String,
        moduleName: String,
        id: UInt32,
        params!: ?Array<Any> = None,
        resType!: ?Int32 = None
    )
}
```

**功能：** 表示资源类型。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 22

**父类型：**

- Length
- ResourceColor
- ResourceStr

### let bundleName

```cangjie
public let bundleName: String
```

**功能：** 应用的包名称。

**类型：** String

**读写能力：** 只读

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 22

### let id

```cangjie
public let id: UInt32
```

**功能：** 资源id。

**类型：** UInt32

**读写能力：** 只读

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 22

### let moduleName

```cangjie
public let moduleName: String
```

**功能：** 应用的模块名称。

**类型：** String

**读写能力：** 只读

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 22

### let params

```cangjie
public let params:?Array<Any>
```

**功能：** 其他资源参数（可选）。

**类型：** ?Array\<Any>

**读写能力：** 只读

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 22

### let resType

```cangjie
public let resType:?Int32
```

**功能：** 资源的类型（可选）。

**类型：** ?Int32

**读写能力：** 只读

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 22

### init(String, String, UInt32, ?Array\<Any>, ?Int32)

```cangjie
public init(
    bundleName: String,
    moduleName: String,
    id: UInt32,
    params!: ?Array<Any> = None,
    resType!: ?Int32 = None
)
```

**功能：** 构造资源类型对象。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|bundleName|String|是|-|应用的包名称。|
|moduleName|String|是|-|应用的模块名称。|
|id|UInt32|是|-|资源id。|
|params|?Array\<Any>|否|None| **命名参数。** 其他资源参数。|
|resType|?Int32|否|None| **命名参数。** 资源的类型。|
