# ohos.display (Screen Properties)

Screen properties provide basic capabilities for managing display devices, including obtaining information about the default display device, retrieving information about all display devices, and monitoring plug-and-play behaviors of display devices.

## Import Module

```cangjie
import kit.ArkUI.*
```

## func getAllDisplays()

```cangjie
public func getAllDisplays(): Array<Display>
```

**Description:** Retrieves all current Display objects.

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Initial Release Version:** 21

**Return Value:**

| Type | Description |
| :---- | :---- |
| Array\<[Display](#class-display)> | Returns all current display objects. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed in the table below. For details, see [Screen Error Codes](./cj-errorcode-display.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 1400001 | Invalid display or screen. |
  | 1400003 | This display manager service works abnormally. |

**Example:**

```cangjie
import ohos.display.*
func getAllDisplaysExample() {
    try {
        let displayClass: Array<Display> = getAllDisplays()
        if (displayClass.size > 0) {
            println(displayClass[0].name)
        }
    } catch (exception: Exception) {
        Hilog.error(0, "AppLogCj", exception.toString())
    }
}
```

## func getCurrentFoldCreaseRegion()

```cangjie
public func getCurrentFoldCreaseRegion(): FoldCreaseRegion
```

**Description:** Retrieves the fold crease region in the current display mode.

**System Capability:** SystemCapability.Window.SessionManager

**Initial Release Version:** 21

**Return Value:**

| Type | Description |
| :---- | :---- |
| [FoldCreaseRegion](#class-foldcreaseregion) | FoldCreaseRegion object, returns the fold crease region of the device in the current display mode. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed in the table below. For details, see [Screen Error Codes](./cj-errorcode-display.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 1400003 | This display manager service works abnormally. |

**Example:**

```cangjie
import ohos.display.*
func getCurrentFoldCreaseRegionExample() {
    try {
        let region = getCurrentFoldCreaseRegion()
        println(region.displayId)
    } catch (exception: Exception) {
        Hilog.error(0, "AppLogCj", exception.toString())
    }
}
```

## func getDefaultDisplaySync()

```cangjie
public func getDefaultDisplaySync(): Display
```

**Description:** Retrieves the current default Display object.

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Initial Release Version:** 21

**Return Value:**

| Type | Description |
| :---- | :---- |
| [Display](#class-display) | Returns the default Display object. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed in the table below. For details, see [Screen Error Codes](./cj-errorcode-display.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 1400001 | Invalid display or screen. |
  | 1400003 | This display manager service works abnormally. |

**Example:**

```cangjie
import ohos.display.*
func getDefaultDisplaySyncExample() {
    try {
        let displayClass: Display = getDefaultDisplaySync()
        println(displayClass.name)
    } catch (exception: Exception) {
        Hilog.error(0, "AppLogCj", exception.toString())
    }
}
```

## func getFoldDisplayMode()

```cangjie
public func getFoldDisplayMode(): FoldDisplayMode
```

**Description:** Retrieves the display mode of a foldable device.

**System Capability:** SystemCapability.Window.SessionManager

**Initial Release Version:** 21

**Return Value:**

| Type | Description |
| :---- | :---- |
| [FoldDisplayMode](#enum-folddisplaymode) | FoldDisplayMode object, returns the current display mode of the foldable device. |

**Example:**

```cangjie
import ohos.display.*
func getFoldDisplayModeExample() {
    try {
        let mode = getFoldDisplayMode()
        match (mode) {
            case FoldDisplayMode.FOLD_DISPLAY_MODE_UNKNOWN => Hilog.info(0, "AppLogCj", "Unknown mode.")
            case FoldDisplayMode.FOLD_DISPLAY_MODE_FULL => Hilog.info(0, "AppLogCj", "Full mode.")
            case FoldDisplayMode.FOLD_DISPLAY_MODE_MAIN => Hilog.info(0, "AppLogCj", "Main mode.")
            case FoldDisplayMode.FOLD_DISPLAY_MODE_SUB => Hilog.info(0, "AppLogCj", "Sub mode.")
            case FoldDisplayMode.FOLD_DISPLAY_MODE_COORDINATION => Hilog.info(0, "AppLogCj", "Coordination mode.")
            case _ => throw Exception("Cannot get display mode.")
        }
    } catch (exception: Exception) {
        Hilog.error(0, "AppLogCj", exception.toString())
    }
}
```

## func getFoldStatus()

```cangjie
public func getFoldStatus(): FoldStatus
```

**Description:** Retrieves the current fold status of a foldable device.

**System Capability:** SystemCapability.Window.SessionManager

**Initial Release Version:** 21

**Return Value:**

| Type | Description |
| :---- | :---- |
| [FoldStatus](#enum-foldstatus) | FoldStatus object, returns the current fold status of the foldable device. |

**Example:**

```cangjie
import ohos.display.*
func getFoldStatusExample() {
    try {
        let status = getFoldStatus()
        match (status) {
            case FoldStatus.FOLD_STATUS_UNKNOWN => Hilog.info(0, "AppLogCj", "Unknown status.")
            case FoldStatus.FOLD_STATUS_EXPANDED => Hilog.info(0, "AppLogCj", "Expanded.")
            case FoldStatus.FOLD_STATUS_FOLDED => Hilog.info(0, "AppLogCj", "Folded.")
            case FoldStatus.FOLD_STATUS_HALF_FOLDED => Hilog.info(0, "AppLogCj", "Half folded.")
            case _ => throw Exception("Cannot get fold status.")
        }
    } catch (exception: Exception) {
        Hilog.error(0, "AppLogCj", exception.toString())
    }
}
```

## func isFoldable()

```cangjie
public func isFoldable(): Bool
```

**Description:** Checks whether the device is foldable.

**System Capability:** SystemCapability.Window.SessionManager

**Initial Release Version:** 21

**Return Value:**

| Type | Description |
| :---- | :---- |
| Bool | Bool object, returns whether the current device is foldable. `true` indicates foldable, `false` indicates non-foldable. |

**Example:**

```cangjie
import ohos.display.*
func isFoldableExample() {
    try {
        let displayClass = getDefaultDisplaySync()
        var ret: Bool = false
        try {
            ret = isFoldable()
        } catch (exception: Exception) {
            Hilog.error(0, "AppLogCj", exception.toString())
        }
        if (ret) {
            Hilog.info(0, "AppLogCj", "The device is foldable.")
        } else {
            Hilog.info(0, "AppLogCj", "The device is not foldable.")
        }
    } catch (exception: Exception) {
        Hilog.error(0, "AppLogCj", exception.toString())
    }
}
```

## func off(ListenerType)

```cangjie
public func off(listenerType: ListenerType): Unit
```

**Description:** Stops listening for display device changes.

**System Capability:** SystemCapability.Window.SessionManager

**Initial Release Version:** 21

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
| :--- | :--- | :--- | :--- | :--- |
| listenerType | [ListenerType](#enum-listenertype) | Yes | - | Type of listening event. |

**Example:**

```cangjie
import ohos.display.*
var temp: Unit = off(LISTNER_TYPE_CHANGE)
```

## func off(ListenerType, Callback1Argument\<FoldStatus>)

```cangjie
public func off(listenerType: ListenerType, callback: Callback1Argument<FoldStatus>): Unit
```

**Description:** Stops listening for fold status changes of a foldable device.

**System Capability:** SystemCapability.Window.SessionManager

**Initial Release Version:** 21

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
| :--- | :--- | :--- | :--- | :--- |
| listenerType | [ListenerType](#enum-listenertype) | Yes | - | Listening event. Fixed as 'LISTNER_TYPE_FOLD_STATUS_CHANGE', indicating a change in the fold status of the foldable device. |
| callback | [Callback1Argument](../arkinterop/cj-api-callback_invoke.md#class-callback1argument)\<[FoldStatus](#enum-foldstatus)> | Yes | - | Callback function. Represents the fold status of the foldable device. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed in the table below. For details, see [Universal Error Codes](../cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are left unspecified. 2. Incorrect parameter types. |
  | 1400003 | This display manager service works abnormally. |

**Example:**

```cangjie
import ohos.display.*
class TestCallback <: Callback1Argument<FoldStatus> {
    public init() {}
    public open func invoke(value: FoldStatus): Unit {
        Hilog.info(0, "AppLogCj",
            "Display fold status changed, current fold status: " + match (value) {
                case FOLD_STATUS_UNKNOWN => "FOLD_STATUS_UNKNOWN"
                case FOLD_STATUS_EXPANDED => "FOLD_STATUS_EXPANDED"
                case FOLD_STATUS_FOLDED => "FOLD_STATUS_FOLDED"
                case FOLD_STATUS_HALF_FOLDED => "FOLD_STATUS_HALF_FOLDED"
                case _ => "Failed to get fold status."
            })
    }
}
let testCallback = TestCallback()
var temp: Unit = on(LISTNER_TYPE_FOLD_STATUS_CHANGE, testCallback)
```

## func off(ListenerType, Callback1Argument\<FoldDisplayMode>)

```cangjie
public func off(listenerType: ListenerType, callback: Callback1Argument<FoldDisplayMode>): Unit
```

**Description:** Stops listening for display mode changes of a foldable device.

**System Capability:** SystemCapability.Window.SessionManager

**Initial Release Version:** 21

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
| :--- | :--- | :--- | :--- | :--- |
| listenerType | [ListenerType](#enum-listenertype) | Yes | - | Listening event. Fixed as 'LISTNER_TYPE_FOLD_DISPLAY_MODE_CHANGE', indicating a change in the fold status of the foldable device. |
| callback | [Callback1Argument](../arkinterop/cj-api-callback_invoke.md#class-callback1argument)\<[FoldDisplayMode](#enum-folddisplaymode)> | Yes | - | Callback function to be unregistered. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed in the table below. For details, see [Universal Error Codes](../cj-errorcode-universal.md) and [Screen Error Codes](./cj-errorcode-display.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are left unspecified. 2. Incorrect parameter types. |
  | 1400003 | This display manager service works abnormally. |

**Example:**

```cangjie
import ohos.display.*
class TestCallback <: Callback1Argument<FoldDisplayMode> {
    public init() {}
    public open func invoke(value: FoldDisplayMode): Unit {
        Hilog.info(0, "AppLogCj",
            "Display fold status changed, current fold status: " + match (value) {
                case FOLD_DISPLAY_MODE_UNKNOWN => "FOLD_DISPLAY_MODE_UNKNOWN"
                case FOLD_DISPLAY_MODE_FULL => "FOLD_DISPLAY_MODE_FULL"
                case FOLD_DISPLAY_MODE_MAIN => "FOLD_DISPLAY_MODE_MAIN"
                case FOLD_DISPLAY_MODE_SUB => "FOLD_DISPLAY_MODE_SUB"
                case FOLD_DISPLAY_MODE_COORDINATION => "FOLD_DISPLAY_MODE_COORDINATION"
                case _ => "Failed to get fold display mode."
            })
    }
}
let testCallback = TestCallback()
var temp: Unit = off(LISTNER_TYPE_FOLD_DISPLAY_MODE_CHANGE, testCallback)
```

## func on(ListenerType, Callback1Argument\<FoldStatus>)

```cangjie
public func on(listenerType: ListenerType, callback: Callback1Argument<FoldStatus>): Unit
```

**Description:** Starts listening for fold status changes of a foldable device.

**System Capability:** SystemCapability.Window.SessionManager

**Initial Release Version:** 21

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
| :--- | :--- | :--- | :--- | :--- |
| listenerType | [ListenerType](#enum-listenertype) | Yes | - | Listening event. Fixed as 'LISTNER_TYPE_FOLD_STATUS_CHANGE', indicating a change in the fold status of the foldable device. |
| callback | [Callback1Argument](../arkinterop/cj-api-callback_invoke.md#class-callback1argument)\<[FoldStatus](#enum-foldstatus)> | Yes | - | Callback function. Represents the fold status of the foldable device. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed in the table below. For details, see [Universal Error Codes](../cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are left unspecified. 2. Incorrect parameter types. |
  | 1400003 | This display manager service works abnormally. |

**Example:**

```cangjie
import ohos.display.*
class TestCallback <: Callback1Argument<FoldStatus> {
    public init(){}
    public open func invoke(value: FoldStatus): Unit {
        Hilog.info(0, "AppLogCj", "Display fold status changed, current fold status: " + match(value) {
            case FOLD_STATUS_UNKNOWN => "FOLD_STATUS_UNKNOWN"
            case FOLD_STATUS_EXPANDED => "FOLD_STATUS_EXPANDED"
            case FOLD_STATUS_FOLDED => "FOLD_STATUS_FOLDED"
            case FOLD_STATUS_HALF_FOLDED => "FOLD_STATUS_HALF_FOLDED"
            case _ => "Failed to get fold status."
        })
    }
}
let testCallback = TestCallback()
var temp: Unit = on(LISTNER_TYPE_FOLD_STATUS_CHANGE, testCallback)
```## func on(ListenerType, Callback1Argument\<FoldDisplayMode>)

```cangjie
public func on(listenerType: ListenerType, callback: Callback1Argument<FoldDisplayMode>): Unit
```

**Function:** Enables listening for changes in the foldable device screen display mode.

**System Capability:** SystemCapability.Window.SessionManager

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| listenerType | [ListenerType](#enum-listenertype) | Yes | - | The event to listen for. Fixed as 'LISTNER_TYPE_FOLD_DISPLAY_MODE_CHANGE', indicating the foldable device screen display mode. |
| callback | [Callback1Argument](../arkinterop/cj-api-callback_invoke.md#class-callback1argument)\<[FoldDisplayMode](#enum-folddisplaymode)> | Yes | - | The callback function. Indicates the foldable device screen display mode. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [Universal Error Codes](../cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are left unspecified. 2. Incorrect parameter types. |
  | 1400003 | This display manager service works abnormally. |

**Example:**

```cangjie
import ohos.display.*
class TestCallback <: Callback1Argument<FoldDisplayMode> {
    public init() {}
    public open func invoke(value: FoldDisplayMode): Unit {
        Hilog.info(0, "AppLogCj",
            "Display fold status changed, current fold status: " + match (value) {
                case FOLD_DISPLAY_MODE_UNKNOWN => "FOLD_DISPLAY_MODE_UNKNOWN"
                case FOLD_DISPLAY_MODE_FULL => "FOLD_DISPLAY_MODE_FULL"
                case FOLD_DISPLAY_MODE_MAIN => "FOLD_DISPLAY_MODE_MAIN"
                case FOLD_DISPLAY_MODE_SUB => "FOLD_DISPLAY_MODE_SUB"
                case FOLD_DISPLAY_MODE_COORDINATION => "FOLD_DISPLAY_MODE_COORDINATION"
                case _ => "Failed to get fold display mode."
            })
    }
}
let testCallback = TestCallback()
var temp: Unit = on(LISTNER_TYPE_FOLD_DISPLAY_MODE_CHANGE, testCallback)
```

## class CutoutInfo

```cangjie
public class CutoutInfo {
    public let boundingRects: Array<Rect>
    public let waterfallDisplayAreaRects: WaterfallDisplayAreaRects
    public init(
        boundingRects!: Array<Rect>,
        waterfallDisplayAreaRects!: WaterfallDisplayAreaRects
    )
}
```

**Function:** Information about unusable screen areas such as punch-hole screens, notches, and waterfall screens.

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### let boundingRects

```cangjie
public let boundingRects: Array<Rect>
```

**Function:** Sets the boundary rectangles for punch-hole or notch areas.

**Type:** Array\<[Rect](#class-rect)>

**Access:** Read-only

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### let waterfallDisplayAreaRects

```cangjie
public let waterfallDisplayAreaRects: WaterfallDisplayAreaRects
```

**Function:** Sets the display area for the curved parts of a waterfall screen.

**Type:** [WaterfallDisplayAreaRects](#class-waterfalldisplayarearects)

**Access:** Read-only

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### init(Array\<Rect>, WaterfallDisplayAreaRects)

```cangjie
public init(
    boundingRects!: Array<Rect>,
    waterfallDisplayAreaRects!: WaterfallDisplayAreaRects
)
```

**Function:** Creates a CutoutInfo object.

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| boundingRects | Array\<[Rect](#class-rect)> | Yes | - | Boundary rectangles for punch-hole or notch areas. Returns an empty array if no such areas exist. |
| waterfallDisplayAreaRects | [WaterfallDisplayAreaRects](#class-waterfalldisplayarearects) | Yes | - | Display area for the curved parts of a waterfall screen. |

## class Display

```cangjie
public class Display {}
```

**Function:** Represents a screen instance. Describes the properties and methods of the Display object.

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### prop alive

```cangjie
public prop alive: Bool
```

**Function:** Indicates whether the display device is enabled. `true` means the device is enabled, `false` means it is not.

**Type:** Bool

**Access:** Read-only

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### prop densityDPI

```cangjie
public prop densityDPI: Float32
```

**Function:** Sets the physical pixel density of the display device screen, indicating the number of pixels per inch.

**Type:** Float32

**Access:** Read-only

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### prop densityPixels

```cangjie
public prop densityPixels: Float32
```

**Function:** Sets the logical density of the display device, which is a scaling factor independent of pixel units.

**Type:** Float32

**Access:** Read-only

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### prop height

```cangjie
public prop height: Int32
```

**Function:** The height of the display device screen.

**Type:** Int32

**Access:** Read-only

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### prop id

```cangjie
public prop id: UInt32
```

**Function:** Sets the ID number of the display device. This parameter should be an integer greater than or equal to 0.

**Type:** UInt32

**Access:** Read-only

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### prop name

```cangjie
public prop name: String
```

**Function:** Sets the name of the display device.

**Type:** String

**Access:** Read-only

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### prop orientation

```cangjie
public prop orientation: Orientation
```

**Function:** Sets the current display orientation of the screen.

**Type:** [Orientation](#enum-orientation)

**Access:** Read-only

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### prop refreshRate

```cangjie
public prop refreshRate: UInt32
```

**Function:** Sets the refresh rate of the display device.

**Type:** UInt32

**Access:** Read-only

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### prop rotation

```cangjie
public prop rotation: UInt32
```

**Function:** Sets the clockwise rotation angle of the display device screen.

**Type:** UInt32

**Access:** Read-only

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### prop scaledDensity

```cangjie
public prop scaledDensity: Float32
```

**Function:** The font scaling factor for the display device. This parameter is a floating-point number, usually the same as `densityPixels`.

**Type:** Float32

**Access:** Read-only

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### prop state

```cangjie
public prop state: DisplayState
```

**Function:** Sets the state of the display device.

**Type:** [DisplayState](#enum-displaystate)

**Access:** Read-only

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### prop width

```cangjie
public prop width: Int32
```

**Function:** Sets the width of the display device screen.

**Type:** Int32

**Access:** Read-only

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### prop xDPI

```cangjie
public prop xDPI: Float32
```

**Function:** Sets the exact physical pixel value per inch in the x-direction of the screen.

**Type:** Float32

**Access:** Read-only

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### prop yDPI

```cangjie
public prop yDPI: Float32
```

**Function:** Sets the exact physical pixel value per inch in the y-direction of the screen.

**Type:** Float32

**Access:** Read-only

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### func getCutoutInfo()

```cangjie
public func getCutoutInfo(): CutoutInfo
```

**Function:** Retrieves information about unusable screen areas such as punch-hole screens, notches, and waterfall screens. Applications are advised to avoid these areas in their layouts.

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

**Return Value:**

| Type | Description |
|:----|:----|
| [CutoutInfo](#class-cutoutinfo) | Returns a CutoutInfo object describing the unusable screen areas. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [Display Error Codes](./cj-errorcode-display.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 1400001 | Invalid display or screen. |
  | 1400003 | This display manager service works abnormally. |

**Example:**

```cangjie
import ohos.display.*
func getCutoutInfoExample() {
    try {
        let displayClass = getDefaultDisplaySync()
        let cutout = displayClass.getCutoutInfo()
        println(cutout.boundingRects.size)
    } catch (exception: Exception) {
        Hilog.error(0, "AppLogCj", exception.toString())
    }
}
```## class FoldCreaseRegion

```cangjie
public class FoldCreaseRegion {
    public let displayId: UInt32
    public let creaseRects: Array<Rect>
    public init(
        displayId!: UInt32,
        creaseRects!: Array<Rect>
    )
}
```

**Function:** Fold crease region.

**System Capability:** SystemCapability.Window.SessionManager

**Since:** 21

### let creaseRects

```cangjie
public let creaseRects: Array<Rect>
```

**Function:** Sets the crease region.

**Type:** Array\<[Rect](#class-rect)>

**Access:** Read-only

**System Capability:** SystemCapability.Window.SessionManager

**Since:** 21

### let displayId

```cangjie
public let displayId: UInt32
```

**Function:** Sets the display ID to identify the screen where the crease is located.

**Type:** UInt32

**Access:** Read-only

**System Capability:** SystemCapability.Window.SessionManager

**Since:** 21

### init(UInt32, Array\<Rect>)

```cangjie
public init(
    displayId!: UInt32,
    creaseRects!: Array<Rect>
)
```

**Function:** Creates a FoldCreaseRegion object.

**System Capability:** SystemCapability.Window.SessionManager

**Since:** 21

**Parameters:**

|Name|Type|Mandatory|Default Value|Description|
|:---|:---|:---|:---|:---|
|displayId|UInt32|Yes|-|Display ID to identify the screen where the crease is located.|
|creaseRects|Array\<[Rect](#class-rect)>|Yes|-|Crease region.|

## class Rect

```cangjie
public class Rect {
    public var left: Int32
    public var top: Int32
    public var width: UInt32
    public var height: UInt32
    public init(
        left!: Int32,
        top!: Int32,
        width!: UInt32,
        height!: UInt32
    )
}
```

**Function:** Rectangle region information.

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### var height

```cangjie
public var height: UInt32
```

**Function:** Sets the height of the rectangle region.

**Type:** UInt32

**Access:** Read-write

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### var left

```cangjie
public var left: Int32
```

**Function:** Sets the left boundary of the rectangle region.

**Type:** Int32

**Access:** Read-write

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### var top

```cangjie
public var top: Int32
```

**Function:** Sets the top boundary of the rectangle region.

**Type:** Int32

**Access:** Read-write

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### var width

```cangjie
public var width: UInt32
```

**Function:** Sets the width of the rectangle region.

**Type:** UInt32

**Access:** Read-write

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### init(Int32, Int32, UInt32, UInt32)

```cangjie
public init(
    left!: Int32,
    top!: Int32,
    width!: UInt32,
    height!: UInt32
)
```

**Function:** Creates a Rect object.

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

**Parameters:**

|Name|Type|Mandatory|Default Value|Description|
|:---|:---|:---|:---|:---|
|left|Int32|Yes|-|Left boundary of the rectangle region in px. Must be an integer.|
|top|Int32|Yes|-|Top boundary of the rectangle region in px. Must be an integer.|
|width|UInt32|Yes|-|Width of the rectangle region in px. Must be an integer.|
|height|UInt32|Yes|-|Height of the rectangle region in px. Must be an integer.|

## class WaterfallDisplayAreaRects

```cangjie
public class WaterfallDisplayAreaRects {
    public let left: Rect
    public let top: Rect
    public let right: Rect
    public let bottom: Rect
    public init(
        left!: Rect,
        top!: Rect,
        right!: Rect,
        bottom!: Rect
    )
}
```

**Function:** Waterfall screen curved display area information.

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### let bottom

```cangjie
public let bottom: Rect
```

**Function:** Sets the bottom rectangular region of the waterfall curved area.

**Type:** [Rect](#class-rect)

**Access:** Read-only

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### let left

```cangjie
public let left: Rect
```

**Function:** Sets the left rectangular region of the waterfall curved area.

**Type:** [Rect](#class-rect)

**Access:** Read-only

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### let right

```cangjie
public let right: Rect
```

**Function:** Sets the right rectangular region of the waterfall curved area.

**Type:** [Rect](#class-rect)

**Access:** Read-only

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### let top

```cangjie
public let top: Rect
```

**Function:** Sets the top rectangular region of the waterfall curved area.

**Type:** [Rect](#class-rect)

**Access:** Read-only

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### init(Rect, Rect, Rect, Rect)

```cangjie
public init(
    left!: Rect,
    top!: Rect,
    right!: Rect,
    bottom!: Rect
)
```

**Function:** Creates a WaterfallDisplayAreaRects object.

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

**Parameters:**

|Name|Type|Mandatory|Default Value|Description|
|:---|:---|:---|:---|:---|
|left|[Rect](#class-rect)|Yes|-|Left rectangular region of the waterfall curved area.|
|top|[Rect](#class-rect)|Yes|-|Top rectangular region of the waterfall curved area.|
|right|[Rect](#class-rect)|Yes|-|Right rectangular region of the waterfall curved area.|
|bottom|[Rect](#class-rect)|Yes|-|Bottom rectangular region of the waterfall curved area.|

## enum DisplayState

```cangjie
public enum DisplayState {
    | StateUnknown
    | StateOff
    | StateOn
    | StateDoze
    | StateDozeSuspend
    | StateVr
    | StateOnSuspend
    | ...
}
```

**Function:** Display device state types.

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

**Parent Type:**

- Equatable\<DisplayState>

### StateDoze

```cangjie
StateDoze
```

**Function:** Indicates the display device is in low-power mode.

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### StateDozeSuspend

```cangjie
StateDozeSuspend
```

**Function:** Indicates the display device is in sleep mode with CPU suspended.

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### StateOff

```cangjie
StateOff
```

**Function:** Indicates the display device is turned off.

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### StateOn

```cangjie
StateOn
```

**Function:** Indicates the display device is turned on.

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### StateOnSuspend

```cangjie
StateOnSuspend
```

**Function:** Indicates the display device is turned on with CPU suspended.

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### StateUnknown

```cangjie
StateUnknown
```

**Function:** Indicates the display device state is unknown.

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### StateVr

```cangjie
StateVr
```

**Function:** Indicates the display device is in VR mode.

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### func !=(DisplayState)

```cangjie
public operator func !=(other: DisplayState): Bool
```

**Function:** Determines whether two enum values are unequal.

**Parameters:**

|Name|Type|Mandatory|Default Value|Description|
|:---|:---|:---|:---|:---|
|other|[DisplayState](#enum-displaystate)|Yes|-|Another enum value to compare|

**Return Value:**

|Type|Description|
|:----|:----|
|Bool|Whether the two enum values are unequal.|

### func ==(DisplayState)

```cangjie
public operator func ==(other: DisplayState): Bool
```

**Function:** Determines whether two enum values are equal.

**Parameters:**

|Name|Type|Mandatory|Default Value|Description|
|:---|:---|:---|:---|:---|
|other|[DisplayState](#enum-displaystate)|Yes|-|Another enum value to compare|

**Return Value:**

|Type|Description|
|:----|:----|
|Bool|Whether the two enum values are equal.|## enum FoldDisplayMode

```cangjie
public enum FoldDisplayMode {
    | FoldDisplayModeUnknown
    | FoldDisplayModeFull
    | FoldDisplayModeMain
    | FoldDisplayModeSub
    | FoldDisplayModeCoordination
    | ...
}
```

**Function:** Types of display modes for foldable devices.

**System Capability:** SystemCapability.Window.SessionManager

**Since:** 21

**Parent Type:**

- Equatable\<FoldDisplayMode>

### FoldDisplayModeCoordination

```cangjie
FoldDisplayModeCoordination
```

**Function:** Indicates the device is currently in dual-screen coordinated display mode.

**System Capability:** SystemCapability.Window.SessionManager

**Since:** 21

### FoldDisplayModeFull

```cangjie
FoldDisplayModeFull
```

**Function:** Indicates the device is currently in full-screen display mode.

**System Capability:** SystemCapability.Window.SessionManager

**Since:** 21

### FoldDisplayModeMain

```cangjie
FoldDisplayModeMain
```

**Function:** Indicates the device is currently displaying on the main screen.

**System Capability:** SystemCapability.Window.SessionManager

**Since:** 21

### FoldDisplayModeSub

```cangjie
FoldDisplayModeSub
```

**Function:** Indicates the device is currently displaying on the sub-screen.

**System Capability:** SystemCapability.Window.SessionManager

**Since:** 21

### FoldDisplayModeUnknown

```cangjie
FoldDisplayModeUnknown
```

**Function:** Indicates the device's current fold display mode is unknown.

**System Capability:** SystemCapability.Window.SessionManager

**Since:** 21

### func !=(FoldDisplayMode)

```cangjie
public operator func !=(other: FoldDisplayMode): Bool
```

**Function:** Determines whether two enum values are unequal.

**Parameters:**

|Parameter|Type|Required|Default|Description|
|:---|:---|:---|:---|:---|
|other|[FoldDisplayMode](#enum-folddisplaymode)|Yes|-|Another enum value to compare|

**Return Value:**

|Type|Description|
|:----|:----|
|Bool|Whether the two enum values are unequal.|

### func ==(FoldDisplayMode)

```cangjie
public operator func ==(other: FoldDisplayMode): Bool
```

**Function:** Determines whether two enum values are equal.

**Parameters:**

|Parameter|Type|Required|Default|Description|
|:---|:---|:---|:---|:---|
|other|[FoldDisplayMode](#enum-folddisplaymode)|Yes|-|Another enum value to compare|

**Return Value:**

|Type|Description|
|:----|:----|
|Bool|Whether the two enum values are equal.|

## enum FoldStatus

```cangjie
public enum FoldStatus {
    | FoldStatusUnknown
    | FoldStatusExpanded
    | FoldStatusFolded
    | FoldStatusHalfFolded
    | ...
}
```

**Function:** Types of folding states for foldable devices.

**System Capability:** SystemCapability.Window.SessionManager

**Since:** 21

**Parent Type:**

- Equatable\<FoldStatus>

### FoldStatusExpanded

```cangjie
FoldStatusExpanded
```

**Function:** Indicates the device is currently fully expanded. For dual-hinge devices, it means hinge one is fully expanded while hinge two is folded.

**System Capability:** SystemCapability.Window.SessionManager

**Since:** 21

### FoldStatusFolded

```cangjie
FoldStatusFolded
```

**Function:** Indicates the device is currently folded. For dual-hinge devices, it means both hinge one and hinge two are folded.

**System Capability:** SystemCapability.Window.SessionManager

**Since:** 21

### FoldStatusHalfFolded

```cangjie
FoldStatusHalfFolded
```

**Function:** Indicates the device is currently half-folded (a state between fully expanded and fully folded). For dual-hinge devices, it means hinge one is half-folded while hinge two is folded.

**System Capability:** SystemCapability.Window.SessionManager

**Since:** 21

### FoldStatusUnknown

```cangjie
FoldStatusUnknown
```

**Function:** Indicates the device's current folding state is unknown.

**System Capability:** SystemCapability.Window.SessionManager

**Since:** 21

### func !=(FoldStatus)

```cangjie
public operator func !=(other: FoldStatus): Bool
```

**Function:** Determines whether two enum values are unequal.

**Parameters:**

|Parameter|Type|Required|Default|Description|
|:---|:---|:---|:---|:---|
|other|[FoldStatus](#enum-foldstatus)|Yes|-|Another enum value to compare|

**Return Value:**

|Type|Description|
|:----|:----|
|Bool|Whether the two enum values are unequal.|

### func ==(FoldStatus)

```cangjie
public operator func ==(other: FoldStatus): Bool
```

**Function:** Determines whether two enum values are equal.

**Parameters:**

|Parameter|Type|Required|Default|Description|
|:---|:---|:---|:---|:---|
|other|[FoldStatus](#enum-foldstatus)|Yes|-|Another enum value to compare|

**Return Value:**

|Type|Description|
|:----|:----|
|Bool|Whether the two enum values are equal.|

## enum ListenerType

```cangjie
public enum ListenerType {
    | ListenerTypeAdd
    | ListenerTypeRemove
    | ListenerTypeChange
    | ListenerTypeFoldStatusChange
    | ListenerTypeFoldAngleChange
    | ListenerTypeCaptureStatusChange
    | ListenerTypeFoldDisplayModeChange
    | ListenerTypeAvailableAreaChange
    | ...
}
```

**Function:** Types of listener events to set.

**System Capability:** SystemCapability.Window.SessionManager

**Since:** 21

**Parent Type:**

- Equatable\<ListenerType>

### ListenerTypeAdd

```cangjie
ListenerTypeAdd
```

**Function:** Indicates a display device addition event.

**System Capability:** SystemCapability.Window.SessionManager

**Since:** 21

### ListenerTypeAvailableAreaChange

```cangjie
ListenerTypeAvailableAreaChange
```

**Function:** Indicates a change in the foldable device's screen display mode.

**System Capability:** SystemCapability.Window.SessionManager

**Since:** 21

### ListenerTypeCaptureStatusChange

```cangjie
ListenerTypeCaptureStatusChange
```

**Function:** Indicates a change in the device's screenshot, screencast, or screen recording status.

**System Capability:** SystemCapability.Window.SessionManager

**Since:** 21

### ListenerTypeChange

```cangjie
ListenerTypeChange
```

**Function:** Indicates a display device modification event.

**System Capability:** SystemCapability.Window.SessionManager

**Since:** 21

### ListenerTypeFoldAngleChange

```cangjie
ListenerTypeFoldAngleChange
```

**Function:** Indicates a change in the foldable device's folding angle.

**System Capability:** SystemCapability.Window.SessionManager

**Since:** 21

### ListenerTypeFoldDisplayModeChange

```cangjie
ListenerTypeFoldDisplayModeChange
```

**Function:** Indicates a change in the foldable device's screen display mode.

**System Capability:** SystemCapability.Window.SessionManager

**Since:** 21

### ListenerTypeFoldStatusChange

```cangjie
ListenerTypeFoldStatusChange
```

**Function:** Indicates a change in the foldable device's folding state.

**System Capability:** SystemCapability.Window.SessionManager

**Since:** 21

### ListenerTypeRemove

```cangjie
ListenerTypeRemove
```

**Function:** Indicates a display device removal event.

**System Capability:** SystemCapability.Window.SessionManager

**Since:** 21

### func !=(ListenerType)

```cangjie
public operator func !=(other: ListenerType): Bool
```

**Function:** Determines whether two enum values are unequal.

**Parameters:**

|Parameter|Type|Required|Default|Description|
|:---|:---|:---|:---|:---|
|other|[ListenerType](#enum-listenertype)|Yes|-|Another enum value to compare|

**Return Value:**

|Type|Description|
|:----|:----|
|Bool|Whether the two enum values are unequal.|

### func ==(ListenerType)

```cangjie
public operator func ==(other: ListenerType): Bool
```

**Function:** Determines whether two enum values are equal.

**Parameters:**

|Parameter|Type|Required|Default|Description|
|:---|:---|:---|:---|:---|
|other|[ListenerType](#enum-listenertype)|Yes|-|Another enum value to compare|

**Return Value:**

|Type|Description|
|:----|:----|
|Bool|Whether the two enum values are equal.|

## enum Orientation

```cangjie
public enum Orientation {
    | Portrait
    | Landscape
    | PortraitInverted
    | LandscapeInverted
    | ...
}
```

**Function:** Types of display orientations for the current display device.

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

**Parent Type:**

- Equatable\<Orientation>### Landscape

```cangjie
Landscape
```

**Function:** Indicates the device is currently displayed in landscape orientation.

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### LandscapeInverted

```cangjie
LandscapeInverted
```

**Function:** Indicates the device is currently displayed in inverted landscape orientation.

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### Portrait

```cangjie
Portrait
```

**Function:** Indicates the device is currently displayed in portrait orientation.

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### PortraitInverted

```cangjie
PortraitInverted
```

**Function:** Indicates the device is currently displayed in inverted portrait orientation.

**System Capability:** SystemCapability.WindowManager.WindowManager.Core

**Since:** 21

### func !=(Orientation)

```cangjie
public operator func !=(other: Orientation): Bool
```

**Function:** Determines whether two enumeration values are not equal.

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| other | [Orientation](#enum-orientation) | Yes | - | Another enumeration value to compare |

**Return Value:**

| Type | Description |
|:----|:----|
| Bool | Whether the two enumeration values are not equal. |

### func ==(Orientation)

```cangjie
public operator func ==(other: Orientation): Bool
```

**Function:** Determines whether two enumeration values are equal.

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| other | [Orientation](#enum-orientation) | Yes | - | Another enumeration value to compare |

**Return Value:**

| Type | Description |
|:----|:----|
| Bool | Whether the two enumeration values are equal. |