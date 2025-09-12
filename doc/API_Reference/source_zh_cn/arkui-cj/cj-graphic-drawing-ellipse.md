# Ellipse

椭圆绘制组件。

## 导入模块

```cangjie
import kit.ArkUI.*
```

## 子组件

无

## 创建组件

### init(Length, Length)

```cangjie
public init(width!: Length = 0.vp, height!: Length = 0.vp)
```

**功能：** 绘制一个宽度为width，高度为height的椭圆。异常值按照初始值处理。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|width|[Length](../apis/BasicServicesKit/cj-apis-base.md#interface-length)|否|0.vp|**命名参数。** 宽度，取值范围≥0。|
|height|[Length](../apis/BasicServicesKit/cj-apis-base.md#interface-length)|否|0.vp|**命名参数。** 高度，取值范围≥0。|

## 通用属性/通用事件

通用属性：全部支持。

通用事件：全部支持。

## 组件属性

### func initial()

```cangjie
public override func initial()
```

**功能：** 绘制一个宽度为0，高度为0的椭圆。需要设置[width](./cj-universal-attribute-size.md#func-widthlength)或[height](./cj-universal-attribute-size.md#func-heightlength)属性参数不为0才能显示出来。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 21

## 示例代码

<!-- run -->

```cangjie
package ohos_app_cangjie_entry
import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*

@Entry
@Component
class EntryView {
    func build() {
        Column() {
            // 绘制一个 150 * 80 的椭圆
            Ellipse(width: 150, height: 80)
            // 绘制一个 150 * 100 、线条为红色的椭圆环
            Ellipse()
                .width(150)
                .height(100)
                .fillOpacity(0.0)
                .stroke(Color.Red)
                .strokeWidth(3)
                .padding(top: 10)
        }.width(100.percent)
    }
}
```

![ellipse](./figures/ellipse.png)
