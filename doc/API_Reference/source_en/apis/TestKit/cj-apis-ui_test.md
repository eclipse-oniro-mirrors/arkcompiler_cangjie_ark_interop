# ohos.application.test_runner (UI Testing)

The ui_test module provides UI operation simulation capabilities for developers to use in testing scenarios, primarily supporting UI operations such as clicking, double-clicking, long-pressing, and swiping.

This module offers the following functionalities:

- [UITest](#class-uitest): The [UITest](#class-uitest) class contains only a static setup method for initializing the ui_test library.
- [On](#class-on): Provides control feature description capabilities for control filtering and matching.
- [Component](#class-component): Represents a specified control on the UI interface, offering capabilities such as control property retrieval, control clicking, swipe searching, and text injection.
- [Driver](#class-driver): Entry class providing capabilities like control matching, searching, key injection, coordinate-based clicking or swiping, and screenshots.
- [UiWindow](#class-uiwindow): Entry class providing capabilities such as window property retrieval, window dragging, and window resizing.

## Importing the Module

```cangjie
import kit.TestKit.*
```

## Usage Instructions

API example code usage instructions:

- If the first line of the example code contains a "// index.cj" comment, it indicates that the example can be compiled and run in the "index.cj" file of the Cangjie template project.
- If the example requires obtaining the [Context](../AbilityKit/cj-apis-ability.md#class-context) application context, it needs to be configured in the "main_ability.cj" file of the Cangjie template project.

For details about the example project and configuration template mentioned above, refer to [Cangjie Example Code Description](../../cj-development-intro.md#Cangjie-Example-Code-Description).

## Running Tests

### Preparations

- Connect a device supporting the uitest framework to a PC with the corresponding drivers and hdc service installed.
- For devices using the uitest framework for the first time after flashing, execute `hdc shell param set persist.ace.testmode.enabled 1` and restart the device to enable ACE, ensuring the device can access ArkUI control node information via accessibility services.
- Execute `hdc shell param set persist.sys.suspend_manager_enabled 0` and restart the device to disable the background application freeze mechanism.

### Test Command

```text
hdc shell aa test -b com.example.myapplication -m entry -s unittest CJTestRunner
```

- Here, `-b com.example.myapplication -m entry` should be filled according to the actual bundle name and module name in the app.
- The final `CJTestRunner` is the first parameter registered with TestRunner.registerCreator.

## class Component

```cangjie
public class Component {}
```

**Functionality:** The [Component](#class-component) class represents a control on the UI interface, providing APIs for control property retrieval, control clicking, swipe searching, text injection, etc.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### func clearText()

```cangjie
public func clearText(): Unit
```

**Functionality:** Clears the text information of a control, applicable to text box controls.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [uitest error codes](../../errorcodes/cj-errorcode-uitest.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |

### func click()

```cangjie
public func click(): Unit
```

**Functionality:** Performs a click operation on the control object.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### func doubleClick()

```cangjie
public func doubleClick(): Unit
```

**Functionality:** Performs a double-click operation on the control object.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### func dragTo(Component)

```cangjie
public func dragTo(target: Component): Unit
```

**Functionality:** Drags the control to the target control.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
| :--- | :--- | :--- | :--- | :--- |
| target | [Component](#class-component) | Yes | - | Target control. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [uitest error codes](../../errorcodes/cj-errorcode-uitest.md) and [universal error codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |
  | 17000004 | The window or component is invisible or destroyed. |

### func getBounds()

```cangjie
public func getBounds(): Rect
```

**Functionality:** Retrieves the border information of the control object.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Return Value:**

| Type | Description |
| :---- | :---- |
| [Rect](#class-rect) | Border information of the control object. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [uitest error codes](../../errorcodes/cj-errorcode-uitest.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |

### func getBoundsCenter()

```cangjie
public func getBoundsCenter(): Point
```

**Functionality:** Retrieves the center point information of the area occupied by the control object.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Return Value:**

| Type | Description |
| :---- | :---- |
| [Point](#class-point) | Center point information of the area occupied by the control object. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [uitest error codes](../../errorcodes/cj-errorcode-uitest.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |

### func getDescription()

```cangjie
public func getDescription(): String
```

**Functionality:** Retrieves the description information of the control object.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Return Value:**

| Type | Description |
| :---- | :---- |
| String | Description information of the control. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [uitest error codes](../../errorcodes/cj-errorcode-uitest.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |

### func getId()

```cangjie
public func getId(): String
```

**Functionality:** Retrieves the ID value of the control object.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Return Value:**

| Type | Description |
| :---- | :---- |
| String | ID value of the control. |

### func getText()

```cangjie
public func getText(): String
```

**Functionality:** Retrieves the text information of the control object.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Return Value:**

| Type | Description |
| :---- | :---- |
| String | Text information of the control. |

### func getType()

```cangjie
public func getType(): String
```

**Functionality:** Retrieves the control type of the control object.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Return Value:**

| Type | Description |
| :---- | :---- |
| String | Type of the control. |

### func inputText(String)

```cangjie
public func inputText(text: String): Unit
```

**Functionality:** Inputs text into the control, applicable to text box controls.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
| :--- | :--- | :--- | :--- | :--- |
| text | String | Yes | - | Text information to input. Currently supports English and special characters. |

### func isCheckable()

```cangjie
public func isCheckable(): Bool
```

**Functionality:** Determines whether the control object can be checked.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Return Value:**

| Type | Description |
| :---- | :---- |
| Bool | Whether the control object can be checked: true if checkable, false otherwise. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [uitest error codes](../../errorcodes/cj-errorcode-uitest.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |

### func isChecked()

```cangjie
public func isChecked(): Bool
```

**Functionality:** Retrieves the checked state of the control object.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Return Value:**

| Type | Description |
| :---- | :---- |
| Bool | Checked state of the control object: true if checked, false otherwise. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [uitest error codes](../../errorcodes/cj-errorcode-uitest.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |

### func isClickable()

```cangjie
public func isClickable(): Bool
```

**Functionality:** Determines whether the control object is clickable.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Return Value:**

| Type | Description |
| :---- | :---- |
| Bool | Whether the control object is clickable: true if clickable, false otherwise. |

### func isEnabled()

```cangjie
public func isEnabled(): Bool
```

**Functionality:** Retrieves the enabled state of the control.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Return Value:**

| Type | Description |
| :---- | :---- |
| Bool | Enabled state of the control: true if enabled, false otherwise. |

### func isFocused()

```cangjie
public func isFocused(): Bool
```

**Functionality:** Determines the focus state of the control object.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Return Value:**

| Type | Description |
| :---- | :---- |
| Bool | Focus state of the control object: true if focused, false otherwise. |

### func isLongClickable()

```cangjie
public func isLongClickable(): Bool
```

**Functionality:** Determines whether the control object can be long-clicked.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Return Value:**

| Type | Description |
| :---- | :---- |
| Bool | Whether the control object can be long-clicked: true if long-clickable, false otherwise. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [uitest error codes](../../errorcodes/cj-errorcode-uitest.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |

### func isScrollable()

```cangjie
public func isScrollable(): Bool
```

**Functionality:** Determines whether the control object is scrollable.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Return Value:**

| Type | Description |
| :---- | :---- |
| Bool | Whether the control object is scrollable: true if scrollable, false otherwise. |

### func isSelected()

```cangjie
public func isSelected(): Bool
```

**Functionality:** Retrieves the selected state of the control object.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Return Value:**

| Type | Description |
| :---- | :---- |
| Bool | Selected state of the control object: true if selected, false otherwise. |

### func longClick()

```cangjie
public func longClick(): Unit
```

**Functionality:** Performs a long-click operation on the control object.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### func pinchIn(Float32)

```cangjie
public func pinchIn(scale: Float32): Unit
```

**Functionality:** Pinches the control to reduce its size by the specified scale.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
| :--- | :--- | :--- | :--- | :--- |
| scale | Float32 | Yes | - | Specified reduction scale. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [uitest error codes](../../errorcodes/cj-errorcode-uitest.md) and [universal error codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |
  | 17000004 | The window or component is invisible or destroyed. |

### func pinchOut(Float32)

```cangjie
public func pinchOut(scale: Float32): Unit
```

**Functionality:** Pinches the control to enlarge its size by the specified scale.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
| :--- | :--- | :--- | :--- | :--- |
| scale | Float32 | Yes | - | Specified enlargement scale. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [uitest error codes](../../errorcodes/cj-errorcode-uitest.md) and [universal error codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |
  | 17000004 | The window or component is invisible or destroyed. |

### func scrollSearch(On)

```cangjie
public func scrollSearch(on: On): ?Component
```

**Functionality:** Swipes on the control to search for the target control, applicable to scrollable controls.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
| :--- | :--- | :--- | :--- | :--- |
| on | [On](#class-on) | Yes | - | Property requirements of the target control. |

**Return Value:**

| Type | Description |
| :---- | :---- |
| ?[Component](#class-component) | Found target control object. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [uitest error codes](../../errorcodes/cj-errorcode-uitest.md) and [universal error codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |
  | 17000004 | The window or component is invisible or destroyed. |

### func scrollToBottom(Int64)

```cangjie
public func scrollToBottom(speed!: Int64 = 600): Unit
```

**Functionality:** Swipes on the control to reach the bottom, applicable to scrollable controls.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
| :--- | :--- | :--- | :--- | :--- |
| speed | Int64 | No | 600 | **Named parameter.** Swipe speed, range: 200-15000. If out of range, defaults to 600. Unit: pixels/second. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [uitest error codes](../../errorcodes/cj-errorcode-uitest.md) and [universal error codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Incorrect parameter types; 2. Parameter verification failed. |
  | 17000004 | The window or component is invisible or destroyed. |

### func scrollToTop(Int64)

```cangjie
public func scrollToTop(speed!: Int64 = 600): Unit
```

**Functionality:** Swipes on the control to reach the top, applicable to scrollable controls.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
| :--- | :--- | :--- | :--- | :--- |
| speed | Int64 | No | 600 | **Named parameter.** Swipe speed, range: 200-15000. If out of range, defaults to 600. Unit: pixels/second. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [uitest error codes](../../errorcodes/cj-errorcode-uitest.md) and [universal error codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Incorrect parameter## class Driver

```cangjie
public class Driver {}
```

**Function:** The [Driver](#class-driver) class serves as the main entry point for the uitest framework, providing capabilities such as component matching, searching, key injection, coordinate clicking or swiping, and screenshot capture.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### static func create()

```cangjie
public static func create(): Driver
```

**Function:** A static method that constructs a [Driver](#class-driver) object and returns it.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Return Value:**

| Type | Description |
|:----|:----|
| [Driver](#class-driver) | Returns the constructed [Driver](#class-driver) object. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [uitest Error Codes](../../errorcodes/cj-errorcode-uitest.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 17000001 | Initialization failed. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
```

### func assertComponentExist(On)

```cangjie
public func assertComponentExist(on: On): Unit
```

**Function:** An assertion API used to verify whether a component matching the given target attributes exists on the current interface.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| on | [On](#class-on) | Yes | - | Attribute requirements for the target component. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [uitest Error Codes](../../errorcodes/cj-errorcode-uitest.md) and [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |
  | 17000003 | Assertion failed. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
driver.assertComponentExist(On().text("next page"))
```

### func click(Int32, Int32)

```cangjie
public func click(x: Int32, y: Int32): Unit
```

**Function:** Executes a click operation at the target coordinates for the [Driver](#class-driver) object.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| x | Int32 | Yes | - | The horizontal coordinate of the target point, passed as an Int32. |
| y | Int32 | Yes | - | The vertical coordinate of the target point, passed as an Int32. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [uitest Error Codes](../../errorcodes/cj-errorcode-uitest.md) and [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
driver.click(100, 100)
```

### func createUIEventObserver()

```cangjie
public func createUIEventObserver(): UIEventObserver
```

**Function:** Creates a UI event listener.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Return Value:**

| Type | Description |
|:----|:----|
| [UIEventObserver](#class-uieventobserver) | Returns the created UI event listener object. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
let observer: UIEventObserver = driver.createUIEventObserver()
```

### func delayMs(Int32)

```cangjie
public func delayMs(duration: Int32): Unit
```

**Function:** Delays the [Driver](#class-driver) object for the specified duration.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| duration | Int32 | Yes | - | The specified duration, in milliseconds. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
driver.delayMs(1000)
```

### func doubleClick(Int32, Int32)

```cangjie
public func doubleClick(x: Int32, y: Int32): Unit
```

**Function:** Executes a double-click operation at the target coordinates for the [Driver](#class-driver) object.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| x | Int32 | Yes | - | The horizontal coordinate of the target point, passed as an Int32. |
| y | Int32 | Yes | - | The vertical coordinate of the target point, passed as an Int32. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [uitest Error Codes](../../errorcodes/cj-errorcode-uitest.md) and [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
driver.doubleClick(100, 100)
```

### func drag(Int32, Int32, Int32, Int32, Int32)

```cangjie
public func drag(
    startx: Int32,
    starty: Int32,
    endx: Int32,
    endy: Int32,
    speed!: Int32 = 600
): Unit
```

**Function:** Executes a drag operation from the start coordinates to the target coordinates for the [Driver](#class-driver) object.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| startx | Int32 | Yes | - | The horizontal coordinate of the start point, passed as an Int32. |
| starty | Int32 | Yes | - | The vertical coordinate of the start point, passed as an Int32. |
| endx | Int32 | Yes | - | The horizontal coordinate of the end point, passed as an Int32. |
| endy | Int32 | Yes | - | The vertical coordinate of the end point, passed as an Int32. |
| speed | Int32 | No | 600 | **Named parameter.** The swipe speed, range: 200-15000. If out of range, the default value is 600. Unit: pixels/second. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [uitest Error Codes](../../errorcodes/cj-errorcode-uitest.md) and [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
driver.drag(100, 100, 200, 200, speed: 600)
```

### func findComponent(On)

```cangjie
public func findComponent(on: On): ?Component
```

**Function:** Searches for a target component in the [Driver](#class-driver) object based on the given attribute requirements.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| on | [On](#class-on) | Yes | - | Attribute requirements for the target component. |

**Return Value:**

| Type | Description |
|:----|:----|
| ?[Component](#class-component) | The found component object. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
let button: Option<Component> = driver.findComponent(On().text("next page"))
```

### func findComponents(On)

```cangjie
public func findComponents(on: On): ?Array<Component>
```

**Function:** Searches for all matching components in the [Driver](#class-driver) object based on the given attribute requirements and returns them as a list.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| on | [On](#class-on) | Yes | - | Attribute requirements for the target components. |

**Return Value:**

| Type | Description |
|:----|:----|
| ?Array\<[Component](#class-component)> | Attribute requirements for the target components. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
let buttonList: Option<Array<Component>> = driver.findComponents(On().text("next page"))
```

### func findWindow(WindowFilter)

```cangjie
public func findWindow(filter: WindowFilter): ?UiWindow
```

**Function:** Searches for a target window by specifying its attributes.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| filter | [WindowFilter](#class-windowfilter) | Yes | - | Attributes of the target window. |

**Return Value:**

| Type | Description |
|:----|:----|
| ?[UiWindow](#class-uiwindow) | The found target window object. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
let window: Option<UiWindow> = driver.findWindow(WindowFilter(active: true))
```### func fling(Point, Point, Int32, Int32)

```cangjie
public func fling(from: Point, to: Point, stepLen: Int32, speed: Int32): Unit
```

**Function:** Simulates a fling gesture (rapid swipe followed by release) with specified direction and speed.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| from | [Point](#class-point) | Yes | - | Starting coordinates where the finger touches the screen. |
| to | [Point](#class-point) | Yes | - | Ending coordinates where the finger leaves the screen. |
| stepLen | Int32 | Yes | - | Step length, in pixels. |
| speed | Int32 | Yes | - | Swipe speed, range: 200-40000. If out of range, defaults to 600. Unit: pixels/second. |

**Exceptions:**

- BusinessException: Error codes are listed below. For details, see [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are missing; 2. Incorrect parameter types; 3. Parameter validation failed. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
driver.fling(UiDirection.Down, 10000)
```

### func fling(UiDirection, Int32)

```cangjie
public func fling(direction: UiDirection, speed: Int32): Unit
```

**Function:** Simulates a fling gesture (rapid swipe followed by release) with specified direction and speed.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| direction | [UiDirection](#enum-uidirection) | Yes | - | Direction of the fling gesture. |
| speed | Int32 | Yes | - | Swipe speed, range: 200-40000. If out of range, defaults to 600. Unit: pixels/second. |

**Exceptions:**

- BusinessException: Error codes are listed below. For details, see [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are missing; 2. Incorrect parameter types; 3. Parameter validation failed. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
driver.fling(UiDirection.Down, 10000)
```

### func getDisplayDensity()

```cangjie
public func getDisplayDensity(): Point
```

**Function:** Retrieves the screen resolution of the current device.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Return Value:**

| Type | Description |
|:----|:----|
| [Point](#class-point) | Returns the screen resolution of the current device. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
let density = driver.getDisplayDensity()
```

### func getDisplayRotation()

```cangjie
public func getDisplayRotation(): DisplayRotation
```

**Function:** Retrieves the screen orientation of the current device.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Return Value:**

| Type | Description |
|:----|:----|
| [DisplayRotation](#enum-displayrotation) | Returns the screen orientation of the current device. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
let rotation: DisplayRotation = driver.getDisplayRotation()
```

### func getDisplaySize()

```cangjie
public func getDisplaySize(): Point
```

**Function:** Retrieves the screen size of the current device.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Return Value:**

| Type | Description |
|:----|:----|
| [Point](#class-point) | Returns the screen size of the current device. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
let size = driver.getDisplaySize()
```

### func injectMultiPointerAction(PointerMatrix, Int32)

```cangjie
public func injectMultiPointerAction(pointers: PointerMatrix, speed!: Int32 = 600): Bool
```

**Function:** Injects a multi-pointer gesture into the device.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| pointers | [PointerMatrix](#class-pointermatrix) | Yes | - | Gesture trajectory, including the number of fingers and coordinate sequences. |
| speed | Int32 | No | 600 | **Named parameter.** Swipe speed, range: 200-15000. If out of range, defaults to 600. Unit: pixels/second. |

**Return Value:**

| Type | Description |
|:----|:----|
| Bool | Returns whether the operation completed successfully. Returns `true` if successful, otherwise `false`. |

**Exceptions:**

- BusinessException: Error codes are listed below. For details, see [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are missing; 2. Incorrect parameter types; 3. Parameter validation failed. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.ui_test.Point as PT
import ohos.ui_test.Driver
import ohos.ui_test.PointerMatrix

let driver: Driver = Driver.create()
let pointers: PointerMatrix = PointerMatrix.create(2, 3)
pointers.setPoint(0, 0, PT(230, 480))
pointers.setPoint(0, 1, PT(250, 380))
pointers.setPoint(0, 2, PT(270, 280))
pointers.setPoint(1, 0, PT(230, 680))
pointers.setPoint(1, 1, PT(240, 580))
pointers.setPoint(1, 2, PT(250, 480))
driver.injectMultiPointerAction(pointers)
```

### func inputText(Point, String)

```cangjie
public func inputText(p: Point, text: String): Unit
```

**Function:** Inputs text at the specified coordinates.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| p | [Point](#class-point) | Yes | - | Coordinates where the text will be input. |
| text | String | Yes | - | Text to be input. |

**Exceptions:**

- BusinessException: Error codes are listed below. For details, see [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are missing; 2. Incorrect parameter types; 3. Parameter validation failed. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
let text: Component = driver.findComponent(On().onType("TextInput")).getOrThrow()
let point = text.getBoundsCenter()
driver.inputText(point, "123")
```

### func longClick(Int32, Int32)

```cangjie
public func longClick(x: Int32, y: Int32): Unit
```

**Function:** Performs a long-press operation at the specified coordinates for the [Driver](#class-driver) object.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| x | Int32 | Yes | - | X-coordinate of the target point as an Int32. |
| y | Int32 | Yes | - | Y-coordinate of the target point as an Int32. |

**Exceptions:**

- BusinessException: Error codes are listed below. For details, see [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are missing; 2. Incorrect parameter types; 3. Parameter validation failed. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
driver.longClick(100, 100)
```

### func mouseClick(Point, MouseButton, Int32, Int32)

```cangjie
public func mouseClick(p: Point, btnId: MouseButton, key1!: Int32 = 0, key2!: Int32 = 0): Unit
```

**Function:** Injects a mouse click action at the specified coordinates, supporting simultaneous keyboard key combinations. For example, when the Key value is 2072, it presses CTRL while performing the mouse click action.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| p | [Point](#class-point) | Yes | - | Coordinates for the mouse click. |
| btnId | [MouseButton](#enum-mousebutton) | Yes | - | Mouse button to press. |
| key1 | Int32 | No | 0 | **Named parameter.** First specified key value. |
| key2 | Int32 | No | 0 | **Named parameter.** Second specified key value. |

**Exceptions:**

- BusinessException: Error codes are listed below. For details, see [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are missing; 2. Incorrect parameter types; 3. Parameter validation failed. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import kit.TestKit.*
import ohos.ui_test.Point as PT

let driver: Driver = Driver.create()
driver.mouseClick(PT(248, 194), MouseButton.MouseButtonLeft, key1: 2072)
```

### func mouseDoubleClick(Point, MouseButton, Int32, Int32)

```cangjie
public func mouseDoubleClick(p: Point, btnId: MouseButton, key1!: Int32 = 0, key2!: Int32 = 0): Unit
```

**Function:** Injects a mouse double-click action at the specified coordinates, supporting simultaneous keyboard key combinations. For example, when the Key value is 2072, it presses CTRL while performing the mouse double-click action.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| p | [Point](#class-point) | Yes | - | Coordinates for the mouse double-click. |
| btnId | [MouseButton](#enum-mousebutton) | Yes | - | Mouse button to press. |
| key1 | Int32 | No | 0 | **Named parameter.** First specified key value. |
| key2 | Int32 | No | 0 | **Named parameter.** Second specified key value. |

**Exceptions:**

- BusinessException: Error codes are listed below. For details, see [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are missing; 2. Incorrect parameter types; 3. Parameter validation failed. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import kit.TestKit.*
import ohos.ui_test.Point as PT


let driver: Driver = Driver.create()
driver.mouseDoubleClick(PT(248, 194), MouseButton.MouseButtonLeft, key1: 2072)
```### func mouseDrag(Point, Point, Int32)

```cangjie
public func mouseDrag(from: Point, to: Point, speed!: Int32 = 600): Unit
```

**Function:** Drags the mouse while holding the left button from the starting point to the destination point.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| from | [Point](#class-point) | Yes | - | Coordinates of the starting point. |
| to | [Point](#class-point) | Yes | - | Coordinates of the destination point. |
| speed | Int32 | No | 600 | **Named parameter.** Drag speed, range: 200-15000. If out of range, the default value is 600. Unit: pixels/second. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import kit.TestKit.*
import ohos.ui_test.Point as PT

let driver: Driver = Driver.create()
driver.mouseDrag(PT(100, 100), PT(200, 200))
```

### func mouseLongClick(Point, MouseButton, Int32, Int32)

```cangjie
public func mouseLongClick(p: Point, btnId: MouseButton, key1!: Int32 = 0, key2!: Int32 = 0): Unit
```

**Function:** Injects a long mouse click action at the specified coordinates, supporting simultaneous pressing of corresponding keyboard combination keys. For example, when the Key value is 2072, press CTRL and perform a long mouse click action.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| p | [Point](#class-point) | Yes | - | Coordinates for the long mouse click. |
| btnId | [MouseButton](#enum-mousebutton) | Yes | - | The mouse button to press. |
| key1 | Int32 | No | 0 | **Named parameter.** The first specified key value. |
| key2 | Int32 | No | 0 | **Named parameter.** The second specified key value. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import kit.TestKit.*
import ohos.ui_test.Point as PT

let driver: Driver = Driver.create()
driver.mouseLongClick(PT(248, 194), MouseButton.MouseButtonLeft, key1: 2072)
```

### func mouseMoveTo(Point)

```cangjie
public func mouseMoveTo(p: Point): Unit
```

**Function:** Moves the mouse cursor to the target point.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| p | [Point](#class-point) | Yes | - | Coordinates of the target point. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import kit.TestKit.*
import ohos.ui_test.Point as PT

let driver: Driver = Driver.create()
driver.mouseMoveTo(PT(248, 194))
```

### func mouseMoveWithTrack(Point, Point, Int32)

```cangjie
public func mouseMoveWithTrack(from: Point, to: Point, speed!: Int32 = 600): Unit
```

**Function:** Moves the mouse from the starting point coordinates to the destination point coordinates.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| from | [Point](#class-point) | Yes | - | Coordinates of the starting point. |
| to | [Point](#class-point) | Yes | - | Coordinates of the destination point. |
| speed | Int32 | No | 600 | **Named parameter.** Movement speed, range: 200-15000. If out of range, the default value is 600. Unit: pixels/second. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import kit.TestKit.*
import ohos.ui_test.Point as PT

let driver: Driver = Driver.create()
driver.mouseMoveWithTrack(PT(100, 100), PT(200, 200))
```

### func mouseScroll(Point, Bool, Int32, Int32, Int32, Int32)

```cangjie
public func mouseScroll(p: Point, down: Bool, d: Int32, key1!: Int32 = 0, key2!: Int32 = 0, speed!: Int32 = 20): Unit
```

**Function:** Injects a mouse wheel scroll action at the specified coordinates, supporting simultaneous pressing of corresponding keyboard combination keys and specifying the scroll speed.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| p | [Point](#class-point) | Yes | - | Coordinates for the mouse click. |
| down | Bool | Yes | - | Whether the scroll direction is downward. true indicates downward scrolling, false indicates upward scrolling. |
| d | Int32 | Yes | - | Number of notches for the mouse wheel scroll. Each notch corresponds to a displacement of 120 pixels at the target point. |
| key1 | Int32 | No | 0 | **Named parameter.** The first specified key value. |
| key2 | Int32 | No | 0 | **Named parameter.** The second specified key value. |
| speed | Int32 | No | 20 | **Named parameter.** Mouse wheel scroll speed, range: 1-500. If out of range, the default value is 20. Unit: notches/second. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import kit.TestKit.*
import ohos.ui_test.Point as PT

let driver: Driver = Driver.create()
driver.mouseScroll(PT(360, 640), true, 30, key1: 2072)
```

### func pressBack()

```cangjie
public func pressBack(): Unit
```

**Function:** The [Driver](#class-driver) object performs a BACK key press operation.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
driver.pressBack()
```

### func pressHome()

```cangjie
public func pressHome(): Unit
```

**Function:** Returns the device to the home screen.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Example:**

<!-- compile -->

```cangjie
// index.cj

import kit.TestKit.*

let driver: Driver = Driver.create()
driver.pressHome()
```

### func screenCap(String)

```cangjie
public func screenCap(savePath: String): Bool
```

**Function:** The [Driver](#class-driver) object captures the current screen and saves it as a PNG image to the path specified by the parameter.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| savePath | String | Yes | - | File save path. |

**Return Value:**

| Type | Description |
|:----|:----|
| Bool | Whether the screenshot operation was successfully completed. true if successful, false otherwise. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
driver.screenCap("/data/storage/el2/base/cache/1.png")
```

### func screenCapture(String, Rect)

```cangjie
public func screenCapture(savePath: String, rect!: Rect = Rect(0,0,0,0))): Bool
```

**Function:** Captures the current screen and saves it as a PNG image to the path specified by the parameter.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| savePath | String | Yes | - | File save path. |
| rect | [Rect](#class-rect) | No | Rect(0, 0, 0, 0) | **Named parameter.** Screenshot area, defaults to full screen. |

**Return Value:**

| Type | Description |
|:----|:----|
| Bool | Whether the screenshot operation was successfully completed. true if successful, false otherwise. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
driver.screenCapture("/data/storage/el2/base/cache/1.png", rect: Rect(0, 0, 100, 100))
```

### func setDisplayRotation(DisplayRotation)

```cangjie
public func setDisplayRotation(rotation: DisplayRotation): Unit
```

**Function:** Sets the device's screen display orientation to the specified display orientation.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| rotation | [DisplayRotation](#enum-displayrotation) | Yes | - | The device's display orientation. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
driver.setDisplayRotation(DisplayRotation.Rotation180)
```

### func setDisplayRotationEnabled(Bool)

```cangjie
public func setDisplayRotationEnabled(enabled: Bool): Unit
```

**Function:** Enables or disables the device's screen rotation functionality.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| enabled | Bool | Yes | - | Flag indicating whether screen rotation is enabled. true: enabled, false: disabled. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
driver.setDisplayRotationEnabled(false)
```

### func swipe(Int32, Int32, Int32, Int32, Int32)

```cangjie
public func swipe(
    startx: Int32,
    starty: Int32,
    endx: Int32,
    endy: Int32,
    speed!: Int32 = 600
): Unit
```

**Function:** The [Driver](#class-driver) object performs a swipe operation from the starting coordinates to the destination coordinates.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| startx | Int32 | Yes | - | The x-coordinate of the starting point, passed as an Int32. |
| starty | Int32 | Yes | - | The y-coordinate of the starting point, passed as an Int32. |
| endx | Int32 | Yes | - | The x-coordinate of the destination point, passed as an Int32. |
| endy | Int32 | Yes | - | The y-coordinate of the destination point, passed as an Int32. |
| speed | Int32 | No | 600 | **Named parameter.** Swipe speed, range: 200-15000. If out of range, the default value is 600. Unit: pixels/second. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
driver.swipe(100, 100, 200, 200, speed: 600)
```

### func triggerCombineKeys(Int32, Int32, Int32)

```cangjie
public func triggerCombineKeys(key0: Int32, key1: Int32, key2!: Int32 = 0): Unit
```

**Function:** The [Driver](#class-driver) object finds and clicks the corresponding key combination based on the given key values. For example, when the Key values are (2072, 2019), the [Driver](#class-driver) object finds and clicks the corresponding key combination, such as CTRL+C.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| key0 | Int32 | Yes | - | The first specified key value. |
| key1 | Int32 | Yes | - | The second specified key value. |
| key2 | Int32 | No | 0 | **Named parameter.** The third specified key value. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [uitest Error Codes](../../errorcodes/cj-errorcode-uitest.md) and [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
driver.triggerCombineKeys(2072, 2047, key2: 2035)
```

### func triggerKey(Int32)

```cangjie
public func triggerKey(keyCode: Int32): Unit
```

**Function:** The [Driver](#class-driver) object simulates pressing the corresponding key by passing in a key value.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| keyCode |## class On

```cangjie
public class On {
    public init()
}
```

**Function:** In the UiTest framework, the `On` class provides rich control feature description APIs for filtering controls to match or locate target controls.

The APIs provided by [On](#class-on) have the following characteristics:

1. Supports single-attribute matching and multi-attribute combination matching, such as simultaneously specifying the target control's text and id.

2. Control attributes support multiple matching patterns.

3. Supports absolute positioning and relative positioning of controls. APIs like [isBefore](#func-isbeforeon) and [isAfter](#func-isafteron) can be used to constrain neighboring control features for auxiliary positioning.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### init()

```cangjie
public init()
```

**Function:** Creates an instance of [On](#class-on).

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### func checkable(Bool)

```cangjie
public func checkable(b!: Bool = true): On
```

**Function:** Specifies the checkable state attribute of the target control and returns the [On](#class-on) object itself.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| b | Bool | No | true | **Named parameter.** Specifies whether the control can be checked. `true`: checkable, `false`: not checkable. Default is `false`. |

**Return Value:**

| Type | Description |
|:----|:----|
| [On](#class-on) | Returns the [On](#class-on) object with the specified checkable state attribute of the target control. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [uitest error codes](../../errorcodes/cj-errorcode-uitest.md) and [universal error codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. 1. Incorrect parameter types; 2. Parameter verification failed. |

**Example:**

<!-- compile -->

```cangjie
//example_test.cj

import kit.TestKit.*

@Test
class TestExample00 {
    @TestCase
    func test00(): Unit {
        unittest()
    }
    @TestCase
    func test01(): Unit {
        let on: On = On().checkable(b: true) // Specifies the checkable state attribute of the target control.
    }
}
```

### func checked(Bool)

```cangjie
public func checked(b!: Bool = true): On
```

**Function:** Specifies the checked state attribute of the target control and returns the [On](#class-on) object itself.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| b | Bool | No | true | **Named parameter.** Specifies the checked state of the control. `true`: checked, `false`: unchecked. Default is `false`. |

**Return Value:**

| Type | Description |
|:----|:----|
| [On](#class-on) | Returns the [On](#class-on) object with the specified checked state attribute of the target control. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [uitest error codes](../../errorcodes/cj-errorcode-uitest.md) and [universal error codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Incorrect parameter types; 2. Parameter verification failed. |

**Example:**

<!-- compile -->

```cangjie
//example_test.cj

import kit.TestKit.*

@Test
class TestExample00 {
    @TestCase
    func test00(): Unit {
        unittest()
    }
    @TestCase
    func test01(): Unit {
        let on: On = On().checked(b: true) // Specifies the checked state attribute of the target control.
    }
}
```

### func clickable(Bool)

```cangjie
public func clickable(b!: Bool = true): On
```

**Function:** Specifies the clickable state attribute of the target control and returns the [On](#class-on) object itself.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| b | Bool | No | true | **Named parameter.** Specifies the clickable state of the control. `true`: clickable, `false`: not clickable. Default is `true`. |

**Return Value:**

| Type | Description |
|:----|:----|
| [On](#class-on) | Returns the [On](#class-on) object with the specified clickable state attribute of the target control. |

**Example:**

<!-- compile -->

```cangjie
//example_test.cj

import kit.TestKit.*

@Test
class TestExample00 {
    @TestCase
    func test00(): Unit {
        unittest()
    }
    @TestCase
    func test01(): Unit {
        let on: On = On().clickable(b: true) // Specifies the clickable state attribute of the target control.
    }
}
```

### func description(String, MatchPattern)

```cangjie
public func description(val: String, pattern!: MatchPattern = MatchPattern.Equals): On
```

**Function:** Specifies the description attribute of the target control, supporting multiple matching patterns, and returns the [On](#class-on) object itself.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| val | String | Yes | - | The description attribute of the control. |
| pattern | [MatchPattern](#enum-matchpattern) | No | MatchPattern.Equals | **Named parameter.** Specifies the text matching pattern. Default is `EQUALS`. |

**Return Value:**

| Type | Description |
|:----|:----|
| [On](#class-on) | Returns the [On](#class-on) object with the specified control type attribute of the target control. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [uitest error codes](../../errorcodes/cj-errorcode-uitest.md) and [universal error codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | if the input parameters are invalid. |

**Example:**

<!-- compile -->

```cangjie
//example_test.cj

import kit.TestKit.*

@Test
class TestExample00 {
    @TestCase
    func test00(): Unit {
        unittest()
    }
    @TestCase
    func test01(): Unit {
        let on: On = On().description("123") // Specifies the control type attribute of the target control.
    }
}
```

### func enabled(Bool)

```cangjie
public func enabled(b!: Bool = true): On
```

**Function:** Specifies the enabled state attribute of the target control and returns the [On](#class-on) object itself.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| b | Bool | No | true | **Named parameter.** Specifies the enabled state of the control. `true`: enabled, `false`: disabled. Default is `true`. |

**Return Value:**

| Type | Description |
|:----|:----|
| [On](#class-on) | Returns the [On](#class-on) object with the specified enabled state attribute of the target control. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [uitest error codes](../../errorcodes/cj-errorcode-uitest.md) and [universal error codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Incorrect parameter types; 2. Parameter verification failed. |

**Example:**

<!-- compile -->

```cangjie
//example_test.cj

import kit.TestKit.*

@Test
class TestExample00 {
    @TestCase
    func test00(): Unit {
        unittest()
    }
    @TestCase
    func test01(): Unit {
        let on: On = On().enabled(b: true) // Specifies the enabled state attribute of the target control.
    }
}
```

### func focused(Bool)

```cangjie
public func focused(b!: Bool = true): On
```

**Function:** Specifies the focused state attribute of the target control and returns the [On](#class-on) object itself.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| b | Bool | No | true | **Named parameter.** Specifies the focused state of the control. `true`: focused, `false`: not focused. Default is `true`. |

**Return Value:**

| Type | Description |
|:----|:----|
| [On](#class-on) | Returns the [On](#class-on) object with the specified focused state attribute of the target control. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [uitest error codes](../../errorcodes/cj-errorcode-uitest.md) and [universal error codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Incorrect parameter types; 2. Parameter verification failed. |

**Example:**

<!-- compile -->

```cangjie
//example_test.cj

import kit.TestKit.*

@Test
class TestExample00 {
    @TestCase
    func test00(): Unit {
        unittest()
    }
    @TestCase
    func test01(): Unit {
        let on: On = On().focused(b: true) // Specifies the focused state attribute of the target control.
    }
}
```

### func id(String)

```cangjie
public func id(id: String): On
```

**Function:** Specifies the id attribute of the target control and returns the [On](#class-on) object itself.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| id | String | Yes | - | The id value of the specified control. |

**Return Value:**

| Type | Description |
|:----|:----|
| [On](#class-on) | Returns the [On](#class-on) object with the specified id attribute of the target control. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [uitest error codes](../../errorcodes/cj-errorcode-uitest.md) and [universal error codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**Example:**

<!-- compile -->

```cangjie
//example_test.cj

import kit.TestKit.*

@Test
class TestExample00 {
    @TestCase
    func test00(): Unit {
        unittest()
    }
    @TestCase
    func test01(): Unit {
        let on: On = On().id("123") // Specifies the id attribute of the target control.
    }
}
```### func inWindow(String)

```cangjie
public func inWindow(bundleName: String): On
```

**Function:** Specifies that the target control is within the given application window, returning the [On](#class-on) object itself.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| bundleName | String | Yes | - | The package name of the application window. |

**Return Value:**

| Type | Description |
|:----|:----|
| [On](#class-on) | Returns the [On](#class-on) object specifying that the target control is within the given application window. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [uitest Error Codes](../../errorcodes/cj-errorcode-uitest.md) and [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**Example:**

<!-- compile -->

```cangjie
//example_test.cj

import kit.TestKit.*

@Test
class TestExample00 {
    @TestCase
    func test00(): Unit {
        unittest()
    }
    @TestCase
    func test01(): Unit {
        let on: On = On().inWindow("com.uitestScene.acts") // Specifies that the target control is within the given application window.
    }
}
```

### func isAfter(On)

```cangjie
public func isAfter(on: On): On
```

**Function:** Specifies that the target control is located after the given characteristic attribute control, returning the [On](#class-on) object itself.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| on | [On](#class-on) | Yes | - | The attribute requirements of the characteristic control. |

**Return Value:**

| Type | Description |
|:----|:----|
| [On](#class-on) | Returns the [On](#class-on) object specifying that the target control is located after the given characteristic attribute control. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [uitest Error Codes](../../errorcodes/cj-errorcode-uitest.md) and [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**Example:**

<!-- compile -->

```cangjie
//example_test.cj

import kit.TestKit.*

@Test
class TestExample00 {
    @TestCase
    func test00(): Unit {
        unittest()
    }
    @TestCase
    func test01(): Unit {
        let on1: On = On().text("123") // Specifies the characteristic attribute control
        let on2: On = On().onType("Text").isAfter(on1)  // Finds the first Text component after the control with text "123"
    }
}
```

### func isBefore(On)

```cangjie
public func isBefore(on: On): On
```

**Function:** Specifies that the target control is located before the given characteristic attribute control, returning the [On](#class-on) object itself.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| on | [On](#class-on) | Yes | - | The attribute requirements of the characteristic control. |

**Return Value:**

| Type | Description |
|:----|:----|
| [On](#class-on) | Returns the [On](#class-on) object specifying that the target control is located before the given characteristic attribute control. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [uitest Error Codes](../../errorcodes/cj-errorcode-uitest.md) and [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**Example:**

<!-- compile -->

```cangjie
//example_test.cj

import kit.TestKit.*

@Test
class TestExample00 {
    @TestCase
    func test00(): Unit {
        unittest()
    }
    @TestCase
    func test01(): Unit {
        let on1: On = On().text("123") // Specifies the characteristic attribute control
        let on2: On = On().onType("Button").isBefore(on1)  // Finds the first Button component before the control with text "123"
    }
}
```

### func longClickable(Bool)

```cangjie
public func longClickable(b!: Bool = true): On
```

**Function:** Specifies the long-clickable state attribute of the target control, returning the [On](#class-on) object itself.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| b | Bool | No | true | **Named parameter.** Specifies the long-clickable state of the control: true for long-clickable, false for non-long-clickable. Default is true. |

**Return Value:**

| Type | Description |
|:----|:----|
| [On](#class-on) | Returns the [On](#class-on) object specifying the long-clickable state attribute of the target control. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [uitest Error Codes](../../errorcodes/cj-errorcode-uitest.md) and [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Incorrect parameter types; 2. Parameter verification failed. |

**Example:**

<!-- compile -->

```cangjie
//example_test.cj

import kit.TestKit.*

@Test
class TestExample00 {
    @TestCase
    func test00(): Unit {
        unittest()
    }
    @TestCase
    func test01(): Unit {
        let on: On = On().longClickable(b: true) // Specifies the long-clickable state attribute of the target control.
    }
}
```

### func onType(String)

```cangjie
public func onType(tp: String): On
```

**Function:** Specifies the control type attribute of the target control, returning the [On](#class-on) object itself.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| tp | String | Yes | - | Specifies the control type. |

**Return Value:**

| Type | Description |
|:----|:----|
| [On](#class-on) | Returns the [On](#class-on) object specifying the control type attribute of the target control. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [uitest Error Codes](../../errorcodes/cj-errorcode-uitest.md) and [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**Example:**

<!-- compile -->

```cangjie
//example_test.cj

import kit.TestKit.*

@Test
class TestExample00 {
    @TestCase
    func test00(): Unit {
        unittest()
    }
    @TestCase
    func test01(): Unit {
        let on: On = On().onType("Button") // Specifies the control type attribute of the target control.
    }
}
```

### func scrollable(Bool)

```cangjie
public func scrollable(b!: Bool = true): On
```

**Function:** Specifies the scrollable state attribute of the target control, returning the [On](#class-on) object itself.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| b | Bool | No | true | **Named parameter.** Specifies the scrollable state of the control: true for scrollable, false for non-scrollable. Default is true. |

**Return Value:**

| Type | Description |
|:----|:----|
| [On](#class-on) | Returns the [On](#class-on) object specifying the scrollable state attribute of the target control. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [uitest Error Codes](../../errorcodes/cj-errorcode-uitest.md) and [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Incorrect parameter types; 2. Parameter verification failed. |

**Example:**

<!-- compile -->

```cangjie
//example_test.cj

import kit.TestKit.*

@Test
class TestExample00 {
    @TestCase
    func test00(): Unit {
        unittest()
    }
    @TestCase
    func test01(): Unit {
        let on: On = On().scrollable(b: true) // Specifies the scrollable state attribute of the target control.
    }
}
```

### func selected(Bool)

```cangjie
public func selected(b!: Bool = true): On
```

**Function:** Specifies the selected state attribute of the target control, returning the [On](#class-on) object itself.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| b | Bool | No | true | **Named parameter.** Specifies the selected state of the control: true for selected, false for unselected. Default is true. |

**Return Value:**

| Type | Description |
|:----|:----|
| [On](#class-on) | Returns the [On](#class-on) object specifying the selected state attribute of the target control. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [uitest Error Codes](../../errorcodes/cj-errorcode-uitest.md) and [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Incorrect parameter types; 2. Parameter verification failed. |

**Example:**

<!-- compile -->

```cangjie
//example_test.cj

import kit.TestKit.*

@Test
class TestExample00 {
    @TestCase
    func test00(): Unit {
        unittest()
    }
    @TestCase
    func test01(): Unit {
        let on: On = On().selected(b: true) // Specifies the selected state attribute of the target control.
    }
}
```

### func text(String, MatchPattern)

```cangjie
public func text(txt: String, pattern!: MatchPattern = MatchPattern.Equals): On
```

**Function:** Specifies the text attribute of the target control, supporting multiple matching patterns, and returns the [On](#class-on) object itself.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| txt | String | Yes | - | Specifies the control text for matching the target control text. |
| pattern | [MatchPattern](#enum-matchpattern) | No | MatchPattern.Equals | **Named parameter.** Specifies the text matching pattern, default is EQUALS. |

**Return Value:**

| Type | Description |
|:----|:----|
| [On](#class-on) | Returns the [On](#class-on) object specifying the text attribute of the target control. |

**Example:**

<!-- compile -->

```cangjie
//example_test.cj

import kit.TestKit.*

@Test
class TestExample00 {
    @TestCase
    func test00(): Unit {
        unittest()
    }
    @TestCase
    func test01(): Unit {
        let on: On = On().text("123") // Specifies the text attribute of the target control.
    }
}
```

### func within(On)

```cangjie
public func within(on: On): On
```

**Function:** Specifies that the target control is within the given characteristic attribute control, returning the [On](#class-on) object itself.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| on | [On](#class-on) | Yes | - | The attribute requirements of the characteristic control. |

**Return Value:**

| Type | Description |
|:----|:----|
| [On](#class-on) | Returns the [On](#class-on) object specifying that the target control is within the given characteristic attribute control. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [uitest Error Codes](../../errorcodes/cj-errorcode-uitest.md) and [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**Example:**

<!-- compile -->

```cangjie
//example_test.cj

import kit.TestKit.*

@Test
class TestExample00 {
    @TestCase
    func test00(): Unit {
        unittest()
    }
    @TestCase
    func test01(): Unit {
        let on1: On = On().onType("Scroll") // Specifies the characteristic attribute control
        let on2: On = On().text("123").within(on1) // Finds the child component with text "123" within the Scroller
    }
}
```## class Point

```cangjie
public class Point {
    public var x: Int32
    public var y: Int32
    public var displayId:?Int32
    public init(x: Int32, y: Int32, displayId!: ?Int32 = None)
}
```

**Function:** Coordinate point information.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### var displayId

```cangjie
public var displayId:?Int32
```

**Function:** The screen ID to which the coordinate point belongs.

**Type:** ?Int32

**Read/Write Permission:** Readable and writable

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### var x

```cangjie
public var x: Int32
```

**Function:** The x-coordinate of the point.

**Type:** Int32

**Read/Write Permission:** Readable and writable

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### var y

```cangjie
public var y: Int32
```

**Function:** The y-coordinate of the point.

**Type:** Int32

**Read/Write Permission:** Readable and writable

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### init(Int32, Int32, ?Int32)

```cangjie
public init(x: Int32, y: Int32, displayId!: ?Int32 = None)
```

**Function:** Creates a Point instance.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| x | Int32 | Yes | - | The x-coordinate of the point. |
| y | Int32 | Yes | - | The y-coordinate of the point. |
| displayId | ?Int32 | No | None | **Named parameter.** The screen ID to which the coordinate point belongs. Valid values: integers greater than or equal to 0. |


## class PointerMatrix

```cangjie
public class PointerMatrix {}
```

**Function:** Used for multi-touch operations, storing a two-dimensional array of coordinate points for each finger and the action for each step.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### static func create(Int32, Int32)

```cangjie
public static func create(fingers: Int32, steps: Int32): PointerMatrix
```

**Function:** A static method that constructs a [PointerMatrix](#class-pointermatrix) object and returns it.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| fingers | Int32 | Yes | - | The number of fingers to inject in the multi-touch operation. Valid range: [1, 10]. |
| steps | Int32 | Yes | - | The number of steps for each finger operation. Valid range: [1, 1000]. |

**Return Value:**

| Type | Description |
|:----|:----|
| [PointerMatrix](#class-pointermatrix) | Returns the constructed [PointerMatrix](#class-pointermatrix) object. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. See [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let pointerMatrix: PointerMatrix = PointerMatrix.create(2, 3)
```

### func setPoint(Int32, Int32, Point)

```cangjie
public func setPoint(finger: Int32, step: Int32, point: Point): Unit
```

**Function:** Sets the coordinate point for the specified finger and step action in the [PointerMatrix](#class-pointermatrix) object.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| finger | Int32 | Yes | - | The index of the finger. |
| step | Int32 | Yes | - | The index of the step. |
| point | [Point](#class-point) | Yes | - | The coordinate point for the action. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. See [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import kit.TestKit.*
import ohos.ui_test.Point as PT

let pointerMatrix: PointerMatrix = PointerMatrix.create(2, 3)
pointerMatrix.setPoint(0, 0, PT(230, 480))
pointerMatrix.setPoint(0, 1, PT(250, 380))
pointerMatrix.setPoint(0, 2, PT(270, 280))
pointerMatrix.setPoint(1, 0, PT(230, 680))
pointerMatrix.setPoint(1, 1, PT(240, 580))
pointerMatrix.setPoint(1, 2, PT(250, 480))
```


## class Rect

```cangjie
public class Rect {
    public var left: Int32
    public var top: Int32
    public var right: Int32
    public var bottom: Int32
    public var displayId:?Int32
    public init(left: Int32, top: Int32, right: Int32, bottom: Int32, displayId!: ?Int32 = None)
}
```

**Function:** Border information of a control.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### var bottom

```cangjie
public var bottom: Int32
```

**Function:** The Y-coordinate of the bottom-right corner of the control's border.

**Type:** Int32

**Read/Write Permission:** Readable and writable

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### var displayId

```cangjie
public var displayId:?Int32
```

**Function:** The screen ID to which the control's border belongs.

**Type:** ?Int32

**Read/Write Permission:** Readable and writable

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### var left

```cangjie
public var left: Int32
```

**Function:** The X-coordinate of the top-left corner of the control's border.

**Type:** Int32

**Read/Write Permission:** Readable and writable

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### var right

```cangjie
public var right: Int32
```

**Function:** The X-coordinate of the bottom-right corner of the control's border.

**Type:** Int32

**Read/Write Permission:** Readable and writable

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### var top

```cangjie
public var top: Int32
```

**Function:** The Y-coordinate of the top-left corner of the control's border.

**Type:** Int32

**Read/Write Permission:** Readable and writable

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### init(Int32, Int32, Int32, Int32, ?Int32)

```cangjie
public init(left: Int32, top: Int32, right: Int32, bottom: Int32, displayId!: ?Int32 = None)
```

**Function:** Creates a [Rect](#class-rect) instance.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| left | Int32 | Yes | - | The X-coordinate of the top-left corner of the control's border. |
| top | Int32 | Yes | - | The Y-coordinate of the top-left corner of the control's border. |
| right | Int32 | Yes | - | The X-coordinate of the bottom-right corner of the control's border. |
| bottom | Int32 | Yes | - | The Y-coordinate of the bottom-right corner of the control's border. |
| displayId | ?Int32 | No | None | **Named parameter.** The screen ID to which the control's border belongs. Valid values: integers greater than or equal to 0. |


## class TestRunner

```cangjie
public open class TestRunner <: FFIData {}
```

**Function:** Provides framework testing capabilities.

**System Capability:** SystemCapability.Ability.AbilityRuntime.Core

**Since:** 21

**Parent Type:**

- [FFIData](../AbilityKit/cj-apis-ability.md#class-ffidata)

### static func registerCreator(String, () -> TestRunner)

```cangjie
public static func registerCreator(name: String, creator: () -> TestRunner): Unit
```

**Function:** Registers a function to construct a [TestRunner](#class-testrunner) object.

**System Capability:** SystemCapability.Ability.AbilityRuntime.Core

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| name | String | Yes | - | The identifier of the constructor function. |
| creator | ()->[TestRunner](#class-testrunner) | Yes | - | The function to construct a [TestRunner](#class-testrunner) object. |

### func onPrepare()

```cangjie
public open func onPrepare(): Unit
```

**Function:** Executes test cases.

**System Capability:** SystemCapability.Ability.AbilityRuntime.Core

**Since:** 21

### func onRun()

```cangjie
public open func onRun(): Unit
```

**Function:** Prepares the unit test environment for running test cases.

**System Capability:** SystemCapability.Ability.AbilityRuntime.Core

**Since:** 21


## class UIElementInfo

```cangjie
public class UIElementInfo {
    public let bundleName: String
    public let componentType: String
    public let text: String
}
```

**Function:** Information related to UI events.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### let bundleName

```cangjie
public let bundleName: String
```

**Function:** The package name of the owning application.

**Type:** String

**Read/Write Permission:** Read-only

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### let componentType

```cangjie
public let componentType: String
```

**Function:** The type of the control or window.

**Type:** String

**Read/Write Permission:** Read-only

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### let text

```cangjie
public let text: String
```

**Function:** The text information of the control or window.

**Type:** String

**Read/Write Permission:** Read-only

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21## class UIEventObserver

```cangjie
public class UIEventObserver {}
```

**Description:** UI event observer.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### func once(OnceType, Callback\<UIElementInfo>)

```cangjie
public func once(onceType: OnceType, callback: Callback<UIElementInfo>): Unit
```

**Description:** Listens for the appearance event of a specified component.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| onceType | [OnceType](#enum-oncetype) | Yes | - | Component type. |
| callback | [Callback](./../BasicServicesKit/cj-apis-base.md#type-callback)\<[UIElementInfo](#class-uielementinfo)> | Yes | - | Callback function executed when the event occurs. |

**Exceptions:**

- BusinessException: Error codes are listed below. For details, see [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |


## class UITest

```cangjie
public class UITest {}
```

**Description:** The [UITest](#class-uitest) class contains only one static method [setup](#func-setup) for initializing the ui_test library.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### static func setup()

```cangjie
public static func setup(): Unit
```

**Description:** Initializes the ui_test library. Currently, [setup](#func-setup) must be called within [onRun](#func-onrun) of [TestRunner](#class-testrunner).

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Example:**

<!-- compile -->

```cangjie
// unittest_enginge.cj
import ohos.base.*
import kit.TestKit.*
import ohos.test_runner.*

class MyTestRunner <: TestRunner {
    public func onRun() {
        UITest.setup()
    }

    public func onPrepare() {
        Hilog.info(0, "AppLogCj", "CJTestRunner onPrepare")
    }
}

let _ = TestRunner.registerCreator("MyTestRunner") {MyTestRunner()}
```


## class UiWindow

```cangjie
public class UiWindow {}
```

**Description:** [UiWindow](#class-uiwindow) represents a window on the UI interface, providing capabilities to obtain window properties, drag windows, resize windows, etc.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### func close()

```cangjie
public func close(): Unit
```

**Description:** Closes the window.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Exceptions:**

- BusinessException: Error codes are listed below. For details, see [uitest Error Codes](../../errorcodes/cj-errorcode-uitest.md) and [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |
  | 17000005 | This operation is not supported. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
let window: Option<UiWindow> = driver.findWindow(WindowFilter(active: true))
window?.close()
```

### func focus()

```cangjie
public func focus(): Unit
```

**Description:** Sets focus to the window.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Exceptions:**

- BusinessException: Error codes are listed below. For details, see [uitest Error Codes](../../errorcodes/cj-errorcode-uitest.md) and [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
let window: Option<UiWindow> = driver.findWindow(WindowFilter(active: true))
window?.focus()
```

### func getBounds()

```cangjie
public func getBounds(): Rect
```

**Description:** Obtains the border information of the window.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Return Value:**

| Type | Description |
|:----|:----|
| [Rect](#class-rect) | Returns the border information of the window. |

**Exceptions:**

- BusinessException: Error codes are listed below. For details, see [uitest Error Codes](../../errorcodes/cj-errorcode-uitest.md) and [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
let window: Option<UiWindow> = driver.findWindow(WindowFilter(active: true))
let rect = window?.getBounds()
```

### func getBundleName()

```cangjie
public func getBundleName(): String
```

**Description:** Obtains the package name of the application to which the window belongs.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Return Value:**

| Type | Description |
|:----|:----|
| String | Returns the package name of the application to which the window belongs. |

**Exceptions:**

- BusinessException: Error codes are listed below. For details, see [uitest Error Codes](../../errorcodes/cj-errorcode-uitest.md) and [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
let window: Option<UiWindow> = driver.findWindow(WindowFilter(active: true))
let rect = window?.getBundleName()
```

### func getTitle()

```cangjie
public func getTitle(): String
```

**Description:** Obtains the title information of the window.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Return Value:**

| Type | Description |
|:----|:----|
| String | Returns the title information of the window. |

**Exceptions:**

- BusinessException: Error codes are listed below. For details, see [uitest Error Codes](../../errorcodes/cj-errorcode-uitest.md) and [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
let window: Option<UiWindow> = driver.findWindow(WindowFilter(active: true))
let title: Option<String> = window?.getTitle()
```

### func getWindowMode()

```cangjie
public func getWindowMode(): WindowMode
```

**Description:** Obtains the window mode information of the window.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Return Value:**

| Type | Description |
|:----|:----|
| [WindowMode](#enum-windowmode) | Returns the window mode information of the window. |

**Exceptions:**

- BusinessException: Error codes are listed below. For details, see [uitest Error Codes](../../errorcodes/cj-errorcode-uitest.md) and [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
let window: Option<UiWindow> = driver.findWindow(WindowFilter(active: true))
let mode = window?.getWindowMode()
```

### func isActive()

```cangjie
public func isActive(): Bool
```

**Description:** Checks whether the window is the one currently interacting with the user.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Return Value:**

| Type | Description |
|:----|:----|
| Bool | Returns the interaction state of the window object: true for active, false for inactive. |

**Exceptions:**

- BusinessException: Error codes are listed below. For details, see [uitest Error Codes](../../errorcodes/cj-errorcode-uitest.md) and [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
let window: Option<UiWindow> = driver.findWindow(WindowFilter(active: true))
let active = window?.isActive()
```

### func isFocused()

```cangjie
public func isFocused(): Bool
```

**Description:** Checks whether the window is in focus.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Return Value:**

| Type | Description |
|:----|:----|
| Bool | Returns whether the window object is in focus: true for focused, false for unfocused. |

**Exceptions:**

- BusinessException: Error codes are listed below. For details, see [uitest Error Codes](../../errorcodes/cj-errorcode-uitest.md) and [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
let window: Option<UiWindow> = driver.findWindow(WindowFilter(active: true))
let focused = window?.isFocused()
```

### func maximize()

```cangjie
public func maximize(): Unit
```

**Description:** Maximizes the window. Applicable to windows that support the maximize operation.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Exceptions:**

- BusinessException: Error codes are listed below. For details, see [uitest Error Codes](../../errorcodes/cj-errorcode-uitest.md) and [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |
  | 17000005 | This operation is not supported. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
let window: Option<UiWindow> = driver.findWindow(WindowFilter(active: true))
window?.maximize()
```

### func minimize()

```cangjie
public func minimize(): Unit
```

**Description:** Minimizes the window. Applicable to windows that support the minimize operation.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Exceptions:**

- BusinessException: Error codes are listed below. For details, see [uitest Error Codes](../../errorcodes/cj-errorcode-uitest.md) and [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |
  | 17000005 | This operation is not supported. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
let window: Option<UiWindow> = driver.findWindow(WindowFilter(active: true))
window?.minimize()
```

### func moveTo(Int32, Int32)

```cangjie
public func moveTo(x: Int32, y: Int32): Unit
```

**Description:** Moves the window to the target point. Applicable to windows that support movement.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| x | Int32 | Yes | - | The x-coordinate of the target point in IntNative format. |
| y | Int32 | Yes | - | The y-coordinate of the target point in IntNative format. |

**Exceptions:**

- BusinessException: Error codes are listed below. For details, see [uitest Error Codes](../../errorcodes/cj-errorcode-uitest.md) and [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |
  | 17000004 | The window or component is invisible or destroyed. |
  | 17000005 | This operation is not supported. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
let window: Option<UiWindow> = driver.findWindow(WindowFilter(active: true))
window?.moveTo(100, 100)
```

### func resize(Int32, Int32, ResizeDirection)

```cangjie
public func resize(wide: Int32, height: Int32, direction: ResizeDirection): Unit
```

**Description:** Resizes the window based on the specified width, height, and resize direction. Applicable to windows that support resizing.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| wide | Int32 | Yes | - | The width of the resized window in IntNative format. |
| height | Int32 | Yes | - | The height of the resized window in IntNative format. |
| direction | [ResizeDirection](#enum-resizedirection) | Yes | - | The direction in which the window is resized, in ResizeDirection format. |

**Exceptions:**

- BusinessException: Error codes are listed below. For details, see [uitest Error Codes](../../errorcodes/cj-errorcode-uitest.md) and [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |
  | 17000004 | The window or component is invisible or destroyed. |
  | 17000005 | This operation is not supported. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
let window: Option<UiWindow> = driver.findWindow(WindowFilter(active: true))
window?.resize(100, 100, ResizeDirection.Left)
```

### func resume()

```cangjie
public func resume(): Unit
```

**Description:** Restores the window to its previous window mode.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Exceptions:**

- BusinessException: Error codes are listed below. For details, see [uitest Error Codes](../../errorcodes/cj-errorcode-uitest.md) and [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |
  | 17000005 | This operation is not supported. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
let window: Option<UiWindow> = driver.findWindow(WindowFilter(active: true))
window?.resume()
```

### func split()

```cangjie
public func split(): Unit
```

**Description:** Switches the window mode to split-screen mode. Applicable to windows that support switching to split-screen mode.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Exceptions:**

- BusinessException: Error codes are listed below. For details, see [uitest Error Codes](../../errorcodes/cj-errorcode-uitest.md) and [Universal Error Codes](../../errorcodes/cj-errorcode-universal.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |
  | 17000005 | This operation is not supported. |

**Example:**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
let window: Option<UiWindow> = driver.findWindow(WindowFilter(active: true))
window?.split()
```## class WindowFilter

```cangjie
public class WindowFilter {
    public var bundleName:?String
    public var title:?String
    public var focused:?Bool
    public var active:?Bool
    public var displayId:?Int32
    public init(bundleName!: String = "", title!: String = "", focused!: Bool = false, active!: Bool = false, displayId!: ?Int32 = None)
}
```

**Function:** Property information of a window.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### var active

```cangjie
public var active:?Bool
```

**Function:** Whether the window is interacting with the user.

**Type:** ?Bool

**Access:** Read-write

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### var bundleName

```cangjie
public var bundleName:?String
```

**Function:** Package name of the application to which the window belongs.

**Type:** ?String

**Access:** Read-write

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### var displayId

```cangjie
public var displayId:?Int32
```

**Function:** Screen ID to which the control border belongs.

**Type:** ?Int32

**Access:** Read-write

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### var focused

```cangjie
public var focused:?Bool
```

**Function:** Whether the window is in focused state.

**Type:** ?Bool

**Access:** Read-write

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### var title

```cangjie
public var title:?String
```

**Function:** Title information of the window.

**Type:** ?String

**Access:** Read-write

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### init(String, String, Bool, Bool, ?Int32)

```cangjie
public init(bundleName!: String = "", title!: String = "", focused!: Bool = false, active!: Bool = false, displayId!: ?Int32 = None)
```

**Function:** Creates a [WindowFilter](#class-windowfilter) instance.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parameters:**

| Name | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| bundleName | String | No | "" | **Named parameter.** Package name of the application to which the window belongs. |
| title | String | No | "" | **Named parameter.** Title information of the window. |
| focused | Bool | No | false | **Named parameter.** Whether the window is in focused state. |
| active | Bool | No | false | **Named parameter.** Whether the window is interacting with the user. |
| displayId | ?Int32 | No | None | **Named parameter.** Screen ID to which the control border belongs. The value must be an integer greater than or equal to 0. |


## enum DisplayRotation

```cangjie
public enum DisplayRotation {
    | Rotation0
    | Rotation90
    | Rotation180
    | Rotation270
    | ...
}
```

**Function:** Display orientation of the device screen.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### Rotation0

```cangjie
Rotation0
```

**Function:** The device screen is not rotated and displays vertically in its initial state.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### Rotation180

```cangjie
Rotation180
```

**Function:** The device screen is rotated 180° clockwise, displaying vertically in reverse.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### Rotation270

```cangjie
Rotation270
```

**Function:** The device screen is rotated 270° clockwise, displaying horizontally in reverse.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### Rotation90

```cangjie
Rotation90
```

**Function:** The device screen is rotated 90° clockwise, displaying horizontally.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21


## enum MatchPattern

```cangjie
public enum MatchPattern {
    | Equals
    | Contains
    | StartsWith
    | EndsWith
    | ...
}
```

**Function:** Supported matching patterns for control properties.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### Contains

```cangjie
Contains
```

**Function:** Contains the given value.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### EndsWith

```cangjie
EndsWith
```

**Function:** Ends with the given value.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### Equals

```cangjie
Equals
```

**Function:** Equals the given value.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### StartsWith

```cangjie
StartsWith
```

**Function:** Starts with the given value.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21


## enum MouseButton

```cangjie
public enum MouseButton {
    | MouseButtonLeft
    | MouseButtonRight
    | MouseButtonMiddle
    | ...
}
```

**Function:** Simulated injected mouse buttons.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### MouseButtonLeft

```cangjie
MouseButtonLeft
```

**Function:** Left mouse button.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### MouseButtonMiddle

```cangjie
MouseButtonMiddle
```

**Function:** Middle mouse button.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### MouseButtonRight

```cangjie
MouseButtonRight
```

**Function:** Right mouse button.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21


## enum OnceType

```cangjie
public enum OnceType <: Equatable<OnceType> & ToString {
    | ToastShow
    | DialogShow
    | ...
}
```

**Function:** Types of controls.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

**Parent Types:**

- Equatable\<OnceType>
- ToString

### DialogShow

```cangjie
DialogShow
```

**Function:** Dialog control type.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### ToastShow

```cangjie
ToastShow
```

**Function:** Toast control type.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### func !=(OnceType)

```cangjie
public operator func !=(other: OnceType): Bool
```

**Function:** Determines whether two enum values are not equal.

**Parameters:**

| Name | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| other | [OnceType](#enum-oncetype) | Yes | - | Another enum value. |

**Return Value:**

| Type | Description |
|:----|:----|
| Bool | Returns true if the two enum values are not equal, otherwise returns false. |

### func ==(OnceType)

```cangjie
public operator func ==(other: OnceType): Bool
```

**Function:** Determines whether two enum values are equal.

**Parameters:**

| Name | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| other | [OnceType](#enum-oncetype) | Yes | - | Another enum value. |

**Return Value:**

| Type | Description |
|:----|:----|
| Bool | Returns true if the two enum values are equal, otherwise returns false. |

### func toString()

```cangjie
public func toString(): String
```

**Function:** Gets the value of the enum.

**Return Value:**

| Type | Description |
|:----|:----|
| String | Description of the enum. |## enum ResizeDirection

```cangjie
public enum ResizeDirection {
    | Left
    | Right
    | Up
    | Down
    | LeftUp
    | LeftDown
    | RightUp
    | RightDown
    | ...
}
```

**Function:** Direction for window resizing.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### Down

```cangjie
Down
```

**Function:** Downwards.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### Left

```cangjie
Left
```

**Function:** Leftwards.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### LeftDown

```cangjie
LeftDown
```

**Function:** Lower-left direction.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### LeftUp

```cangjie
LeftUp
```

**Function:** Upper-left direction.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### Right

```cangjie
Right
```

**Function:** Rightwards.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### RightDown

```cangjie
RightDown
```

**Function:** Lower-right direction.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### RightUp

```cangjie
RightUp
```

**Function:** Upper-right direction.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### Up

```cangjie
Up
```

**Function:** Upwards.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21


## enum UiDirection

```cangjie
public enum UiDirection {
    | Left
    | Right
    | Up
    | Down
    | ...
}
```

**Function:** Direction for UI operations such as swiping.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### Down

```cangjie
Down
```

**Function:** Downwards.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### Left

```cangjie
Left
```

**Function:** Leftwards.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### Right

```cangjie
Right
```

**Function:** Rightwards.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### Up

```cangjie
Up
```

**Function:** Upwards.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21


## enum WindowMode

```cangjie
public enum WindowMode {
    | Fullscreen
    | Primary
    | Secondary
    | Floating
    | ...
}
```

**Function:** Window mode.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### Floating

```cangjie
Floating
```

**Function:** Floating window.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### Fullscreen

```cangjie
Fullscreen
```

**Function:** Fullscreen mode.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### Primary

```cangjie
Primary
```

**Function:** Primary window.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21

### Secondary

```cangjie
Secondary
```

**Function:** Secondary window.

**System Capability:** SystemCapability.Test.UiTest

**Since:** 21