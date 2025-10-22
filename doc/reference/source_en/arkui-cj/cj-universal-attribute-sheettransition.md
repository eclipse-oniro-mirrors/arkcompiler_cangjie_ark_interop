# Semi-Modal Transition

The `bindSheet` property is used to bind a semi-modal page to a component. When the component is inserted, the size of the semi-modal can be determined by setting a custom or default built-in height.

> **Note:**
>
> Routing jumps are not supported.

## Import Module

```cangjie
import kit.ArkUI.*
```

## func bindSheet(Bool, CustomBuilder, SheetOptions)

```cangjie
public func bindSheet(isShow: Bool, builder: CustomBuilder, options!: SheetOptions = SheetOptions()): This
```

**Function:** Binds a bottom pop-up panel.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| isShow | Bool | Yes | - | Whether to display. |
| builder | [CustomBuilder](./cj-common-types.md#type-custombuilder) | Yes | - | Custom builder. |
| options | [SheetOptions](#class-sheetoptions) | No | SheetOptions() | Bottom panel options. |

## func !=(ScrollSizeMode)

```cangjie
public operator func !=(other: ScrollSizeMode): Bool
```

**Function:** Determines whether two enumeration values are not equal.

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| other | [ScrollSizeMode](#enum-scrollsizemode) | Yes | - | Another enumeration value. |

**Return Value:**

| Type | Description |
|:----|:----|
| Bool | Returns `true` if the two enumeration values are not equal, otherwise returns `false`. |

## func ==(ScrollSizeMode)

```cangjie
public operator func ==(other: ScrollSizeMode): Bool
```

**Function:** Determines whether two enumeration values are equal.

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| other | [ScrollSizeMode](#enum-scrollsizemode) | Yes | - | Another enumeration value. |

**Return Value:**

| Type | Description |
|:----|:----|
| Bool | Returns `true` if the two enumeration values are equal, otherwise returns `false`. |

## func !=(SheetMode)

```cangjie
public operator func !=(other: SheetMode): Bool
```

**Function:** Determines whether two enumeration values are not equal.

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| other | [SheetMode](#enum-sheetmode) | Yes | - | Another enumeration value. |

**Return Value:**

| Type | Description |
|:----|:----|
| Bool | Returns `true` if the two enumeration values are not equal, otherwise returns `false`. |

## func ==(SheetMode)

```cangjie
public operator func ==(other: SheetMode): Bool
```

**Function:** Determines whether two enumeration values are equal.

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| other | [SheetMode](#enum-sheetmode) | Yes | - | Another enumeration value. |

**Return Value:**

| Type | Description |
|:----|:----|
| Bool | Returns `true` if the two enumeration values are equal, otherwise returns `false`. |

## func !=(SheetSize)

```cangjie
public operator func !=(other: SheetSize): Bool
```

**Function:** Determines whether two enumeration values are not equal.

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| other | [SheetSize](#enum-sheetsize) | Yes | - | Another enumeration value. |

**Return Value:**

| Type | Description |
|:----|:----|
| Bool | Returns `true` if the two enumeration values are not equal, otherwise returns `false`. |

## func ==(SheetSize)

```cangjie
public operator func ==(other: SheetSize): Bool
```

**Function:** Determines whether two enumeration values are equal.

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| other | [SheetSize](#enum-sheetsize) | Yes | - | Another enumeration value. |

**Return Value:**

| Type | Description |
|:----|:----|
| Bool | Returns `true` if the two enumeration values are equal, otherwise returns `false`. |

## func !=(SheetType)

```cangjie
public operator func !=(other: SheetType): Bool
```

**Function:** Determines whether two enumeration values are not equal.

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| other | [SheetType](#enum-sheettype) | Yes | - | Another enumeration value. |

**Return Value:**

| Type | Description |
|:----|:----|
| Bool | Returns `true` if the two enumeration values are not equal, otherwise returns `false`. |

## func ==(SheetType)

```cangjie
public operator func ==(other: SheetType): Bool
```

**Function:** Determines whether two enumeration values are equal.

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| other | [SheetType](#enum-sheettype) | Yes | - | Another enumeration value. |

**Return Value:**

| Type | Description |
|:----|:----|
| Bool | Returns `true` if the two enumeration values are equal, otherwise returns `false`. |

## Basic Type Definitions

### class BindOptions

```cangjie
public open class BindOptions {
    public init(backgroundColor!: ?ResourceColor = Option.None, onAppear!: ?() -> Unit = Option.None,
        onDisappear!: ?() -> Unit = Option.None, onWillAppear!: ?() -> Unit = Option.None,
        onWillDisappear!: ?() -> Unit = Option.None)
}
```

**Function:** Configures optional properties for semi-modal pages.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### init(?ResourceColor, ?() -> Unit, ?() -> Unit, ?() -> Unit, ?() -> Unit)

```cangjie
public init(backgroundColor!: ?ResourceColor = Option.None, onAppear!: ?() -> Unit = Option.None,
    onDisappear!: ?() -> Unit = Option.None, onWillAppear!: ?() -> Unit = Option.None,
    onWillDisappear!: ?() -> Unit = Option.None)
```

**Function:** Constructor for configuring optional properties of semi-modal pages.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| backgroundColor | ?[ResourceColor](cj-common-types.md#interface-resourcecolor) | No | Option.None | **Named parameter.** Background color of the semi-modal page, default is white. |
| onAppear | ?()->Unit | No | Option.None | **Named parameter.** Callback function when the semi-modal page appears (after animation ends). |
| onDisappear | ?()->Unit | No | Option.None | **Named parameter.** Callback function when the semi-modal page disappears (after animation ends). |
| onWillAppear | ?()->Unit | No | Option.None | **Named parameter.** Callback function when the semi-modal page is about to appear (before animation starts). |
| onWillDisappear | ?()->Unit | No | Option.None | **Named parameter.** Callback function when the semi-modal page is about to disappear (before animation starts).<br>**Note:** Modifying state variables in the `onWillDisappear` function is not allowed, as it may cause unstable component behavior. |

### class DismissSheetAction

```cangjie
public class DismissSheetAction {
    public var reason: DismissReason
}
```

**Function:** Callback function type for closing semi-modal pages.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var reason

```cangjie
public var reason: DismissReason
```

**Function:** Reason for closing the semi-modal page.

**Type:** [DismissReason](cj-dialog-actionsheet.md#enum-dismissreason)

**Read/Write:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### func dismiss()

```cangjie
public func dismiss(): Unit
```

**Function:** Callback function for closing the semi-modal page. Developers should call this when exiting the page.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### class SheetDismiss

```cangjie
public class SheetDismiss {}
```

**Function:** Controls the type of semi-modal closure.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### func dismiss()

```cangjie
public func dismiss(): Unit
```

**Function:** Callback function for closing the semi-modal panel. Developers should call this when exiting, otherwise no action is needed.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### class SheetOptions

```cangjie
public class SheetOptions <: BindOptions {
    public init(
        backgroundColor!: Option<ResourceColor> = Color.White,
        onAppear!: Option<() -> Unit> = Option.None,
        onDisappear!: Option<() -> Unit> = Option.None,
        onWillAppear!: Option<() -> Unit> = Option.None,
        onWillDisappear!: Option<() -> Unit> = Option.None,
        height!: Option<SheetSize> = Option.None,
        detents!: Option<Array<SheetSize>> = Option.None,
        preferType!: Option<SheetType> = Option.None,
        showClose!: Option<Bool> = Option.None,
        dragBar!: Option<Bool> = Option.None,
        blurStyle!: Option<BlurStyle> = Option.None,
        maskColor!: Option<Color> = Option.None,
        title!: Option<() -> Unit> = Option.None,
        enableOutsideInteractive!: Option<Bool> = Option.None,
        shouldDismiss!: Option<(SheetDismiss) -> Unit> = Option.None,
        onWillDismiss!: Option<(DismissSheetAction) -> Unit> = Option.None,
        onWillSpringBackWhenDismiss!: Option<(SpringBackAction) -> Unit> = Option.None,
        onHeightDidChange!: Option<(Float32) -> Unit> = Option.None,
        onDetentsDidChange!: Option<(Float32) -> Unit> = Option.None,
        onWidthDidChange!: Option<(Float32) -> Unit> = Option.None,
        onTypeDidChange!: Option<(Float32) -> Unit> = Option.None,
        borderWidth!: Option<Length> = 0.vp,
        borderColor!: Option<Color> = Color.Black,
        borderStyle!: Option<EdgeStyles> = EdgeStyles(),
        width!: Option<Length> = Option.None,
        shadow!: Option<ShadowOptions> = Option.None,
        mode!: Option<SheetMode> = SheetMode.Overlay,
        scrollSizeMode!: Option<ScrollSizeMode> = ScrollSizeMode.FollowDetent
    )
}
```

**Function:** Configures optional properties for semi-modal pages, inherits from [BindOptions](#class-bindoptions).

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parent Type:**

- [BindOptions](#class-bindoptions)

#### init(Option\<ResourceColor>, Option\<() -> Unit>, Option\<() -> Unit>, Option\<() -> Unit>, Option\<() -> Unit>, Option\<SheetSize>, Option\<Array\<SheetSize>>, Option\<SheetType>, Option\<Bool>, Option\<Bool>, Option\<BlurStyle>, Option\<Color>, Option\<() -> Unit>, Option\<Bool>, Option\<(SheetDismiss) -> Unit>, Option\<(DismissSheetAction) -> Unit>, Option\<(SpringBackAction) -> Unit>, Option\<(Float32) -> Unit>, Option\<(Float32) -> Unit>, Option\<(Float32) -> Unit>, Option\<(Float32) -> Unit>, Option\<Length>, Option\<Color>, Option\<EdgeStyles>, Option\<Length>, Option\<ShadowOptions>, Option\<SheetMode>, Option\<ScrollSizeMode>)

```cangjie
public init(
    backgroundColor!: Option<ResourceColor> = Color.White,
    onAppear!: Option<() -> Unit> = Option.None,
    onDisappear!: Option<() -> Unit> = Option.None,
    onWillAppear!: Option<() -> Unit> = Option.None,
    onWillDisappear!: Option<() -> Unit> = Option.None,
    height!: Option<SheetSize> = Option.None,
    detents!: Option<Array<SheetSize>> = Option.None,
    preferType!: Option<SheetType> = Option.None,
    showClose!: Option<Bool> = Option.None,
    dragBar!: Option<Bool> = Option.None,
    blurStyle!: Option<BlurStyle> = Option.None,
    maskColor!: Option<Color> = Option.None,
    title!: Option<() -> Unit> = Option.None,
    enableOutsideInteractive!: Option<Bool> = Option.None,
    shouldDismiss!: Option<(SheetDismiss) -> Unit> = Option.None,
    onWillDismiss!: Option<(DismissSheetAction) -> Unit> = Option.None,
    onWillSpringBackWhenDismiss!: Option<(SpringBackAction) -> Unit> = Option.None,
    onHeightDidChange!: Option<(Float32) -> Unit> = Option.None,
    onDetentsDidChange!: Option<(Float32) -> Unit> = Option.None,
    onWidthDidChange!: Option<(Float32) -> Unit> = Option.None,
    onTypeDidChange!: Option<(Float32) -> Unit> = Option.None,
    borderWidth!: Option<Length> = 0.vp,
    borderColor!: Option<Color> = Color.Black,
    borderStyle!: Option<EdgeStyles> = EdgeStyles(),
    width!: Option<Length> = Option.None,
    shadow!: Option<ShadowOptions> = Option.None,
    mode!: Option<SheetMode> = SheetMode.Overlay,
    scrollSizeMode!: Option<ScrollSizeMode> = ScrollSizeMode.FollowDetent
)
```

**Function:** Constructor for configuring optional properties of semi-modal pages.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| backgroundColor | Option<ResourceColor> | No | Color.White | **Named parameter.** Background color of the semi-modal page, default is white. |
| onAppear | Option<() -> Unit> | No | Option.None | **Named parameter.** Callback function when the semi-modal page appears (after animation ends). |
| onDisappear | Option<() -> Unit> | No | Option.None | **Named parameter.** Callback function when the semi-modal page disappears (after animation ends). |
| onWillAppear | Option<() -> Unit> | No | Option.None | **Named parameter.** Callback function when the semi-modal page is about to appear (before animation starts). |
| onWillDisappear | Option<() -> Unit> | No | Option.None | **Named parameter.** Callback function when the semi-modal page is about to disappear (before animation starts).<br>**Note:**<br>Modifying state variables in the `onWillDisappear` function is not allowed, as it may cause unstable component behavior. |
| height | Option<SheetSize> | No | Option.None | **Named parameter.** Height of the semi-modal.<br>**Note:**<br>For bottom pop-ups in portrait mode, this property is invalid when `detents` is set.<br>For bottom pop-ups in portrait mode, the maximum height is 8vp from the signal bar.<br>For bottom pop-ups in landscape mode, this property is invalid, and the height is 8vp from the top of the screen.<br>For center pop-ups and follow-hand pop-ups, setting the type to `SheetSize.LARGE` and `SheetSize.MEDIUM` is invalid, and the default height is 560vp. The minimum height for center and follow-hand pop-ups is 320vp, and the maximum height is 90% of the short side of the window. If the height set using `Length` or the adaptive height using `SheetSize.FIT_CONTENT` exceeds the maximum height, the maximum height is displayed; if it is less than the minimum height, the minimum height is displayed. |
| detents | Option<Array<SheetSize>> | No | Option.None | **Named parameter.** Height switching levels for the semi-modal page.<br>**Note:**<br>Effective for bottom pop-ups in portrait mode, with the first height in the tuple as the initial height.<br>The panel can switch levels by following hand movements. Whether it slides to the target level after releasing depends on two conditions: speed and distance. If the speed exceeds the threshold, it slides to the target level in the direction of the hand movement; if the speed is below the threshold, the distance condition is introduced. If the displacement distance > 1/2 of the current position to the target position, it slides to the target level in the direction of the hand movement; otherwise, it returns to the current level. Speed threshold: 1000, distance threshold: 50%. |
| preferType | Option<SheetType> | No | Option.None | **Named parameter.** Style of the semi-modal page.<br>**Note:**<br>`preferType` cannot be set to `SheetType.BOTTOM`. |
| showClose | Option<Bool> | No | Option.None | **Named parameter.** Whether to display the close icon, default is to show. When using the close icon to close the semi### class SpringBackAction

```cangjie
public class SpringBackAction {}
```

**Function:** Controls the rebound type before semi-modal closure.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### func springBack()

```cangjie
public func springBack(): Unit
```

**Function:** Controls the rebound function before semi-modal page closure. Developers should call this when semi-modal rebound is required.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### enum ScrollSizeMode

```cangjie
public enum ScrollSizeMode <: Equatable<ScrollSizeMode> {
    | FollowDetent
    | Continuous
    | ...
}
```

**Function:** Sets the refresh timing of the content area during semi-modal panel sliding.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parent Type:**

- Equatable\<ScrollSizeMode>

#### Continuous

```cangjie
Continuous
```

**Function:** Sets the semi-modal panel to continuously update the content display area during sliding.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### FollowDetent

```cangjie
FollowDetent
```

**Function:** Sets the semi-modal panel to update the content display area after sliding ends.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### enum SheetMode

```cangjie
public enum SheetMode <: Equatable<SheetMode> {
    | Overlay
    | Embedded
    | ...
}
```

**Function:** Sets the display hierarchy of semi-modal pages.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parent Type:**

- Equatable\<SheetMode>

#### Embedded

```cangjie
Embedded
```

**Function:** Sets the semi-modal panel to display at the top level within the current page.

> **Note:**
>
> Currently, it only supports mounting on Page or NavDestination nodes. If NavDestination exists, it will be prioritized for mounting. It only supports top-level display within these two types of pages.<br>In this mode, newly launched pages can overlay the semi-modal dialog, and the semi-modal panel remains after page return without content loss.<br>In this mode, ensure the target page node (e.g., Page node) is mounted before invoking the semi-modal; otherwise, the semi-modal cannot be mounted to the corresponding page node.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### Overlay

```cangjie
Overlay
```

**Function:** Sets the semi-modal panel to display at the top level within the current UIContext, above all pages. It shares the same hierarchy as popup components.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### enum SheetSize

```cangjie
public enum SheetSize <: Equatable<SheetSize> {
    | Medium
    | Large
    | FitContent
    | ...
}
```

**Function:** Sets the height switching levels for semi-modal pages.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parent Type:**

- Equatable\<SheetSize>

#### FitContent

```cangjie
FitContent
```

**Function:** Specifies the semi-modal height to adapt to content height.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### Large

```cangjie
Large
```

**Function:** Specifies the semi-modal height to be nearly the screen height.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### Medium

```cangjie
Medium
```

**Function:** Specifies the semi-modal height to be half of the screen height.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### enum SheetType

```cangjie
public enum SheetType <: Equatable<SheetType> {
    | Bottom
    | Center
    | Popup
    | ...
}
```

**Function:** Sets the style of semi-modal dialogs.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parent Type:**

- Equatable\<SheetType>

#### Bottom

```cangjie
Bottom
```

**Function:** Bottom dialog.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### Center

```cangjie
Center
```

**Function:** Center dialog.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### Popup

```cangjie
Popup
```

**Function:** Follow-hand dialog. The follow-hand dialog panel does not support follow-hand sliding; sliding down the panel does not close it.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21