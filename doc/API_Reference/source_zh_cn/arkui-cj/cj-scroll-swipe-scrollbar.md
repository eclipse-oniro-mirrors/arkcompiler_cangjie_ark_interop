# ScrollBar

滚动条组件ScrollBar，用于配合可滚动组件使用。如[List](./cj-scroll-swipe-list.md#class-list)、[Grid](./cj-scroll-swipe-grid.md#class-grid)、[Scroll](./cj-scroll-swipe-scroll.md#class-scroll)。

> **说明：**
>
> ScrollBar主轴方向不设置大小时，采用父组件<!--[-->布局约束<!--]()-->中的maxSize作为主轴方向大小。如果ScrollBar的父组件存在可滚动组件，如[List](./cj-scroll-swipe-list.md#class-list)、[Grid](./cj-scroll-swipe-grid.md#class-grid)、[Scroll](./cj-scroll-swipe-scroll.md#class-scroll)，建议设置ScrollBar主轴方向大小，否则ScrollBar主轴方向大小可能为无穷大。

## 导入模块

```cangjie
import kit.ArkUI.*
```

## 子组件

可以包含单个子组件。

## 创建组件

### init(Scroller, ScrollBarDirection, BarState, () -> Unit)

```cangjie
public init(
    scroller!: Scroller,
    direction!: ScrollBarDirection = ScrollBarDirection.Vertical,
    state!: BarState  = BarState.Auto,
    child!: () -> Unit = { => }
)
```

**功能：**创建滚动条组件。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|scroller|[Scroller](./cj-common-types.md#class-scroller)|是|-|可滚动组件的控制器。用于与可滚动组件进行绑定。|
|direction|[ScrollBarDirection](./cj-common-types.md#enum-scrollbardirection)|否|ScrollBarDirection.Vertical|滚动条的方向，控制可滚动组件对应方向的滚动。|
|state|[BarState](./cj-common-types.md#enum-barstate)|否|BarState.Auto|滚动条状态。|
|child|()->Unit|否|{ => }|容器内的子组件。|

## 通用属性/通用事件

通用属性：全部支持

通用事件：全部支持

## 示例代码

### 示例1 （设置子节点）

该示例为ScrollBar组件有子节点时的滚动条样式。

<!-- run -->

```cangjie
package ohos_app_cangjie_entry
import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import std.collection.ArrayList

@Entry
@Component
class EntryView {
    var arr: ArrayList<Int64> = ArrayList<Int64>([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15])
    let scroller = Scroller()
    func build() {
        Column() {
            Stack(Alignment.End) {
                Scroll(this.scroller) {
                    Flex(FlexParams(direction: FlexDirection.Column, alignItems: ItemAlign.Start)) {
                        ForEach(this.arr, itemGeneratorFunc: { item: Int64, idx: Int64 =>
                            Row() {
                                Text(item.toString())
                                .width(80.percent)
                                .height(60)
                                .backgroundColor(0x3366CC)
                                .borderRadius(15)
                                .fontSize(16)
                                .textAlign(TextAlign.Center)
                                .margin(top: 5)
                            }
                        })
                    }
                    .margin(right: 15)
                }
                .width(90.percent)
                .scrollBar(BarState.Off)
                .scrollable(ScrollDirection.Vertical)
                ScrollBar(this.scroller, ScrollBarDirection.Vertical, BarState.Auto) {
                    Text("")
                    .width(20)
                    .height(100)
                    .borderRadius(10)
                    .backgroundColor(0xC0C0C0)
                }
                .width(20)
                .backgroundColor(0xededed)
            }
        }
    }
}
```

![scrollbar](figures/scrollbar1.gif)

### 示例2 （不设置子节点）

该示例为ScrollBar组件没有子节点时的滚动条样式。

<!-- run -->

```cangjie
package ohos_app_cangjie_entry
import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import std.collection.ArrayList

@Entry
@Component
class EntryView {
    var arr: ArrayList<Int64> = ArrayList<Int64>([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15])
    let scroller = Scroller()
    func build() {
        Column() {
            Stack(Alignment.End) {
                Scroll(this.scroller) {
                    Flex(FlexParams(direction: FlexDirection.Column, alignItems: ItemAlign.Start)) {
                        ForEach(
                            this.arr,
                            itemGeneratorFunc: {
                                item: Int64, idx: Int64 => Row() {
                                    Text(item.toString()).width(80.percent).height(60).backgroundColor(0x3366CC).
                                        borderRadius(15).fontSize(16).textAlign(TextAlign.Center).margin(top: 5)
                                }
                            }
                        )
                    }.margin(right: 15)
                }.width(90.percent).scrollBar(BarState.Off).scrollable(ScrollDirection.Vertical)
                ScrollBar(this.scroller, ScrollBarDirection.Vertical, BarState.Auto) {}
            }
        }
    }
}
```

![scrollbar](figures/scrollbar2.gif)
