# MenuItemGroup

该组件用来展示菜单MenuItem的分组。

## 导入模块

```cangjie
import kit.ArkUI.*
```

## 子组件

包含[MenuItem](./cj-menu-menuitem.md)子组件。

## 创建组件

### init(ResourceStr, ResourceStr, () -> Unit)

```cangjie
public init(header!: CustomBuilder, footer!: CustomBuilder, child!: () -> Unit = {=>})
```

**功能：** 创建一个用来展示菜单MenuItem的分组。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|header|ResourceStr|False|""|**命名参数。** 设置对应group的标题显示信息。|
|footer|ResourceStr|False|""|**命名参数。** 设置对应group的尾部显示信息。|
|child|()->Unit|否|{ => }|**命名参数。** 声明容器内的子组件。|

### init(CustomBuilder, CustomBuilder, () -> Unit)

```cangjie
public init(header!: CustomBuilder, footer!: CustomBuilder, child!: () -> Unit = {=>})
```

**功能：** 创建一个用来展示菜单MenuItem的分组。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|header|CustomBuilder|是|-|**命名参数。** 设置对应group的标题显示信息。|
|footer|CustomBuilder|是|-|**命名参数。** 设置对应group的尾部显示信息。|
|child|()->Unit|否|{ => }|**命名参数。** 声明容器内的子组件。|

## 通用属性/通用事件

通用属性：全部支持。

通用事件：全部支持。

## 示例代码

示例代码

详见[Menu](cj-menu-menu.md#示例代码)组件示例。
