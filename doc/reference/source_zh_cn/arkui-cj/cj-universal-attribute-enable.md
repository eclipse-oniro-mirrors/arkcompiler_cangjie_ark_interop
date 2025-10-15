# 禁用控制

组件是否可交互，可交互状态下响应[点击事件](./cj-universal-event-click.md#)、[触摸事件](./cj-universal-event-touch.md)、[拖拽事件](./cj-universal-event-drag.md)、[按键事件](./cj-universal-event-key.md)、[焦点事件](../../../Dev_Guide/source_zh_cn/arkui-cj/cj-common-events-focus-event.md)、[鼠标事件](./cj-universal-event-mouse.md)和[手势事件](./cj-universal-gesture-bind.md)。

> **说明：**
>
> 禁用控制属性只能在按下时生效，已经在交互过程中，更改enabled属性不生效。

## 导入模块

```cangjie
import kit.ArkUI.*
```

## func enabled(?Bool)

```cangjie
public func enabled(value: ?Bool): T
```

**功能：** 设置组件是否启用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|value|?Bool|是|-|值为true表示组件可交互，响应点击等操作。<br>值为false表示组件不可交互，不响应点击等操作。<br>初始值:  true|

**返回值：**

|类型|说明|
|:---|:---|
|T|返回调用此接口的组件实例本身。|
