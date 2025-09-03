# Menu Control

Bind a popup menu to a component. The popup menu displays menu items in a vertical list format, which can be triggered via long press, click, or right-click.

> **Note:**
>
> - `bindMenu` and `bindContextMenu` cannot be used within `CustomBuilder` to pop up menus. For multi-level menus, use the [Menu](../../../Dev_Guide/source_zh_cn/arkui-cj/cj-popup-and-menu-components-menu.md##菜单控制（Menu）) component.
> - The text content of the popup menu does not support long-press selection.
> - If the component is a draggable node and `preview` is not specified when binding `bindContextMenu`, the menu popup will display a floating drag preview, and the menu options will not avoid the preview. Developers can set `preview` or configure the target node as non-draggable based on usage scenarios.
> - The menu supports long-press (500ms) to pop up submenus and follows finger movement during press state.<br> a. Only supported when using the [Menu](../../../Dev_Guide/source_zh_cn/arkui-cj/cj-popup-and-menu-components-menu.md##菜单控制（Menu）) component with subcomponents containing [MenuItem](../../../Dev_Guide/source_zh_cn/arkui-cj/cj-popup-and-menu-components-menu.md##菜单控制（Menu）) or [MenuItemGroup](../../../Dev_Guide/source_zh_cn/arkui-cj/cj-popup-and-menu-components-menu.md##菜单控制（Menu）).<br> b. Only supported when [MenuPreviewMode](./cj-common-types.md#enum-menupreviewmode) is set to `NONE`.

## Import Module

```cangjie
import kit.ArkUI.*
```

## func bindContextMenu(CustomBuilder, ResponseType, ContextMenuOptions)

```cangjie
public func bindContextMenu(content: CustomBuilder, responseType: ResponseType,
    options!: ContextMenuOptions = ContextMenuOptions()): This
```

**Function:** Binds a context menu.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| content | [CustomBuilder](#type-custombuilder) | Yes | - | Content builder. |
| responseType | [ResponseType](#) | Yes | - | Response type. |
| options | [ContextMenuOptions](#) | No | ContextMenuOptions() | Context menu options. |

## func bindMenu(Array\<MenuElement>)

```cangjie
public func bindMenu(content: Array<MenuElement>): This
```

**Function:** Binds a menu.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| content | Array\<[MenuElement](#)> | Yes | - | Array of menu elements. |

## func bindMenu(CustomBuilder)

```cangjie
public func bindMenu(content: CustomBuilder): This
```

**Function:** Binds a custom menu.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| content | [CustomBuilder](#type-custombuilder) | Yes | - | Content builder. |

## Basic Type Definitions

### class ContextMenuAnimationOptions

```cangjie
public class ContextMenuAnimationOptions {
    public var scale:?VArray<Float64, $2>= None
    public var transition:?TransitionEffect = None
    public var hoverScale:?VArray<Float64, $2>= None
    public init(scale!: ?VArray<Float64, $2> = None, transition!: ?TransitionEffect = None,
        hoverScale!: ?VArray<Float64, $2> = None)
}
```

**Function:** Controls the start and end scaling ratios (relative to the original preview image) for long-press preview display animations.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var hoverScale

```cangjie
public var hoverScale:?VArray<Float64, $2>= None
```

**Function:** Sets the start and end scaling ratios (relative to the original preview image) for the floating component screenshot animation in custom long-press scenarios, with a transition effect between the preview and the screenshot.

**Type:** ?VArray\<Float64,$2>

**Read/Write:** Read-Write

#### var scale

```cangjie
public var scale:?VArray<Float64, $2>= None
```

**Function:** The start and end scaling ratios relative to the original preview image.

**Type:** ?VArray\<Float64,$2>

**Read/Write:** Read-Write

#### var transition

```cangjie
public var transition:?TransitionEffect = None
```

**Function:** Sets the transition effect for menu display and exit.

**Type:** ?[TransitionEffect](<font color="yellow" face="bold">please add lnk</font>)

**Read/Write:** Read-Write

#### init(?VArray\<Float64,$2>, ?TransitionEffect, ?VArray\<Float64,$2>)

```cangjie
public init(scale!: ?VArray<Float64, $2> = None, transition!: ?TransitionEffect = None,
    hoverScale!: ?VArray<Float64, $2> = None)
```

**Function:** Creates a `ContextMenuAnimationOptions` object.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| scale | ?VArray\<Float64,$2> | No | None | **Named parameter.** The start and end scaling ratios relative to the original preview image.<br> **Note:** The scaling ratio should be set based on actual development scenarios. It is recommended to set a value smaller than the maximum width or layout constraints of the preview image. |
| transition | ?[TransitionEffect](<font color="yellow" face="bold">please add lnk</font>) | No | None | **Named parameter.** The transition effect for menu display and exit.<br> **Note:** During the exit animation, if the screen orientation changes, the menu will adjust. Submenus do not inherit custom animations. Submenus can be clicked during the popup process but not during the exit animation. For details, refer to the `TransitionEffect` object description. |
| hoverScale | ?VArray\<Float64,$2> | No | None | **Named parameter.** The start and end scaling ratios (relative to the original preview image) for the floating component screenshot animation in custom long-press scenarios, with a transition effect between the preview and the screenshot.<br> **Note:** If the scaling ratio is set to ≤ 0, it will not take effect.<br> Does not take effect when the `transition` interface is used.<br> When used with the `scale` interface, the start value of the `scale` interface will not take effect.<br> For optimal user experience, the final preview size should not be smaller than the original component screenshot size. The current preview animation dimensions are affected by the component screenshot and custom preview size. Ensure the display effect based on actual usage. |

### class ContextMenuOptions

```cangjie
public class ContextMenuOptions {
    public var offset: Position = Position(x: 0.0, y: 0.0)
    public var placement: Option<Placement>= Option.None
    public var enableArrow: Bool = false
    public var arrowOffset: Length = 0.vp
    public var preview:?CustomBuilder = Option.None
    public var previewAnimationOptions:?ContextMenuAnimationOptions = None
    public var onAppear:?() -> Unit = None
    public var onDisappear:?() -> Unit = None
    public var aboutToAppear:?() -> Unit = None
    public var aboutToDisappear:?() -> Unit = None
    public var backgroundColor: ResourceColor = Color.Transparent
    public var backgroundBlurStyle: BlurStyle = BlurStyle.ComponentUltraThick
    public var transition:?TransitionEffect = None
    public init(
        offset!: Position = Position(),
        placement!: Option<Placement> = Option.None,
        enableArrow!: Bool = false,
        arrowOffset!: Length = 0.vp,
        preview!: Option<() -> Unit> = Option.None,
        onAppear!: ?() -> Unit = None,
        onDisappear!: ?() -> Unit = None,
        aboutToAppear!: ?() -> Unit = None,
        aboutToDisappear!: ?() -> Unit = None,
        backgroundColor!: ResourceColor = Color.Transparent,
        backgroundBlurStyle!: BlurStyle = BlurStyle.ComponentUltraThick,
        transition!: ?TransitionEffect = None,
        borderRadius!: ?BorderRadiuses = None,
        layoutRegionMargin!: ?Margin = None
    )
}
```

**Function:** Configures parameters for popup menus.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var aboutToAppear

```cangjie
public var aboutToAppear:?() -> Unit = None
```

**Function:** Callback event before the menu display animation.

**Type:** ?()->Unit

**Read/Write:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var aboutToDisappear

```cangjie
public var aboutToDisappear:?() -> Unit = None
```

**Function:** Callback event before the menu exit animation.

**Type:** ?()->Unit

**Read/Write:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var arrowOffset

```cangjie
public var arrowOffset: Length = 0.vp
```

**Function:** The offset of the arrow relative to the menu. The offset must be valid and greater than 0 when converted to a specific value. Additionally, this value will not cause the arrow to exceed the safe distance around the menu.

**Type:** [Length](../apis/BasicServicesKit/cj-apis-base.md#interface-length)(cj-common-types.md#interface-length)

**Read/Write:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var backgroundBlurStyle

```cangjie
public var backgroundBlurStyle: BlurStyle = BlurStyle.ComponentUltraThick
```

**Function:** The blur material for the popup backdrop.

**Type:** [BlurStyle](<font color="yellow" face="bold">please add lnk</font>)

**Read/Write:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var backgroundColor

```cangjie
public var backgroundColor: ResourceColor = Color.Transparent
```

**Function:** The color of the popup backdrop.

**Type:** [ResourceColor](cj-common-types.md#interface-resourcecolor)

**Read/Write:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var enableArrow

```cangjie
public var enableArrow: Bool = false
```

**Function:** Whether to display the arrow. If the menu size or position is insufficient to place the arrow, it will not be displayed.

**Type:** Bool

**Read/Write:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var offset

```cangjie
public var offset: Position = Position(x: 0.0, y: 0.0)
```

**Function:** The offset of the popup menu position, which will not cause the menu to display outside the screen.

**Type:** [Position](cj-common-types.md#class-position)

**Read/Write:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var onAppear

```cangjie
public var onAppear:?() -> Unit = None
```

**Function:** Callback event when the menu pops up.

**Type:** ?()->Unit

**Read/Write:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var onDisappear

```cangjie
public var onDisappear:?() -> Unit = None
```

**Function:** Callback event when the menu disappears.

**Type:** ?()->Unit

**Read/Write:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var placement

```cangjie
public var placement: Option<Placement>= Option.None
```

**Function:** The preferred display position of the menu component. If the current position is insufficient, it will automatically adjust.

**Type:** [Option](#initposition-optionplacement-bool-length-option---unit----unit----unit----unit----unit-resourcecolor-blurstyle-transitioneffect-borderradiuses-margin)\<[Placement](cj-common-types.md#enum-placement)>

**Read/Write:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var preview

```cangjie
public var preview:?CustomBuilder = Option.None
```

**Function:** The preview content style for long-press floating menus or menus displayed via `bindContextMenu`, which is user-defined content.

**Type:** ?[CustomBuilder](<font color="yellow" face="bold">please add lnk</font>)

**Read/Write:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var previewAnimationOptions

```cangjie
public var previewAnimationOptions:?ContextMenuAnimationOptions = None
```

**Function:** Controls the start and end scaling ratios (relative to the original preview image) for long-press preview display animations.

**Type:** ?[ContextMenuAnimationOptions](#class-contextmenuanimationoptions)

**Read/Write:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var transition

```cangjie
public var transition:?TransitionEffect = None
```

**Function:** Sets the transition effect for menu display and exit.

**Type:** ?[TransitionEffect](<font color="yellow" face="bold">please add lnk</font>)

**Read/Write:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### init(Position, Option\<Placement>, Bool, Length, Option\<() -> Unit>, ?() -> Unit, ?() -> Unit, ?() -> Unit, ?() -> Unit, ResourceColor, BlurStyle, ?TransitionEffect, ?BorderRadiuses, ?Margin)

```cangjie
public init(
    offset!: Position = Position(),
    placement!: Option<Placement> = Option.None,
    enableArrow!: Bool = false,
    arrowOffset!: Length = 0.vp,
    preview!: Option<() -> Unit> = Option.None,
    onAppear!: ?() -> Unit = None,
    onDisappear!: ?() -> Unit = None,
    aboutToAppear!: ?() -> Unit = None,
    aboutToDisappear!: ?() -> Unit = None,
    backgroundColor!: ResourceColor = Color.Transparent,
    backgroundBlurStyle!: BlurStyle = BlurStyle.ComponentUltraThick,
    transition!: ?TransitionEffect = None,
    borderRadius!: ?BorderRadiuses = None,
    layoutRegionMargin!: ?Margin = None
)
```

**Function:** Creates a `ContextMenuOptions` object.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| offset | [Position](cj-common-types.md#class-position) | No | Position() | **Named parameter.** The offset of the popup menu position, which will not cause the menu to display outside the screen.<br> **Note:**<br> For menus popping up relative to the parent component area, the width or height of the area is automatically included in the offset based on the menu position property (`placement`).<br> When the menu appears above the parent component (`placement` set to `Placement.TopLeft`, `Placement.Top`, or `Placement.TopRight`), a positive `x` value shifts the menu right relative to the component, and a positive `y` value shifts it upward.<br> When the menu appears below the parent component (`placement` set to `Placement.BottomLeft`, `Placement.Bottom`, or `Placement.BottomRight`), a positive `x` value shifts the menu right, and a positive `y` value shifts it downward.<br> When the menu appears to the left of the parent component (`placement` set to `Placement.LeftTop`, `Placement.Left`, or `Placement.LeftBottom`), a positive `x` value shifts the menu left, and a positive `y` value shifts it downward.<br> When the menu appears to the right of the parent component (`placement` set to `Placement.RightTop`, `Placement.Right`, or `Placement.RightBottom`), a positive `x` value shifts the menu right, and a positive `y` value shifts it downward.<br> If the menu adjusts its display position (not matching the initial `placement` main direction), the offset value (`offset`) becomes invalid. |
| placement | [Option](#initposition-optionplacement-bool-length-option---unit----unit----unit----unit----unit-resourcecolor-blurstyle-transitioneffect-borderradiuses-margin)\<[Placement](cj-common-types.md#enum-placement)> | No | Option.None | **Named parameter.** The preferred display position of the menu component. If the current position is insufficient, it will automatically adjust.<br### class MenuElement

```cangjie
public class MenuElement {
    public init(value!: ResourceStr, action!: () -> Unit)
}
```

**Function:** Configures menu item icons and text.

#### init(ResourceStr, () -> Unit)

```cangjie
public init(value!: ResourceStr, action!: () -> Unit)
```

**Function:** Creates a MenuElement object.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| value | [ResourceStr](../apis/BasicServicesKit/cj-apis-base.md#interface-resourcestr) | Yes | - | Menu item text. |
| action | () -> Unit | Yes | - | Callback for the click event of the menu item. |