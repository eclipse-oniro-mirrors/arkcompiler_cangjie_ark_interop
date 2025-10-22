# ohos.arkui.component.gauge

## class Gauge

```cangjie
public class Gauge <: ContainerBase {

    public init(value!: Float64, min!: Float64 = 0.0, max!: Float64 = 100.0, child!: () -> Unit = { => })
}
```

**Description:** A data gauge chart component that displays data as a circular dial.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parent Type:**

- [ContainerBase](./cj-ui-framework.md#class-containerbase)

### init(Float64, Float64, Float64, () -> Unit)

```cangjie

public init(value!: Float64, min!: Float64 = 0.0, max!: Float64 = 100.0, child!: () -> Unit = { => })
```

**Description:** Creates a data gauge chart component.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Name | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| value | Float64 | Yes | - | **Named parameter.** The current data value of the gauge, indicating the pointer position. Used to preset the initial value when creating the component.<br>**Note:**<br>If value is outside the min and max range, min will be used as the default value. |
| min | Float64 | No | 0.0 | **Named parameter.** The minimum value of the current data segment. |
| max | Float64 | No | 100.0 | **Named parameter.** The maximum value of the current data segment.<br>**Note:**<br>If max is less than min, the default values 0.0 and 100.0 will be used.<br>Negative values are supported for both max and min. |
| child | ()->Unit | No | { => } | **Named parameter.** Declares the child components of the current component. |

### func colors(Array\<(ResourceColor,Float32)>)

```cangjie

public func colors(value: Array<(ResourceColor, Int32)>): This
```

**Description:** Sets the colors of the gauge.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Name | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| value | Array\<([ResourceColor](../BasicServicesKit/cj-apis-base.md#interface-resourcecolor), Int32)> | Yes | - | The colors of the gauge, supporting segmented color settings. |

### func colors(Array\<(LinearGradient, Int32)>)

```cangjie

public func colors(value: Array<(LinearGradient, Int32)>): This
```

**Description:** Sets the segmented gradient color groups for the gauge.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Name | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| value | Array\<([LinearGradient](cj-information-display-datapanel.md),Int32)> | Yes | - | The gradient colors of the gauge, supporting segmented color settings (up to 9 groups). LinearGradient type is defined in the datapanel component, and Int32 represents the width range of the color segment. |

### func colors(ResourceColor)

```cangjie

public func colors(value: ResourceColor): This
```

**Description:** Sets the color of the gauge.

Starting from API version 11, this interface follows these rules:

- If the parameter type is ResourceColor, the ring type is a single-color ring.
- If the parameter type is LinearGradient, the ring type is a gradient ring.
- If the parameter type is an array, the ring type is a segmented gradient ring. The first parameter is the color value (if set to a non-color type, it defaults to "0xFFE84026"). The second parameter is the weight of the color segment (if set to a negative or non-numeric value, the weight defaults to 0).

The segmented gradient ring supports up to 9 segments. Any additional segments will not be displayed.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Name | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| value | [ResourceColor](../BasicServicesKit/cj-apis-base.md#interface-resourcecolor) | Yes | - | The color of the gauge, supporting segmented color settings. |

API version 9 default: Color.Black

API version 11 default:

If no color is passed or the array is empty (unable to determine the ring type and color), the ring color defaults to a gradient of "0xFF64BB5C", "0xFFF7CE00", and "0xFFE84026".

If an invalid color value is passed, the color defaults to "0xFFE84026".

If the weight of a color segment is 0, that color will not be displayed. If all color weights are 0, the ring will not be displayed. |

### func colors(LinearGradient)

```cangjie

public func colors(value: LinearGradient): This
```

**Description:** Sets the segmented gradient color groups for the gauge.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Name | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| value | [LinearGradient](./cj-information-display-datapanel.md#class-lineargradient) | Yes | - | The gradient colors of the gauge, supporting segmented color settings (up to 9 groups). |

### func description(() -> Unit)

```cangjie

public func description(builder: () -> Unit): This
```

**Description:** Sets the description content for the gauge.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Name | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| builder | ()->Unit | Yes | - | The description content, customized by the developer in @Builder. Text is recommended. |

### func endAngle(Float64)

```cangjie

public func endAngle(angle: Float64): This
```

**Description:** Sets the end angle position.

> **Note:**
>
> If the difference between the start and end angles is too small, abnormal rendering may occur. Ensure reasonable start and end angle positions.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Name | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| angle | Float64 | Yes | - | The end angle position, where 0 degrees is at the 12 o'clock position, and positive angles are measured clockwise.<br>Default: 360.0. |

### func indicator(ResourceStr, Length)

```cangjie

public func indicator(icon!: ResourceStr = "default", space!: Length = 8.0.vp): This
```

**Description:** Sets the pointer style.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Name | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| icon | [ResourceStr](../BasicServicesKit/cj-apis-base.md#interface-resourcestr) | No | "default" | **Named parameter.** The pointer style: "default" for a triangular arrow, "null" for no pointer. |
| space | [Length](../BasicServicesKit/cj-apis-base.md#interface-length) | No | 8.0.vp | **Named parameter.** The spacing between the pointer and the outer edge of the ring (percentage not supported).<br>Unit: vp. |

### func startAngle(Float64)

```cangjie

public func startAngle(angle: Float64): This
```

**Description:** Sets the start angle position for the gauge.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Name | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| angle | Float64 | Yes | - | The start angle position, where 0 degrees is at the 12 o'clock position, and positive angles are measured clockwise. |

### func strokeWidth(Length)

```cangjie

public func strokeWidth(length: Length): This
```

**Description:** Sets the thickness of the circular gauge ring.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Name | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| length | [Length](../BasicServicesKit/cj-apis-base.md#interface-length) | Yes | - | The thickness of the circular gauge ring.<br>Default: 4.vp.<br>Unit: vp.<br>**Note:**<br>If set to a negative value, the default value will be used.<br>The maximum thickness is the radius of the ring. Values exceeding this will be capped.<br>Percentage values are not supported. |

### func trackShadow(Float64, Float64, Float64)

```cangjie

public func trackShadow(radius!: Float64 = 20.0, offsetX!: Float64 = 5.0, offsetY!: Float64 = 5.0): This
```

**Description:** Sets the shadow style.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Name | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| radius | Float64 | No | 20.0 | **Named parameter.** The blur radius of the shadow.<br>Unit: vp. |
| offsetX | Float64 | No | 5.0 | **Named parameter.** The X-axis offset. |
| offsetY | Float64 | No | 5.0 | **Named parameter.** The Y-axis offset. |

### func value(Float64)

```cangjie

public func value(value: Float64): This
```

**Description:** Sets the data value of the gauge.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Name | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| value | Float64 | Yes | - | The data value of the gauge, used to dynamically update the gauge's value.<br>Default: 0.0. |