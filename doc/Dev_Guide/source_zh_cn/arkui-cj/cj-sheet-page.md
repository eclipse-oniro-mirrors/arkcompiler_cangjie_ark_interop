# 绑定半模态页面（bindSheet）

[半模态页面（bindSheet）](../../../API_Reference/source_zh_cn/arkui-cj/cj-universal-attribute-sheettransition.md#func-bindsheetbool----unit-sheetoptions)默认是模态形式的非全屏弹窗式交互页面，允许部分底层父视图可见，帮助用户在与半模态交互时保留其父视图环境。

半模态页面适用于展示简单的任务或信息面板，例如，个人信息、文本简介、分享面板、创建日程、添加内容等。若需展示可能影响父视图的半模态页面，半模态支持配置为非模态交互形式。

半模态在不同宽度的设备上存在不同的形态能力，开发者对不同宽度的设备上有不同的形态诉求请参见([preferType](../../../API_Reference/source_zh_cn/arkui-cj/cj-universal-attribute-sheettransition.md#class-sheetoptions))属性。可以使用bindSheet构建半模态转场效果，详见[模态转场](./cj-modal-transition.md)。对于复杂或者冗长的用户流程，建议考虑其他的转场方式替代半模态。如[全模态转场](./cj-contentcover-page.md)。

## 使用约束

- 若无二次确认或者自定义关闭行为的场景，不建议使用[shouldDismiss/onWilDismiss](../../../API_Reference/source_zh_cn/arkui-cj/cj-universal-attribute-sheettransition.md#class-sheetoptions)接口。

## 生命周期

半模态页面提供了生命周期函数，用于通知用户该弹窗的生命周期状态。生命周期的触发顺序依次为：onWillAppear -> onAppear -> onWillDisappear -> onDisappear。

|名称|类型|说明|
|:---|:---|:---|
|onWillAppear|() -> Unit|半模态页面显示（动画开始前）回调函数。|
|onAppear|() -> Unit|半模态页面显示（动画结束后）回调函数。|
|onWillDisappear|() -> Unit|半模态页面回退（动画开始前）回调函数。|
|onDisappear|() -> Unit|半模态页面回退（动画结束后）回调函数。|

## 使用嵌套滚动交互

在半模态面板内容区域滑动时的操作优先级：

1. 内容处于最顶部（内容不可滚动时以此状态处理）<br> 上滑时，优先向上扩展面板档位，如无档位可扩展，则滚动内容。 <br> 下滑时，优先向下收缩面板档位，如无档位可收缩，则关闭面板。

2. 内容处于中间位置（可上下滚动）<br> 上/下滑时，优先滚动内容，直至页面内容到达底部/顶部。

3. 内容处于底部位置（内容可滚动时）<br> 上滑时，呈现内容区域回弹效果，不切换档位。 <br> 下滑时，滚动内容直到到达顶部。

半模态上述交互默认的嵌套模式为：{Forward：PARENT_FIRST，Backward：SELF_FIRST}

如果开发者希望在面板内容的builder中定义滚动容器，如List、Scroll，并结合半模态的上述交互能力，那么需要在垂直方向上为滚动容器设置嵌套滚动属性。

```cangjie
.nestedScroll(
    NestedScrollOptions(
        // 可滚动组件往末尾端滚动时的嵌套滚动选项，手势向上
        NestedScrollMode.ParentFirst,
        // 可滚动组件往起始端滚动时的嵌套滚动选项，手势向下
        NestedScrollMode.SelfFirst,
    )
)
```

完整示例代码如下：

 <!-- run -->

```cangjie
package ohos_app_cangjie_entry
import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.*

@Entry
@Component
class EntryView {
    @State var isShowSheet: Bool = false
    private var items: Array<Int64> = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

    @Builder
    func SheetBuilder() {
        Column() {
            // 第一步：自定义滚动容器
            List(space: 10) {
                ForEach(
                    this.items,
                    itemGeneratorFunc: {
                        item: Int64, _: Int64 => ListItem() {
                            Text(item.toString())
                                .fontSize(16)
                                .fontWeight(FontWeight.Bold)
                        }
                        .width(90.percent)
                        .height(80.vp)
                        .backgroundColor(Color.Blue)
                        .borderRadius(10)
                    }
                )
            }
            .alignListItem(ListItemAlign.Center)
            .margin(top: 10)
            .width(100.percent)
            .height(900.px)
            // 第二步：设置滚动组件的嵌套滚动属性
            .nestedScroll(
                NestedScrollOptions(
                    NestedScrollMode.ParentFirst,
                    NestedScrollMode.SelfFirst,
                )
            )

            Text("非滚动区域")
                .width(100.percent)
                .backgroundColor(Color.Gray)
                .layoutWeight(1)
                .textAlign(TextAlign.Center)
                .align(Alignment.Top)
        }
        .width(100.percent)
        .height(100.percent)
    }

    func build() {
        Column() {
            Button("Open Sheet")
                .width(90.percent)
                .height(80.vp)
                .onClick({
                    evt => this.isShowSheet = !this.isShowSheet
                })
                .bindSheet(
                    this.isShowSheet,
                    this.SheetBuilder,
                    options: SheetOptions(
                        detents: [SheetSize.Medium, SheetSize.Large, FitContent],
                        preferType: SheetType.Bottom,
                        title: {=> Text("嵌套滚动场景")}
                    )
                )
        }
        .width(100.percent)
        .height(100.percent)
        .justifyContent(FlexAlign.Center)
    }
}
```

![page](figures/page.gif)

## 二次确认能力

推荐使用onWillDismiss接口，此接口支持在回调中处理二次确认，或自定义关闭行为。

```cangjie
// 第一步：声明onWillDismiss回调
onWillDismiss: {
    // 第二步：确认二次回调交互能力，此处用AlertDialog提示 "是否需要关闭半模态"
    dismissSheetAction: DismissSheetAction => {
        AlertDialog.show(
            AlertDialogParamWithButtons(
                "text",
                title: '是否选择关闭半模态',
                primaryButton: AlertDialogButtonOptions(
                    value: 'cancel',
                    action: {
                        => Hilog.info(0, "cangjie", Callback when the cancel button is clicked")
                    }
                ),
                secondaryButton: AlertDialogButtonOptions(
                    value: 'ok',
                    // 第三步：确认关闭半模态逻辑所在，此处为AlertDialog的Button回调
                    action: {
                        => {
                            // 第四步：上述第三步逻辑触发的时候，调用dismiss()关闭半模态
                            dismissSheetAction.dismiss(),
                            Hilog.info(0, "cangjie", Callback when the ok button is clicked")
                        }
                    }
                ),
                cancel: {
                    => Hilog.info(0, "cangjie", AlertDialog Closed callbacks")
                }
            )
        )
    }
}
```

![page](figures/page.gif)

## 屏蔽部分关闭行为

由于声明了onWillDismiss接口，半模态的关闭行为都需要dismiss处理。可以通过if等逻辑自定义处理关闭逻辑。

下述示例显示半模态页面只在下滑的时候关闭。

```cangjie
onWillDismiss: {
    dismissSheetAction: DismissSheetAction => {
        if (dismissSheetAction.reason == DismissReason.SLIDE_DOWN) {
            DismissSheetAction.dismiss() // 注册dismiss行为
        }
    }
}
```

同理可以结合onWillSpringBackWhenDismiss接口实现更好的下滑体验。

类比onWillDismiss，在声明了onWillSpringBackWhenDismiss后，半模态下滑时的回弹操作需要使用 SpringBackAction.springBack()处理，无此逻辑则不会回弹。

具体代码如下，在半模态下滑的时候无需回弹。

```cangjie
onWillDismiss: {
    dismissSheetAction: DismissSheetAction => {
        if (dismissSheetAction.reason == DismissReason.SLIDE_DOWN) {
            dismissSheetAction.dismiss() // 注册dismiss行为
        }
    }
}

onWillSpringBackWhenDismiss: {
    springBackAction: SpringBackAction => {
        // 没有注册springBack, 下拉半模态页面无回弹行为
    }
}
```
