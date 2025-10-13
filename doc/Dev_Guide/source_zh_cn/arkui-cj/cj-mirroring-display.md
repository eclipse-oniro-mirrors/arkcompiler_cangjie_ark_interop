# 使用镜像能力

## 概述

为满足不同用户的阅读习惯，ArkUI提供了镜像能力。在特定情况下将显示内容在X轴上进行镜像反转，由从左向右显示变成从右向左显示。

|**镜像前**|**镜像后**|
|:---|:---|
| ![mirroring-capability](./figures/mirroring_capability1.png) | ![mirroring-capability](./figures/mirroring_capability2.png) |

当组件满足以下任意条件时，镜像能力生效：

1. 组件的direction属性设置为Direction.Rtl。

2. 组件的direction属性设置为Direction.Auto，且当前的系统语言（如维吾尔语）的阅读习惯是从右向左。

## 基本概念

- LTR：顺序为从左向右。
- RTL：顺序为从右向左。

## 使用约束

ArkUI 如下能力已默认适配镜像：

|**类别**|**名称**|
|:---|:---|
| 基础组件 | [Swiper](../../../reference/source_zh_cn/arkui-cj/cj-scroll-swipe-swiper.md)、[Tabs](../../../reference/source_zh_cn/arkui-cj/cj-navigation-switching-tabs.md)、[List](../../../reference/source_zh_cn/arkui-cj/cj-scroll-swipe-list.md)、[Progress](../../../reference/source_zh_cn/arkui-cj/cj-information-display-progress.md)、[CalendarPickerDialog](../../../Dev_Guide/source_zh_cn/arkui-cj/cj-fixes-style-dialog.md#日历选择器弹窗)、[TextPicker](../../../reference/source_zh_cn/arkui-cj/cj-button-picker-textpicker.md)、[DatePicker](../../../reference/source_zh_cn/arkui-cj/cj-button-picker-datepicker.md)、[Grid](../../../reference/source_zh_cn/arkui-cj/cj-scroll-swipe-grid.md)、[Scroll](../../../reference/source_zh_cn/arkui-cj/cj-scroll-swipe-scroll.md)、[ScrollBar](../../../reference/source_zh_cn/arkui-cj/cj-scroll-swipe-scrollbar.md)、[AlphabetIndexer](../../../reference/source_zh_cn/arkui-cj/cj-information-display-alphabetindexer.md)、[Stepper](../../../reference/source_zh_cn/arkui-cj/cj-navigation-switching-stepper.md)、[SideBarContainer](../../../reference/source_zh_cn/arkui-cj/cj-grid-layout-sidebar.md)、[Navigation](../../../reference/source_zh_cn/arkui-cj/cj-navigation-switching-navigation.md)、[Rating](../../../reference/source_zh_cn/arkui-cj/cj-button-picker-rating.md)、[Slider](../../../reference/source_zh_cn/arkui-cj/cj-button-picker-slider.md)、[Toggle](../../../reference/source_zh_cn/arkui-cj/cj-button-picker-toggle.md)、[Badge](../../../reference/source_zh_cn/arkui-cj/cj-information-display-badge.md)、[bindMenu](../../../reference/source_zh_cn/arkui-cj/cj-universal-attribute-menu.md#funcbindMenu)、[bindContextMenu](../../../reference/source_zh_cn/arkui-cj/cj-universal-attribute-menu.md#funcbindContextMenu)、[TextInput](../../../reference/source_zh_cn/arkui-cj/cj-text-input-textinput.md)、[TextArea](../../../reference/source_zh_cn/arkui-cj/cj-text-input-textarea.md)、[Search](../../../reference/source_zh_cn/arkui-cj/cj-text-input-search.md)、[Stack](../../../reference/source_zh_cn/arkui-cj/cj-row-column-stack-stack.md)、[GridRow](../../../reference/source_zh_cn/arkui-cj/cj-grid-layout-gridrow.md)、[Text](../../../reference/source_zh_cn/arkui-cj/cj-text-input-text.md)、[Select](../../../reference/source_zh_cn/arkui-cj/cj-button-picker-select.md)、[Row](../../../reference/source_zh_cn/arkui-cj/cj-row-column-stack-row.md)、[Column](../../../reference/source_zh_cn/arkui-cj/cj-row-column-stack-column.md)、[Flex](../../../reference/source_zh_cn/arkui-cj/cj-row-column-stack-flex.md)、[RelativeContainer](../../../reference/source_zh_cn/arkui-cj/cj-row-column-stack-relativecontainer.md)、[ListItemGroup](../../../reference/source_zh_cn/arkui-cj/cj-scroll-swipe-listgroup.md) |
| 高级组件 | [Popup](./cj-popup-and-menu-components-popup.md)、[Dialog](./cj-dialog-base-overview.md) |
| 通用属性 | [position](../../../reference/source_zh_cn/arkui-cj/cj-common-types.md#Position)、[markAnchor](../../../reference/source_zh_cn/arkui-cj/cj-universal-attribute-location.md#funcmarkAnchor)、[offset](../../../Dev_Guide/source_zh_cn/arkui-cj/cj-layout-development-grid-layout.md#offset)、[alignRules](../../../reference/source_zh_cn/arkui-cj/cj-universal-attribute-location.md#funcalignRules)、[borderWidth](../../../reference/source_zh_cn/arkui-cj/cj-information-display-progress.md#varborderWidth)、[borderColor](../../../reference/source_zh_cn/arkui-cj/cj-information-display-progress.md#varborderColor)、[padding](../../../reference/source_zh_cn/arkui-cj/cj-universal-attribute-size.md#fun-cpadding)、[margin](../../../reference/source_zh_cn/arkui-cj/cj-universal-attribute-size.md#func-marginlength) |
| 接口 | [promptAction.showDialog](./cj-fixes-style-dialog.md#对话框-showdialog)|

但如下三种场景还需要进行适配：

1. 界面布局、边框设置：关于方向类的通用属性，如果需要支持镜像能力，使用泛化的方向指示词 start/end入参类型替换 left/right、x/y等绝对方向指示词的入参类型，来表示自适应镜像能力。

2. Canvas组件只有限支持文本绘制的镜像能力。

3. XComponent组件不支持组件镜像能力。
