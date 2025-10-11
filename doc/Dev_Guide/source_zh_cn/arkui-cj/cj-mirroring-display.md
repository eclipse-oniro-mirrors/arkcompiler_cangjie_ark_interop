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
| 基础组件 | [Swiper](../../../API_Reference/source_zh_cn/arkui-cj/cj-scroll-swipe-swiper.md)、[Tabs](../../../API_Reference/source_zh_cn/arkui-cj/cj-navigation-switching-tabs.md)、[List](../../../API_Reference/source_zh_cn/arkui-cj/cj-scroll-swipe-list.md)、[Progress](../../../API_Reference/source_zh_cn/arkui-cj/cj-information-display-progress.md)、[CalendarPickerDialog](../../../Dev_Guide/source_zh_cn/arkui-cj/cj-fixes-style-dialog.md#日历选择器弹窗)、[TextPicker](../../../API_Reference/source_zh_cn/arkui-cj/cj-button-picker-textpicker.md)、[DatePicker](../../../API_Reference/source_zh_cn/arkui-cj/cj-button-picker-datepicker.md)、[Grid](../../../API_Reference/source_zh_cn/arkui-cj/cj-scroll-swipe-grid.md)、[Scroll](../../../API_Reference/source_zh_cn/arkui-cj/cj-scroll-swipe-scroll.md)、[ScrollBar](../../../API_Reference/source_zh_cn/arkui-cj/cj-scroll-swipe-scrollbar.md)、[AlphabetIndexer](../../../API_Reference/source_zh_cn/arkui-cj/cj-information-display-alphabetindexer.md)、[Stepper](../../../API_Reference/source_zh_cn/arkui-cj/cj-navigation-switching-stepper.md)、[SideBarContainer](../../../API_Reference/source_zh_cn/arkui-cj/cj-grid-layout-sidebar.md)、[Navigation](../../../API_Reference/source_zh_cn/arkui-cj/cj-navigation-switching-navigation.md)、[Rating](../../../API_Reference/source_zh_cn/arkui-cj/cj-button-picker-rating.md)、[Slider](../../../API_Reference/source_zh_cn/arkui-cj/cj-button-picker-slider.md)、[Toggle](../../../API_Reference/source_zh_cn/arkui-cj/cj-button-picker-toggle.md)、[Badge](../../../API_Reference/source_zh_cn/arkui-cj/cj-information-display-badge.md)、[bindMenu](../../../API_Reference/source_zh_cn/arkui-cj/cj-universal-attribute-menu.md#funcbindMenu)、[bindContextMenu](../../../API_Reference/source_zh_cn/arkui-cj/cj-universal-attribute-menu.md#funcbindContextMenu)、[TextInput](../../../API_Reference/source_zh_cn/arkui-cj/cj-text-input-textinput.md)、[TextArea](../../../API_Reference/source_zh_cn/arkui-cj/cj-text-input-textarea.md)、[Search](../../../API_Reference/source_zh_cn/arkui-cj/cj-text-input-search.md)、[Stack](../../../API_Reference/source_zh_cn/arkui-cj/cj-row-column-stack-stack.md)、[GridRow](../../../API_Reference/source_zh_cn/arkui-cj/cj-grid-layout-gridrow.md)、[Text](../../../API_Reference/source_zh_cn/arkui-cj/cj-text-input-text.md)、[Select](../../../API_Reference/source_zh_cn/arkui-cj/cj-button-picker-select.md)、[Row](../../../API_Reference/source_zh_cn/arkui-cj/cj-row-column-stack-row.md)、[Column](../../../API_Reference/source_zh_cn/arkui-cj/cj-row-column-stack-column.md)、[Flex](../../../API_Reference/source_zh_cn/arkui-cj/cj-row-column-stack-flex.md)、[RelativeContainer](../../../API_Reference/source_zh_cn/arkui-cj/cj-row-column-stack-relativecontainer.md)、[ListItemGroup](../../../API_Reference/source_zh_cn/arkui-cj/cj-scroll-swipe-listgroup.md) |
| 高级组件 | [Popup](./cj-popup-and-menu-components-popup.md)、[Dialog](./cj-dialog-base-overview.md) |
| 通用属性 | [position](../../../API_Reference/source_zh_cn/arkui-cj/cj-common-types.md#Position)、[markAnchor](../../../API_Reference/source_zh_cn/arkui-cj/cj-universal-attribute-location.md#funcmarkAnchor)、[offset](../../../Dev_Guide/source_zh_cn/arkui-cj/cj-layout-development-grid-layout.md#offset)、[alignRules](../../../API_Reference/source_zh_cn/arkui-cj/cj-universal-attribute-location.md#funcalignRules)、[borderWidth](../../../API_Reference/source_zh_cn/arkui-cj/cj-information-display-progress.md#varborderWidth)、[borderColor](../../../API_Reference/source_zh_cn/arkui-cj/cj-information-display-progress.md#varborderColor)、[padding](../../../API_Reference/source_zh_cn/arkui-cj/cj-universal-attribute-size.md#fun-cpadding)、[margin](../../../API_Reference/source_zh_cn/arkui-cj/cj-universal-attribute-size.md#func-marginlength) |
| 接口 | [promptAction.showDialog](./cj-fixes-style-dialog.md#对话框-showdialog)|

但如下三种场景还需要进行适配：

1. 界面布局、边框设置：关于方向类的通用属性，如果需要支持镜像能力，使用泛化的方向指示词 start/end入参类型替换 left/right、x/y等绝对方向指示词的入参类型，来表示自适应镜像能力。

2. Canvas组件只有限支持文本绘制的镜像能力。

3. XComponent组件不支持组件镜像能力。
