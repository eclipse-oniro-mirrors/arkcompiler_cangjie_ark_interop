# 模态转场

模态转场是新的界面覆盖在旧的界面上，旧的界面不消失的一种转场方式。

**表1** 模态转场接口

| 接口                                       | 说明                | 使用场景                                     |
|:---------------------------------------- |:----------------- |:---------------------------------------- |
| [bindContentCover](../../../API_Reference/source_zh_cn/arkui-cj/cj-universal-attribute-bindcontentcover.md) | 弹出全屏的模态组件。        | 用于自定义全屏的模态展示界面，结合转场动画和共享元素动画可实现复杂转场动画效果，如缩略图片点击后查看大图。 |
| [bindSheet](../../../API_Reference/source_zh_cn/arkui-cj/cj-universal-attribute-sheettransition.md#func-bindsheetbool----unit-sheetoptions) | 弹出半模态组件。          | 用于半模态展示界面，如分享框。                          |
| [bindMenu](../../../API_Reference/source_zh_cn/arkui-cj/cj-universal-attribute-menu.md#func-bindmenu---unit) | 弹出菜单，点击组件后弹出。     | 需要Menu菜单的场景，如一般应用的“+”号键。                 |
| [bindContextMenu](../../../API_Reference/source_zh_cn/arkui-cj/cj-universal-attribute-menu.md#func-bindcontextmenu---unit-responsetype) | 弹出菜单，长按或者右键点击后弹出。 | 长按浮起效果，一般结合拖拽框架使用，如桌面图标长按浮起。             |
| [bindPopup](../../../API_Reference/source_zh_cn/arkui-cj/cj-universal-attribute-popup.md#func-bindpopupbool-custompopupoptions) | 弹出Popup弹框。        | Popup弹框场景，如点击后对某个组件进行临时说明。               |
| if                                       | 通过if新增或删除组件。      | 用来在某个状态下临时显示一个界面，这种方式的返回导航需要由开发者监听接口实现。  |