# RelativeContainer

相对布局组件，用于复杂场景中元素对齐的布局。

> **说明：**
>
> 相对布局容器内的子组件的margin含义不同于通用属性的[margin](cj-universal-attribute-size.md#func-marginlength)，其含义为到该方向上的锚点的距离。若该方向上没有锚点，则该方向的margin不生效。

## 子组件

支持多个子组件。

## 创建组件

### init(() -> Unit)

```cangjie

public init(child!: () -> Unit = {=>})
```

**功能：** 创建一个RelativeContainer组件。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|child|()->Unit|否|{ => }|声明容器子组件。|

## 通用属性/通用事件

通用属性：全部支持。

通用事件：全部支持。

## 组件属性

### func barrier(Array\<BarrierStyle>)

```cangjie

public func barrier(value: Array<BarrierStyle>): This
```

**功能：** 设置RelativeContainer容器内的屏障，Array中每个项目即为一条barrier。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|value|Array\<[BarrierStyle](#class-barrierstyle)>|是|-|RelativeContainer容器内的屏障。|

### func guideLine(Array\<GuideLineStyle>)

```cangjie

public func guideLine(value: Array<GuideLineStyle>): This
```

**功能：** 设置RelativeContainer容器内的辅助线，Array中每个项目即为一条guideline。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|value|Array\<[GuideLineStyle](#class-guidelinestyle)>|是|-|RelativeContainer容器内的辅助线。|

## 基础类型定义

### class BarrierStyle

```cangjie
public class BarrierStyle {
    public var id: String
    public var direction: BarrierDirection
    public var referencedId: Array<String>

    public init(id: String, direction: BarrierDirection, referencedId: Array<String>)
}
```

**功能：** barrier参数，用于定义一条barrier的id、方向和生成时所依赖的组件。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 21

#### var direction

```cangjie
public var direction: BarrierDirection
```

**功能：** 指定barrier的方向。垂直方向（TOP，BOTTOM）的barrier仅能作为组件的水平方向锚点，用作垂直方向锚点时值为0；水平方向（LEFT，RIGHT）的barrier仅能作为组件的垂直方向锚点，用作水平方向锚点时值为0。

**类型：** [BarrierDirection](cj-common-types.md#enum-barrierdirection)

**读写能力：** 可读写

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 21

#### var id

```cangjie
public var id: String
```

**功能：** barrier的id，必须是唯一的并且不可与容器内组件重名。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 21

#### var referencedId

```cangjie
public var referencedId: Array<String>
```

**功能：** 指定生成barrier所依赖的组件。

**类型：** Array\<String>

**读写能力：** 可读写

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 21

#### init(String, BarrierDirection, Array\<String>)

```cangjie

public init(id: String, direction: BarrierDirection, referencedId: Array<String>)
```

**功能：** 创建一个BarrierStyle类型的对象。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|id|String|是|-|barrier的id，必须是唯一的并且不可与容器内组件重名。|
|direction|[BarrierDirection](./cj-common-types.md#enum-barrierdirection)|是|-|指定barrier的方向。<br> 垂直方向（TOP，BOTTOM）的barrier仅能作为组件的水平方向锚点，用作垂直方向锚点时值为0；水平方向（LEFT，RIGHT）的barrier仅能作为组件的垂直方向锚点，用作水平方向锚点时值为0。<br> 初始值：BarrierDirection.LEFT|
|referencedId|Array\<String>|是|-|指定生成barrier所依赖的组件。|

### class GuideLinePosition

```cangjie
public class GuideLinePosition {
    public var start:?Length = None
    public var end:?Length = None

    public init(start!: ?Length = None, end!: ?Length = None)
}
```

**功能：** guideLine位置参数，用于定义guideline的位置。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 21

#### var end

```cangjie
public var end:?Length = None
```

**功能：** guideline距离容器右侧或者底部的距离。

**类型：** ?[Length](../apis/BasicServicesKit/cj-apis-base.md#interface-length)

**读写能力：** 可读写

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 21

#### var start

```cangjie
public var start:?Length = None
```

**功能：** guideline距离容器左侧或者顶部的距离。

**类型：** ?[Length](../apis/BasicServicesKit/cj-apis-base.md#interface-length)

**读写能力：** 可读写

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 21

#### init(?Length, ?Length)

```cangjie

public init(start!: ?Length = None, end!: ?Length = None)
```

**功能：** 创建一个GuideLinePosition类型的对象。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|start|?[Length](../apis/BasicServicesKit/cj-apis-base.md#interface-length)|否|None| **命名参数。** guideline距离容器左侧或者顶部的距离。|
|end|?[Length](../apis/BasicServicesKit/cj-apis-base.md#interface-length)|否|None| **命名参数。** guideline距离容器右侧或者底部的距离。|

### class GuideLineStyle

```cangjie
public class GuideLineStyle {
    public var id: String
    public var direction: Axis
    public var position: GuideLinePosition

    public init(id: String, direction: Axis, position: GuideLinePosition)
}
```

**功能：** guideLine参数，用于定义一条guideline的id、方向和位置。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 21

#### var direction

```cangjie
public var direction: Axis
```

**功能：** 指定guideline的方向。垂直方向的guideline仅能作为组件水平方向的锚点，作为垂直方向的锚点时值为0；水平方向的guideline仅能作为组件垂直方向的锚点，作为水平方向的锚点时值为0。

**类型：** [Axis](cj-common-types.md#enum-axis)

**读写能力：** 可读写

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 21

#### var id

```cangjie
public var id: String
```

**功能：** guideline的id，必须是唯一的并且不可与容器内组件重名。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 21

#### var position

```cangjie
public var position: GuideLinePosition
```

**功能：** 指定guideline的位置。当未声明或声明异常值（如undefined）时，guideline的位置默认为start: 0。start和 end两种声明方式选择一种即可。若同时声明，仅start生效。若容器在某个方向的size被声明为"auto"，则该方向上guideline的位置只能使用start方式声明（不允许使用百分比）。

**类型：** [GuideLinePosition](#class-guidelineposition)

**读写能力：** 可读写

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 21

#### init(String, Axis, GuideLinePosition)

```cangjie

public init(id: String, direction: Axis, position: GuideLinePosition)
```

**功能：** 创建一个GuideLineStyle类型的对象。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|id|String|是|-|guideline的id，必须是唯一的并且不可与容器内组件重名。|
|direction|[Axis](./cj-common-types.md#enum-axis)|是|-|指定guideline的方向。<br>垂直方向的guideline仅能作为组件水平方向的锚点，作为垂直方向的锚点时值为0；水平方向的guideline仅能作为组件垂直方向的锚点，作为水平方向的锚点时值为0。<br> 初始值：Axis.Vertical|
|position|[GuideLinePosition](#class-guidelineposition)|是|-|指定guideline的位置。当未声明或声明异常值时，guideline的位置初始值为start: 0。start和end两种声明方式选择一种即可。若同时声明，仅start生效。<br> 初始值：{start: 0}|

## 示例代码

### 示例1（以容器和容器内组件作为锚点进行布局）

本示例通过alignRules接口实现了以容器和容器内组件作为锚点进行布局的功能。

<!-- run -->

```cangjie
package ohos_app_cangjie_entry
import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import std.collection.*

@Entry
@Component
class EntryView {
    func build() {
        Row() {
            RelativeContainer() {
                Row().width(100).height(100)
                .backgroundColor(0xff3333)
                .alignRules(
                    AlignRuleOption(
                        top: VerticalAlignment("__container__", VerticalAlign.Top),
                        left: HorizontalAlignment("__container__", HorizontalAlign.Start)
                    )
                ).id("row1")
                Row().width(100).height(100)
                .backgroundColor(0xFFCC00)
                .alignRules(
                    AlignRuleOption(
                        top: VerticalAlignment("__container__", VerticalAlign.Top),
                        right: HorizontalAlignment("__container__", HorizontalAlign.End)
                    )
                ).id("row2")
                Row().height(100)
                .backgroundColor(0xFF6633)
                .alignRules(
                    AlignRuleOption(
                        top: VerticalAlignment("row1", VerticalAlign.Bottom),
                        left: HorizontalAlignment("row1", HorizontalAlign.End),
                        right: HorizontalAlignment("row2", HorizontalAlign.Start)
                    )
                ).id("row3")
                Row()
                .backgroundColor(0xFF9966)
                .alignRules(
                    AlignRuleOption(
                        top: VerticalAlignment("row3", VerticalAlign.Bottom),
                        bottom: VerticalAlignment("__container__", VerticalAlign.Bottom),
                        left: HorizontalAlignment("__container__", HorizontalAlign.Start),
                        right: HorizontalAlignment("row1",  HorizontalAlign.End)
                    )
                ).id("row4")
                Row()
                .backgroundColor(0xff3333)
                .alignRules(
                    AlignRuleOption(
                        top: VerticalAlignment("row3", VerticalAlign.Bottom),
                        bottom: VerticalAlignment("__container__", VerticalAlign.Bottom),
                        left: HorizontalAlignment("row2", HorizontalAlign.Start),
                        right: HorizontalAlignment("__container__",  HorizontalAlign.End)
                    )
                ).id("row5")
            }
            .width(300).height(300)
            .margin(left: 50.vp)
            .border(width: 2.vp, color: Color(0x6699ff))
        }.height(100.percent)
    }
}
```

![relativecontainer1](figures/relativecontainer1.jpg)

### 示例2（子组件设置外边距）

本示例展示了容器内子组件设置外边距的用法。

<!-- run -->

```cangjie
package ohos_app_cangjie_entry
import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import std.collection.*

@Entry
@Component
class EntryView {
    func build() {
        Row() {
            RelativeContainer() {
                Row().width(100).height(100)
                .backgroundColor(0xff3333)
                .alignRules(
                    AlignRuleOption(
                        top: VerticalAlignment("__container__", VerticalAlign.Top),
                        left: HorizontalAlignment("__container__", HorizontalAlign.Start)
                    )
                ).id("row1")
                .margin(10)
                Row().width(100).height(100)
                .backgroundColor(0xFFCC00)
                .alignRules(
                    AlignRuleOption(
                        top: VerticalAlignment("row1", VerticalAlign.Top),
                        left: HorizontalAlignment("row1", HorizontalAlign.End)
                    )
                ).id("row2")
                Row().height(100).width(100)
                .backgroundColor(0xFF6633)
                .alignRules(
                    AlignRuleOption(
                        top: VerticalAlignment("row1", VerticalAlign.Bottom),
                        left: HorizontalAlignment("row1", HorizontalAlign.Start)
                    )
                ).id("row3")
                Row().width(100).height(100)
                .backgroundColor(0xFF9966)
                .alignRules(
                    AlignRuleOption(
                        top: VerticalAlignment("row2", VerticalAlign.Bottom),
                        left: HorizontalAlignment("row3", HorizontalAlign.End),
                    )
                ).id("row4")
                .margin(10)
            }
            .width(300).height(300)
            .margin(left: 50.vp)
            .border(width: 2.vp, color: Color(0x6699ff))
        }.height(100.percent)
    }
}
```

![relativecontainer2](figures/relativecontainer2.jpg)

### 示例3（设置偏移）

本示例通过[bias](cj-universal-attribute-location.md#class-bias)实现了子组件的位置在竖直方向的两个锚点间偏移的效果。

<!-- run -->

```cangjie
package ohos_app_cangjie_entry
import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import std.collection.*

@Entry
@Component
class EntryView {
    func build() {
        Row() {
            RelativeContainer() {
                Row().width(100).height(100).backgroundColor(0xff3333).alignRules(
                    AlignRuleOption(
                        top: VerticalAlignment("__container__", VerticalAlign.Top),
                        bottom: VerticalAlignment("__container__", VerticalAlign.Bottom),
                        left: HorizontalAlignment("__container__", HorizontalAlign.Start),
                        right: HorizontalAlignment("__container__", HorizontalAlign.End),
                        bias: Bias(vertical: 0.3)
                    )
                ).id("row1")
            }
            .width(300).height(300)
            .margin(left: 50.vp)
            .border(width: 2.vp, color: Color(0x6699ff))
        }.height(100.percent)
    }
}
```

![relativecontainer4](figures/relativecontainer3.jpg)

### 示例4（设置辅助线）

本示例展示了相对布局组件通过[guideLine](#func-guidelinearrayguidelinestyle)接口设置辅助线，子组件以辅助线为锚点的功能。

<!-- run -->

```cangjie
package ohos_app_cangjie_entry
import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import std.collection.*

@Entry
@Component
class EntryView {
    func build() {
        Row() {
            RelativeContainer() {
                Row().width(100).height(100).backgroundColor(0xff3333).alignRules(
                    AlignRuleOption(
                        top: VerticalAlignment("guideline2", VerticalAlign.Top),
                        left: HorizontalAlignment("guideline1", HorizontalAlign.End),
                    )
                ).id("row1")
            }.width(300).height(300).margin(left: 50.vp).border(width: 2.vp, color: Color(0x6699ff))
            .guideLine(
                [GuideLineStyle("guideline1", Axis.Vertical, GuideLinePosition(start: 50.vp)),
                GuideLineStyle("guideline2", Axis.Horizontal, GuideLinePosition(start: 50.vp))])
        }.height(100.percent)
    }
}
```

![relativecontainer5](figures/relativecontainer4.jpg)

### 示例5（设置屏障）

本示例展示了相对布局组件通过[barrier](#func-barrierarraybarrierstyle)接口设置屏障，子组件以屏障为锚点的用法。

<!-- run -->

```cangjie
package ohos_app_cangjie_entry
import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import std.collection.*

@Entry
@Component
class EntryView {
    func build() {
        Row() {
            RelativeContainer() {
                Row().width(100).height(100)
                .backgroundColor(0xff3333)
                .id("row1")

                Row().width(100).height(100)
                .backgroundColor(0xFFCC00)
                .alignRules(
                    AlignRuleOption(
                        top: VerticalAlignment("row1", VerticalAlign.Bottom),
                        middle: HorizontalAlignment("row1", HorizontalAlign.End)
                    )
                ).id("row2")

                Row().height(100).width(100)
                .backgroundColor(0xFF6633)
                .alignRules(
                    AlignRuleOption(
                        top: VerticalAlignment("row1", VerticalAlign.Top),
                        left: HorizontalAlignment("barrier1", HorizontalAlign.End)
                    )
                ).id("row3")

                Row().width(50).height(50)
                .backgroundColor(0xFF9966)
                .alignRules(
                    AlignRuleOption(
                        top: VerticalAlignment("barrier2", VerticalAlign.Bottom),
                        left: HorizontalAlignment("row1", HorizontalAlign.Start),
                    )
                ).id("row4")
            }.width(300).height(300)
            .margin(left: 50.vp)
            .border(width: 2.vp, color: Color(0x6699ff))
            .barrier(
                [BarrierStyle("barrier1", BarrierDirection.Right, ["row1", "row2"]),
                BarrierStyle("barrier2", BarrierDirection.Bottom, ["row1", "row2"])])
        }.height(100.percent)
    }
}
```

![relativecontainer6](figures/relativecontainer5.jpg)
