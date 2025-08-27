# 菜单控制（Menu）

Menu是菜单接口，一般用于鼠标右键弹窗、点击弹窗等。具体用法请参见[菜单控制](../../../API_Reference/source_zh_cn/arkui-cj/cj-universal-attribute-menu.md)。

使用[bindContextMenu](../../../API_Reference/source_zh_cn/arkui-cj/cj-universal-attribute-menu.md#func-bindcontextmenu---unit-responsetype)并设置预览图，菜单弹出时有蒙层，此时为模态。

使用[bindMenu](../../../API_Reference/source_zh_cn/arkui-cj/cj-universal-attribute-menu.md#func-bindmenu---unit)或bindContextMenu未设置预览图时，菜单弹出无蒙层，此时为非模态。

## 生命周期

|名称|类型|说明|
|:---|:---|:---|
|aboutToAppear|() -> Unit|菜单显示动效前的事件回调。|
|onAppear|() -> Unit|菜单弹出时的事件回调。|
|aboutToDisappear|() -> Unit|菜单退出动效前的事件回调。|
|onDisappear|() -> Unit|菜单消失时的事件回调。|

## 创建默认样式的菜单

菜单需要调用bindMenu接口来实现。bindMenu响应绑定组件的点击事件，绑定组件后手势点击对应组件后即可弹出。


```cangjie
Button("click for Menu").bindMenu(
    Action(
        value: 'Menu1',
        action: {
            => AppLog.info('handle Menu1 select')
        }
    )
)
```

![menu](figures/menu1.png)

### 创建自定义样式的菜单

当默认样式不满足开发需求时，可使用[@Builder](./paradigm/cj-macro-builder.md)自定义菜单内容，通过bindMenu接口进行菜单的自定义。

#### @Builder开发菜单内的内容

 <!-- run -->

```cangjie
package ohos_app_cangjie_entry
import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.*

class Tmp {
    var iconStr2: AppResource = @r(app.media.startIcon)

    public func set(val: AppResource) {
        this.iconStr2 = val
    }
}

@Entry
@Component
class EntryView {
    @State var select: Bool = true
    private var iconStr: AppResource = @r(app.media.startIcon)
    private var iconStr2: AppResource = @r(app.media.startIcon)

    @Builder
    func SubMenu() {
        Menu() {
            MenuItem(startIcon: "", content: "复制", endIcon: "", labelInfo: "Ctrl+C")
            MenuItem(startIcon: "", content: "粘贴", endIcon: "", labelInfo: "Ctrl+V")
        }
    }

    @Builder
    func MyMenu() {
        Menu() {
            MenuItem(startIcon: @r(app.media.app_background), content: @r(app.string.Content_name),
                endIcon: @r(app.string.Content_empty), labelInfo: @r(app.string.Content_empty))
            MenuItem(startIcon: @r(app.media.app_background), content: @r(app.string.Content_name),
                endIcon: @r(app.string.Content_empty), labelInfo: @r(app.string.Content_empty)).enabled(false)
            MenuItem(
                startIcon: this.iconStr,
                content: @r(app.string.Content_name),
                endIcon: @r(app.media.startIcon),
                labelInfo: @r(app.string.Content_empty),
                // 当builder参数进行配置时，表示与menuItem项绑定了子菜单。鼠标hover在该菜单项时，会显示子菜单。
                builder: {=> bind(this.SubMenu, this)()}
            )
            MenuItemGroup(header: "小标题", footer: "") {
                =>
                MenuItem(startIcon: "", content: "菜单选项", endIcon: "", labelInfo: "")
                    .selectIcon(true)
                    .selected(this.select)
                    .onChange(
                        {
                            selected =>
                            AppLog.info("menuItem select${selected}")
                            let Str: Tmp = Tmp()
                            Str.set(@r(app.media.startIcon))
                        }
                    )
                MenuItem(
                    startIcon: @r(app.media.startIcon),
                    content: @r(app.string.Content_empty),
                    endIcon: @r(app.media.startIcon),
                    labelInfo: @r(app.string.Content_empty),
                    builder: {=> bind(this.SubMenu, this)()}
                )
            }

            MenuItem(
                startIcon: this.iconStr2,
                content: @r(app.string.Content_name),
                endIcon: @r(app.media.startIcon),
                labelInfo: @r(app.string.Content_empty)
            )
        }
    }

    func build() {
        // ...
    }
}
```

### bindMenu属性绑定组件


```cangjie
Button('click for Menu')
    .bindMenu(builder: this.MyMenu)
```

![menu](figures/menu2.png)

## 创建支持右键或长按的菜单

通过bindContextMenu接口自定义菜单，设置菜单弹出的触发方式，触发方式为右键或长按。使用bindContextMenu弹出的菜单项是在独立子窗口内的，可显示在应用窗口外部。

- @Builder开发菜单内的内容与上文写法相同。
- 确认菜单的弹出方式，使用bindContextMenu属性绑定组件。示例中为右键弹出菜单。


```cangjie
Button('click for Menu')
    .bindContextMenu(
        builder: this.MyMenu,
        responseType: ResponseType.RightClick
    )
```
