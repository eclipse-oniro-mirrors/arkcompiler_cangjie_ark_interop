# 模糊

动画效果可以丰富界面的细节，提升UI界面的真实感和品质感。例如，模糊和阴影效果可以让物体看起来更加立体，使得动画更加生动。ArkUI提供了丰富的效果接口，开发者可快速打造出精致、个性化的效果。本章中主要对常用的模糊、阴影和色彩效果等效果接口进行了介绍。

模糊可以用来体现界面空间的纵深感，区分前后元素的层级关系。

| 接口                                                         | 说明                                         |
| :------------------------------------------------------------ | :-------------------------------------------- |
| [backdropBlur](../../../API_Reference/source_zh_cn/arkui-cj/cj-universal-attribute-background.md#func-backdropblurfloat64) | 为当前组件添加背景模糊效果，入参为模糊半径。 |
| [blur](../../../API_Reference/source_zh_cn/arkui-cj/cj-universal-attribute-imageeffect.md#func-blurfloat64) | 为当前组件添加内容模糊效果，入参为模糊半径。 |
| [backgroundBlurStyle](../../../API_Reference/source_zh_cn/arkui-cj/cj-universal-attribute-background.md#func-backgroundblurstyleblurstyle-optionbackgroundblurstyleoptions) | 为当前组件添加背景模糊效果，入参为模糊样式。 |
| [foregroundBlurStyle](../../../API_Reference/source_zh_cn/arkui-cj/cj-universal-attribute-foregroundblurstyle.md#func-foregroundblurstyleforegroundblurstyle-optionforegroundblurstyleoptions) | 为当前组件添加内容模糊效果，入参为模糊样式。 |
| [motionBlur](../../../API_Reference/source_zh_cn/arkui-cj/cj-universal-attribute-motionblur.md#func-motionblurmotionbluroptions) | 为当前组件添加由缩放大小或位移变化引起的运动过程中的动态模糊效果，入参为模糊半径和锚点坐标。 |

> **说明：**
>
> 以上接口是实时模糊接口，会每帧进行实时渲染，性能负载较高。当模糊内容和模糊半径都不需要变化时，建议使用静态模糊接口blur。
