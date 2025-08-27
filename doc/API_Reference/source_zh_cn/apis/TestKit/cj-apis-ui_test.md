# ohos.application.test_runner（UI测试）

ui_test提供模拟UI操作的能力，供开发者在测试场景使用，主要支持如点击、双击、长按、滑动等UI操作能力。

该模块提供以下功能：

- [UITest](#class-uitest): [UITest](#class-uitest)类只包含一个静态方法setup，用于初始化ui_test库。
- [On](#class-on)：提供控件特征描述能力，用于控件筛选匹配查找。
- [Component](#class-component)：代表UI界面上的指定控件，提供控件属性获取、控件点击、滑动查找、文本注入等能力。
- [Driver](#class-driver)：入口类，提供控件匹配、查找、按键注入、坐标点击或滑动、截图等能力。
- [UiWindow](#class-uiwindow)：入口类，提供窗口属性获取、窗口拖动、调整窗口大小等能力。


## 导入模块

```cangjie
import kit.TestKit.*
```


## 使用说明

API示例代码使用说明：

- 若示例代码首行有"// index.cj"注释，表示该示例可在仓颉模板工程的"index.cj"文件中编译运行。
- 若示例需获取[Context](../AbilityKit/cj-apis-ability.md#class-context)应用上下文，需在仓颉模板工程中的"main_ability.cj"文件中进行配置。

上述示例工程及配置模板详见[仓颉示例代码说明](../../cj-development-intro.md#仓颉示例代码说明)。


## 运行测试

### 准备工作

- 将支持uitest测试框架的设备连接上pc，pc上装好对应驱动和hdc服务。
- 对于刷机后第一次使用uitest框架的设备，执行`hdc shell param set persist.ace.testmode.enabled 1`并重启设备进行ace使能，保证设备可以通过无障碍服务获取到arkui控件节点信息。
- 执行`hdc shell param set persist.sys.suspend_manager_enabled 0`并重启设备，关闭后台应用冻结机制。

### 测试命令

```text
hdc shell aa test -b com.example.myapplication -m entry -s unittest CJTestRunner
```

- 这里的`-b com.example.myapplication -m entry`按照app里实际的bundle name和module name填。
- 最后的`CJTestRunner`是TestRunner.registerCreator注册TestRunner的第一个参数。

## class Component

```cangjie
public class Component {}
```

**功能：** [Component](#class-component)类代表了UI界面上的一个控件，提供控件属性获取，控件点击，滑动查找，文本注入等API。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### func clearText()

```cangjie
public func clearText(): Unit
```

**功能：** 清除控件的文本信息，适用于文本框控件。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |

### func click()

```cangjie
public func click(): Unit
```

**功能：** 对控件对象进行点击操作。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### func doubleClick()

```cangjie
public func doubleClick(): Unit
```

**功能：** 对控件对象进行双击操作。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### func dragTo(Component)

```cangjie
public func dragTo(target: Component): Unit
```

**功能：** 将控件拖拽至目标控件处。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|target|[Component](#class-component)|是|-|目标控件。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |
  | 17000004 | The window or component is invisible or destroyed. |

### func getBounds()

```cangjie
public func getBounds(): Rect
```

**功能：** 获取控件对象的边框信息。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[Rect](#class-rect)|控件对象的边框信息。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |

### func getBoundsCenter()

```cangjie
public func getBoundsCenter(): Point
```

**功能：** 获取控件对象所占区域的中心点信息。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[Point](#class-point)|控件对象所占区域的中心点信息。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |

### func getDescription()

```cangjie
public func getDescription(): String
```

**功能：** 获取控件对象的描述信息。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|String|控件的描述信息。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |

### func getId()

```cangjie
public func getId(): String
```

**功能：** 获取控件对象的id值。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|String|控件的id值。|

### func getText()

```cangjie
public func getText(): String
```

**功能：** 获取控件对象的文本信息。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|String|控件的文本信息。||

### func getType()

```cangjie
public func getType(): String
```

**功能：** 获取控件对象的控件类型。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|String|控件的类型。|

### func inputText(String)

```cangjie
public func inputText(text: String): Unit
```

**功能：** 向控件中输入文本，适用于文本框控件。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|text|String|是|-|输入的文本信息，当前支持英文和特殊字符。|

### func isCheckable()

```cangjie
public func isCheckable(): Bool
```

**功能：** 判断控件对象能否被勾选。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Bool|控件对象能否可被勾选属性，true：可被勾选，false：不可被勾选。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |

### func isChecked()

```cangjie
public func isChecked(): Bool
```

**功能：** 获取控件对象被勾选状态。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Bool|控件对象被勾选状态，true：被勾选，false：未被勾选。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |

### func isClickable()

```cangjie
public func isClickable(): Bool
```

**功能：** 判断控件对象是否可点击。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Bool|控件对象是否可点击，true：可点击，false：不可点击。|

### func isEnabled()

```cangjie
public func isEnabled(): Bool
```

**功能：** 获取控件使能状态。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Bool|控件使能状态，true：使能，false：未使能。|

### func isFocused()

```cangjie
public func isFocused(): Bool
```

**功能：** 判断控件对象获焦状态。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Bool|控件对象获焦状态，true：获焦，false：未获焦。|

### func isLongClickable()

```cangjie
public func isLongClickable(): Bool
```

**功能：** 判断控件对象是否可长按点击。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Bool|控件对象是否可长按点击，true：可长按点击，false：不可长按点击。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |

### func isScrollable()

```cangjie
public func isScrollable(): Bool
```

**功能：** 判断控件对象是否可滑动。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Bool|控件对象是否可滑动，true：可滑动，false：不可滑动。|

### func isSelected()

```cangjie
public func isSelected(): Bool
```

**功能：** 获取控件对象被选中状态。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Bool|控件对象被选中状态，true：被选中，false：未被选中。|

### func longClick()

```cangjie
public func longClick(): Unit
```

**功能：** 对控件对象进行长按操作。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### func pinchIn(Float32)

```cangjie
public func pinchIn(scale: Float32): Unit
```

**功能：** 将控件按指定的比例进行捏合缩小。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|scale|Float32|是|-|指定缩小的比例。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |
  | 17000004 | The window or component is invisible or destroyed. |

### func pinchOut(Float32)

```cangjie
public func pinchOut(scale: Float32): Unit
```

**功能：** 将控件按指定的比例进行捏合放大。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|scale|Float32|是|-|指定放大的比例。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |
  | 17000004 | The window or component is invisible or destroyed. |

### func scrollSearch(On)

```cangjie
public func scrollSearch(on: On): ?Component
```

**功能：** 在控件上滑动查找目标控件，适用支持滑动的控件。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|on|[On](#class-on)|是|-|目标控件的属性要求。|

**返回值：**

|类型|说明|
|:----|:----|
|?[Component](#class-component)|找到的目标控件对象。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |
  | 17000004 | The window or component is invisible or destroyed. |

### func scrollToBottom(Int64)

```cangjie
public func scrollToBottom(speed!: Int64 = 600): Unit
```

**功能：** 在控件上滑动到底部，适用支持滑动的控件。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|speed|Int64|否|600| **命名参数。** 滑动速率，范围：200-15000，不在范围内设为默认值为600，单位：像素点/秒。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Incorrect parameter types; 2. Parameter verification failed. |
  | 17000004 | The window or component is invisible or destroyed. |

### func scrollToTop(Int64)

```cangjie
public func scrollToTop(speed!: Int64 = 600): Unit
```

**功能：** 在控件上滑动到顶部，适用支持滑动的控件。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|speed|Int64|否|600| **命名参数。** 滑动速率，范围：200-15000，不在范围内设为默认值为600，单位：像素点/秒。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Incorrect parameter types; 2. Parameter verification failed. |
  | 17000004 | The window or component is invisible or destroyed. |


## class Driver

```cangjie
public class Driver {}
```

**功能：** [Driver](#class-driver)类为uitest测试框架的总入口，提供控件匹配、查找、按键注入，坐标点击或滑动，截图等能力。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### static func create()

```cangjie
public static func create(): Driver
```

**功能：** 静态方法，构造一个[Driver](#class-driver)对象，并返回该对象。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[Driver](#class-driver)|返回构造的[Driver](#class-driver)对象。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 17000001 | Initialization failed. |

**示例：**

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

**功能：** 断言API，用于断言当前界面是否存在满足给出的目标属性的控件。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|on|[On](#class-on)|是|-|目标控件的属性要求。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |
  | 17000003 | Assertion failed. |

**示例：**

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

**功能：** [Driver](#class-driver)对象执行目标坐标点的点击操作。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|x|Int32|是|-|以Int32的形式传入目标点的横坐标信息。|
|y|Int32|是|-|以Int32的形式传入目标点的纵坐标信息。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**示例：**

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

**功能：** 创建一个UI事件监听器。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[UIEventObserver](#class-uieventobserver)|返回找到的目标窗口对象。|

**示例：**

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

**功能：** [Driver](#class-driver)对象在给定的时间内延时。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|duration|Int32|是|-|给定的时间，单位：ms。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**示例：**

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

**功能：** [Driver](#class-driver) 对象执行目标坐标点的双击操作。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|x|Int32|是|-|以Int32的形式传入目标点的横坐标信息。|
|y|Int32|是|-|以Int32的形式传入目标点的纵坐标信息。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**示例：**

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

**功能：** [Driver](#class-driver)对象执行从起始坐标到目标坐标的拖拽操作。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|startx|Int32|是|-|以Int32的形式传入起始点的横坐标信息。|
|starty|Int32|是|-|以Int32的形式传入起始点的纵坐标信息。|
|endx|Int32|是|-|以Int32的形式传入目的点的横坐标信息。|
|endy|Int32|是|-|以Int32的形式传入目的点的纵坐标信息。|
|speed|Int32|否|600|**命名参数。** 滑动速率，范围：200-15000，不在范围内设为默认值为600，单位：像素点/秒。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**示例：**

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

**功能：** 在[Driver](#class-driver)对象中，根据给出的目标控件属性要求查找目标控件。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|on|[On](#class-on)|是|-|目标控件的属性要求。|

**返回值：**

|类型|说明|
|:----|:----|
|?[Component](#class-component)|找到的控件对象。|

**示例：**

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

**功能：** 在[Driver](#class-driver)对象中，根据给出的目标控件属性要求查找出所有匹配控件，以列表保存。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|on|[On](#class-on)|是|-|目标控件的属性要求。|

**返回值：**

|类型|说明|
|:----|:----|
|?Array\<[Component](#class-component)>|目标控件的属性要求。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**示例：**

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

**功能：** 通过指定窗口的属性来查找目标窗口。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|filter|[WindowFilter](#class-windowfilter)|是|-|目标窗口的属性。|

**返回值：**

|类型|说明|
|:----|:----|
|?[UiWindow](#class-uiwindow)|找到的目标窗口对象。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
let window: Option<UiWindow> = driver.findWindow(WindowFilter(active: true))
```

### func fling(Point, Point, Int32, Int32)

```cangjie
public func fling(from: Point, to: Point, stepLen: Int32, speed: Int32): Unit
```

**功能：** 指定方向和速度，模拟手指滑动后脱离屏幕的快速滑动操作。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|from|[Point](#class-point)|是|-|手指接触屏幕的起始点坐标。|
|to|[Point](#class-point)|是|-|手指离开屏幕时的坐标点。|
|stepLen|Int32|是|-|间隔距离，单位：像素点。|
|speed|Int32|是|-|滑动速率，范围：200-40000，不在范围内设为默认值为600，单位：像素点/秒。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**示例：**

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

**功能：** 指定方向和速度，模拟手指滑动后脱离屏幕的快速滑动操作。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|direction|[UiDirection](#enum-uidirection)|是|-|进行抛滑的方向。|
|speed|Int32|是|-|滑动速率，范围：200-40000，不在范围内设为默认值为600，单位：像素点/秒。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**示例：**

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

**功能：** 获取当前设备屏幕的分辨率。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[Point](#class-point)|返回当前设备屏幕的分辨率。|

**示例：**

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

**功能：** 获取当前设备的屏幕显示方向。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[DisplayRotation](#enum-displayrotation)|返回当前设备的显示方向。|

**示例：**

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

**功能：** 获取当前设备的屏幕大小。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[Point](#class-point)|返回当前设备的屏幕大小。|

**示例：**

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

**功能：** 向设备注入多指操作。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|pointers|[PointerMatrix](#class-pointermatrix)|是|-|滑动轨迹，包括操作手指个数和滑动坐标序列。|
|speed|Int32|否|600|**命名参数。** 滑动速率，范围：200-15000，不在范围内设为默认值为600，单位：像素点/秒。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|返回操作是否成功完成。成功返回true，否则返回false。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**示例：**

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

**功能：** 在指定坐标点输入文本。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|p|[Point](#class-point)|是|-|输入文本的坐标点。|
|text|String|是|-|输入的文本信息。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**示例：**

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

**功能：** [Driver](#class-driver)对象执行目标坐标点的长按操作。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|x|Int32|是|-|以Int32的形式传入目标点的横坐标信息。|
|y|Int32|是|-|以Int32的形式传入目标点的纵坐标信息。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**示例：**

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

**功能：** 在指定坐标点注入鼠标点击动作，支持同时按下对应键盘组合键。例如，Key值为2072时，按下CTRL并进行鼠标点击动作。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|p|[Point](#class-point)|是|-|鼠标点击的坐标。|
|btnId|[MouseButton](#enum-mousebutton)|是|-|按下的鼠标按钮。|
|key1|Int32|否|0|**命名参数。** 指定的第一个key值。|
|key2|Int32|否|0|**命名参数。** 指定的第二个key值。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**示例：**

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

**功能：** 在指定坐标点注入鼠标双击动作，支持同时按下对应键盘组合键。例如，Key值为2072时，按下CTRL并进行鼠标双击动作。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|p|[Point](#class-point)|是|-|鼠标双击的坐标。|
|btnId|[MouseButton](#enum-mousebutton)|是|-|按下的鼠标按钮。|
|key1|Int32|否|0|**命名参数。** 指定的第一个key值。|
|key2|Int32|否|0|**命名参数。** 指定的第二个key值。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import kit.TestKit.*
import ohos.ui_test.Point as PT


let driver: Driver = Driver.create()
driver.mouseDoubleClick(PT(248, 194), MouseButton.MouseButtonLeft, key1: 2072)
```

### func mouseDrag(Point, Point, Int32)

```cangjie
public func mouseDrag(from: Point, to: Point, speed!: Int32 = 600): Unit
```

**功能：** 鼠标按住左键从起始点拖拽至终点。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|from|[Point](#class-point)|是|-|起始点坐标。|
|to|[Point](#class-point)|是|-|终点坐标。|
|speed|Int32|否|600|**命名参数。** 滑动速率，范围：200-15000，不在范围内设为默认值为600，单位：像素点/秒。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**示例：**

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

**功能：** 在指定坐标点注入鼠标长按动作，支持同时按下对应键盘组合键。例如，Key值为2072时，按下CTRL并进行鼠标长按动作。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|p|[Point](#class-point)|是|-|鼠标长按的坐标。|
|btnId|[MouseButton](#enum-mousebutton)|是|-|按下的鼠标按钮。|
|key1|Int32|否|0|**命名参数。** 指定的第一个key值。|
|key2|Int32|否|0|**命名参数。** 指定的第二个key值。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**示例：**

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

**功能：** 将鼠标光标移到目标点。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|p|[Point](#class-point)|是|-|目标点的坐标。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**示例：**

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

**功能：** 鼠标从起始点坐标滑向终点坐标。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|from|[Point](#class-point)|是|-|起始点坐标。|
|to|[Point](#class-point)|是|-|终点坐标。|
|speed|Int32|否|600|**命名参数。** 滑动速率，范围：200-15000，不在范围内设为默认值为600，单位：像素点/秒。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**示例：**

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

**功能：** 在指定坐标点注入鼠标滚轮滑动动作，支持同时按下对应键盘组合键并且指定滑动速度。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|p|[Point](#class-point)|是|-|鼠标点击的坐标。|
|down|Bool|是|-|滚轮滑动方向是否向下，true表示向下滑动，false表示向上滑动。|
|d|Int32|是|-|鼠标滚轮滑动的格数，每格对应目标点位移120个像素点。|
|key1|Int32|否|0|**命名参数。** 指定的第一个key值。|
|key2|Int32|否|0|**命名参数。** 指定的第二个key值。|
|speed|Int32|否|20|**命名参数。** 鼠标滚轮滑动的速度，范围：1-500，不在范围内设为默认值为20，单位：格/秒。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**示例：**

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

**功能：** [Driver](#class-driver)对象进行点击BACK键的操作。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**示例：**

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

**功能：** 设备返回到桌面。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**示例：**

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

**功能：** [Driver](#class-driver)对象捕获当前屏幕，并将其保存为PNG格式的图片，保存至参数传入的路径中。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|savePath|String|是|-|文件保存路径。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|截图操作是否成功完成。成功完成为true，否则为false。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**示例：**

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
public func screenCapture(savePath: String, rect!: Rect = Rect(0,0,0,0)): Bool
```

**功能：** 捕获当前屏幕，并将其保存为PNG格式的图片，保存至参数传入的路径中。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|savePath|String|是|-|文件保存路径。|
|rect|[Rect](#class-rect)|否|Rect(0, 0, 0, 0)|**命名参数。** 截图区域，默认为全屏。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|截图操作是否成功完成。成功完成为true，否则为false。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**示例：**

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

**功能：** 将设备的屏幕显示方向设置为指定的显示方向。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|rotation|[DisplayRotation](#enum-displayrotation)|是|-|设备的显示方向。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**示例：**

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

**功能：** 启用或禁用设备旋转屏幕的功能。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|enabled|Bool|是|-|能否旋转屏幕的标识，true：可以旋转，false：不可以旋转。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**示例：**

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

**功能：** [Driver](#class-driver)对象执行从起始坐标到目标坐标的滑动操作。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|startx|Int32|是|-|以Int32的形式传入起始点的横坐标信息。|
|starty|Int32|是|-|以Int32的形式传入起始点的纵坐标信息。|
|endx|Int32|是|-|以Int32的形式传入目的点的横坐标信息。|
|endy|Int32|是|-|以Int32的形式传入目的点的纵坐标信息。|
|speed|Int32|否|600|**命名参数。** 滑动速率，范围：200-15000，不在范围内设为默认值为600，单位：像素点/秒。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**示例：**

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

**功能：** [Driver](#class-driver)对象通过给定的key值，找到对应组合键并点击。例如，Key值为(2072, 2019)时，[Driver](#class-driver)对象找到key值对应的组合键并点击，如CTRL+C。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|key0|Int32|是|-|指定的第一个key值。|
|key1|Int32|是|-|指定的第二个key值。|
|key2|Int32|否|0|**命名参数。** 指定的第三个key值。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**示例：**

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

**功能：** [Driver](#class-driver)对象通过传入 key 值模拟点击对应按键。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|keyCode|Int32|是|-|指定的key值。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
driver.triggerKey(123)
```

### func waitForComponent(On, Int32)

```cangjie
public func waitForComponent(on: On, time: Int32): ?Component
```

**功能：** 在[Driver](#class-driver)对象中，在用户给定的时间内，持续查找满足控件属性要求的目标控件。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|on|[On](#class-on)|是|-|目标控件的属性要求。|
|time|Int32|是|-|查找目标控件的持续时间。单位ms。|

**返回值：**

|类型|说明|
|:----|:----|
|?[Component](#class-component)|找到的控件对象。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
let button: Option<Component> = driver.waitForComponent(On().text("next page"), 500)
```

### func waitForIdle(Int32, Int32)

```cangjie
public func waitForIdle(idleTime: Int32, timeout: Int32): Bool
```

**功能：** 判断当前界面的所有控件是否已经空闲。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|idleTime|Int32|是|-|空闲时间的阈值。在这个时间段控件不发生变化，视为该控件空闲，单位：毫秒。|
|timeout|Int32|是|-|等待空闲的最大时间，单位：毫秒。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|返回当前界面的所有控件是否已经空闲。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
let idled = driver.waitForIdle(4000, 5000)
```

### func wakeUpDisplay()

```cangjie
public func wakeUpDisplay(): Unit
```

**功能：** 唤醒当前设备即设备亮屏。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
driver.wakeUpDisplay()
```


## class On

```cangjie
public class On {
    public init()
}
```

**功能：** UiTest框架中，通过On类提供了丰富的控件特征描述API，用于进行控件筛选来匹配或查找出目标控件。

[On](#class-on)提供的API能力具有以下几个特点:

1、支持单属性匹配和多属性组合匹配，例如同时指定目标控件text和id。

2、控件属性支持多种匹配模式。

3、支持控件绝对定位，相对定位，可通过[isBefore](#func-isbeforeon)和[isAfter](#func-isafteron)等API限定邻近控件特征进行辅助定位。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### init()

```cangjie
public init()
```

**功能：** 创建[On](#class-on)实例。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### func checkable(Bool)

```cangjie
public func checkable(b!: Bool = true): On
```

**功能：** 指定目标控件能否被勾选状态属性，返回[On](#class-on)对象自身。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|b|Bool|否|true|**命名参数。** 指定控件能否被勾选状态，true：能被勾选，false：不能被勾选。默认为false。|

**返回值：**

|类型|说明|
|:----|:----|
|[On](#class-on)|返回指定目标控件能否被勾选状态属性的[On](#class-on)对象。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. 1. Incorrect parameter types; 2. Parameter verification failed. |

**示例：**

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
        let on: On = On().checkable(b: true) // 指定目标控件的能否被勾选状态属性。
    }
}
```

### func checked(Bool)

```cangjie
public func checked(b!: Bool = true): On
```

**功能：** 指定目标控件的被勾选状态属性，返回[On](#class-on)对象自身。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|b|Bool|否|true|**命名参数。** 指定控件被勾选状态，true：被勾选，false：未被勾选。默认为false。|

**返回值：**

|类型|说明|
|:----|:----|
|[On](#class-on)|返回指定目标控件的被勾选状态属性的[On](#class-on)对象。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Incorrect parameter types; 2. Parameter verification failed. |

**示例：**

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
        let on: On = On().checked(b: true) // 指定目标控件的被勾选状态属性
    }
}
```

### func clickable(Bool)

```cangjie
public func clickable(b!: Bool = true): On
```

**功能：** 指定目标控件的可点击状态属性，返回[On](#class-on)对象自身。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|b|Bool|否|true|**命名参数。** 指定控件可点击状态，true：可点击，false：不可点击。默认为true。|

**返回值：**

|类型|说明|
|:----|:----|
|[On](#class-on)|返回指定目标控件的可点击状态属性的[On](#class-on)对象。|

**示例：**

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
        let on: On = On().clickable(b: true) // 指定目标控件的可点击状态属性。
    }
}
```

### func description(String, MatchPattern)

```cangjie
public func description(val: String, pattern!: MatchPattern = MatchPattern.Equals): On
```

**功能：** 指定目标控件的描述属性，支持多种匹配模式，返回[On](#class-on)对象自身。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|val|String|是|-|控件的描述属性。|
|pattern|[MatchPattern](#enum-matchpattern)|否|MatchPattern.Equals|**命名参数。** 指定的文本匹配模式，默认为EQUALS。|

**返回值：**

|类型|说明|
|:----|:----|
|[On](#class-on)|返回指定目标控件的控件类型属性的[On](#class-on)对象。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | if the input parameters are invalid. |

**示例：**

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
        let on: On = On().description("123") // 指定目标控件的控件类型属性。
    }
}
```

### func enabled(Bool)

```cangjie
public func enabled(b!: Bool = true): On
```

**功能：** 指定目标控件的使能状态属性，返回[On](#class-on)对象自身。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|b|Bool|否|true|**命名参数。** 指定控件使能状态，true：使能，false：未使能。默认为true。|

**返回值：**

|类型|说明|
|:----|:----|
|[On](#class-on)|返回指定目标控件的使能状态属性的[On](#class-on)对象。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Incorrect parameter types; 2. Parameter verification failed. |

**示例：**

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
        let on: On = On().enabled(b: true) // 指定目标控件的使能状态属性。
    }
}
```

### func focused(Bool)

```cangjie
public func focused(b!: Bool = true): On
```

**功能：** 指定目标控件的获焦状态属性，返回[On](#class-on)对象自身。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|b|Bool|否|true|**命名参数。** 控件获焦状态，true：获焦，false：未获焦。默认为true。|

**返回值：**

|类型|说明|
|:----|:----|
|[On](#class-on)|返回指定目标控件的获焦状态属性的[On](#class-on)对象。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Incorrect parameter types; 2. Parameter verification failed. |

**示例：**

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
        let on: On = On().focused(b: true) // 指定目标控件的获焦状态属性。
    }
}
```

### func id(String)

```cangjie
public func id(id: String): On
```

**功能：** 指定目标控件id属性，返回[On](#class-on)对象自身。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|id|String|是|-|指定控件的id值。|

**返回值：**

|类型|说明|
|:----|:----|
|[On](#class-on)|返回指定目标控件id属性的[On](#class-on)对象。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**示例：**

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
        let on: On = On().id("123") // 指定目标控件的id属性。
    }
}
```

### func inWindow(String)

```cangjie
public func inWindow(bundleName: String): On
```

**功能：** 指定目标控件位于给出的应用窗口内，返回[On](#class-on)对象自身。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|bundleName|String|是|-|应用窗口的包名。|

**返回值：**

|类型|说明|
|:----|:----|
|[On](#class-on)|返回指定目标控件位于给出的应用窗口内的[On](#class-on)对象。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**示例：**

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
        let on: On = On().inWindow("com.uitestScene.acts") // 指定目标控件位于给出的应用窗口内。
    }
}
```

### func isAfter(On)

```cangjie
public func isAfter(on: On): On
```

**功能：** 指定目标控件位于给出的特征属性控件之后，返回[On](#class-on)对象自身。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|on|[On](#class-on)|是|-|特征控件的属性要求。|

**返回值：**

|类型|说明|
|:----|:----|
|[On](#class-on)|返回指定目标控件位于给出的特征属性控件之后的[On](#class-on)对象。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**示例：**

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
        let on1: On = On().text("123") // 指定特征属性控件
        let on2: On = On().onType("Text").isAfter(on1)  // 查找text为123之后的第一个Text组件
    }
}
```

### func isBefore(On)

```cangjie
public func isBefore(on: On): On
```

**功能：** 指定目标控件位于给出的特征属性控件之前，返回[On](#class-on)对象自身。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|on|[On](#class-on)|是|-|特征控件的属性要求。|

**返回值：**

|类型|说明|
|:----|:----|
|[On](#class-on)|返回指定目标控件位于给出的特征属性控件之前的[On](#class-on)对象。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**示例：**

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
        let on1: On = On().text("123") // 指定特征属性控件
        let on2: On = On().onType("Button").isBefore(on1)  // 查找text为123之前的第一个Button组件
    }
}
```

### func longClickable(Bool)

```cangjie
public func longClickable(b!: Bool = true): On
```

**功能：** 指定目标控件的可长按点击状态属性，返回[On](#class-on)对象自身。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|b|Bool|否|true|**命名参数。** 指定控件可长按点击状态，true：可长按点击，false：不可长按点击。默认为true。|

**返回值：**

|类型|说明|
|:----|:----|
|[On](#class-on)|返回指定目标控件的可长按点击状态属性的[On](#class-on)对象。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Incorrect parameter types; 2. Parameter verification failed. |

**示例：**

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
        let on: On = On().longClickable(b: true) // 指定目标控件的可长按点击状态属性。
    }
}
```

### func onType(String)

```cangjie
public func onType(tp: String): On
```

**功能：** 指定目标控件的控件类型属性，返回[On](#class-on)对象自身。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|tp|String|是|-|指定控件类型。|

**返回值：**

|类型|说明|
|:----|:----|
|[On](#class-on)|返回指定目标控件的控件类型属性的[On](#class-on)对象。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**示例：**

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
        let on: On = On().onType("Button") // 指定目标控件的控件类型属性。
    }
}
```

### func scrollable(Bool)

```cangjie
public func scrollable(b!: Bool = true): On
```

**功能：** 指定目标控件的可滑动状态属性，返回[On](#class-on)对象自身。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|b|Bool|否|true|**命名参数。** 控件可滑动状态，true：可滑动，false：不可滑动。默认为true。|

**返回值：**

|类型|说明|
|:----|:----|
|[On](#class-on)|返回指定目标控件的可滑动状态属性的[On](#class-on)对象。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Incorrect parameter types; 2. Parameter verification failed. |

**示例：**

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
        let on: On = On().scrollable(b: true) // 指定目标控件的可滑动状态属性。
    }
}
```

### func selected(Bool)

```cangjie
public func selected(b!: Bool = true): On
```

**功能：** 指定目标控件的被选中状态属性，返回[On](#class-on)对象自身。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|b|Bool|否|true|**命名参数。** 指定控件被选中状态，true：被选中，false：未被选中。默认为true。|

**返回值：**

|类型|说明|
|:----|:----|
|[On](#class-on)|返回指定目标控件的被选中状态属性的[On](#class-on)对象。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1. Incorrect parameter types; 2. Parameter verification failed. |

**示例：**

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
        let on: On = On().selected(b: true) // 指定目标控件的被选中状态属性。
    }
}
```

### func text(String, MatchPattern)

```cangjie
public func text(txt: String, pattern!: MatchPattern = MatchPattern.Equals): On
```

**功能：** 指定目标控件文本属性，支持多种匹配模式，返回[On](#class-on)对象自身。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|txt|String|是|-|指定控件文本，用于匹配目标控件文本。|
|pattern|[MatchPattern](#enum-matchpattern)|否|MatchPattern.Equals|**命名参数。** 指定的文本匹配模式，默认为EQUALS。|

**返回值：**

|类型|说明|
|:----|:----|
|[On](#class-on)|返回指定目标控件文本属性的[On](#class-on)对象。|

**示例：**

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
        let on: On = On().text("123") // 指定目标控件的text属性。
    }
}
```

### func within(On)

```cangjie
public func within(on: On): On
```

**功能：** 指定目标控件位于给出的特征属性控件之内，返回[On](#class-on)对象自身。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|on|[On](#class-on)|是|-|特征控件的属性要求。|

**返回值：**

|类型|说明|
|:----|:----|
|[On](#class-on)|返回指定目标控件位于给出的特征属性控件内的[On](#class-on)对象。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**示例：**

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
        let on1: On = On().onType("Scroll") // 指定特征属性控件
        let on2: On = On().text("123").within(on1) // 查找Scroller里面的text为123的子组件
    }
}
```


## class Point

```cangjie
public class Point {
    public var x: Int32
    public var y: Int32
    public var displayId:?Int32
    public init(x: Int32, y: Int32, displayId!: ?Int32 = None)
}
```

**功能：** 坐标点信息。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### var displayId

```cangjie
public var displayId:?Int32
```

**功能：** 坐标点所属的屏幕ID。

**类型：** ?Int32

**读写能力：** 可读写

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### var x

```cangjie
public var x: Int32
```

**功能：** 坐标点的横坐标。

**类型：** Int32

**读写能力：** 可读写

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### var y

```cangjie
public var y: Int32
```

**功能：** 坐标点的纵坐标。

**类型：** Int32

**读写能力：** 可读写

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### init(Int32, Int32, ?Int32)

```cangjie
public init(x: Int32, y: Int32, displayId!: ?Int32 = None)
```

**功能：** 创建Point实例。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|x|Int32|是|-|坐标点的横坐标。|
|y|Int32|是|-|坐标点的纵坐标。|
|displayId|?Int32|否|None| **命名参数。** 坐标点所属的屏幕ID，取值范围：大于等于0的整数。|


## class PointerMatrix

```cangjie
public class PointerMatrix {}
```

**功能：** 用于多指操作，存储每根手指的坐标点及每一步动作的行为的二维数组。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### static func create(Int32, Int32)

```cangjie
public static func create(fingers: Int32, steps: Int32): PointerMatrix
```

**功能：** 静态方法，构造一个[PointerMatrix](#class-pointermatrix)对象，并返回该对象。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|fingers|Int32|是|-|多指操作中注入的手指数，取值范围：[1,10]。|
|steps|Int32|是|-|每根手指操作的步骤数，取值范围：[1,1000]。|

**返回值：**

|类型|说明|
|:----|:----|
|[PointerMatrix](#class-pointermatrix)|返回构造的[PointerMatrix](#class-pointermatrix)对象。|

**异常：**

- BusinessException：对应错误码如下表，[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**示例：**

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

**功能：** 设置[PointerMatrix](#class-pointermatrix)对象中指定手指和步骤对应动作的坐标点。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|finger|Int32|是|-|手指的序号。|
|step|Int32|是|-|步骤的序号。|
|point|[Point](#class-point)|是|-|该行为的坐标点。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |

**示例：**

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

**功能：** 控件的边框信息。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### var bottom

```cangjie
public var bottom: Int32
```

**功能：** 控件边框的右下角的Y坐标。

**类型：** Int32

**读写能力：** 可读写

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### var displayId

```cangjie
public var displayId:?Int32
```

**功能：** 控件边框所属的屏幕ID。

**类型：** ?Int32

**读写能力：** 可读写

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### var left

```cangjie
public var left: Int32
```

**功能：** 控件边框的左上角的X坐标。

**类型：** Int32

**读写能力：** 可读写

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### var right

```cangjie
public var right: Int32
```

**功能：** 控件边框的右下角的X坐标。

**类型：** Int32

**读写能力：** 可读写

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### var top

```cangjie
public var top: Int32
```

**功能：** 控件边框的左上角的Y坐标。

**类型：** Int32

**读写能力：** 可读写

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### init(Int32, Int32, Int32, Int32, ?Int32)

```cangjie
public init(left: Int32, top: Int32, right: Int32, bottom: Int32, displayId!: ?Int32 = None)
```

**功能：** 创建[Rect](#class-rect)实例。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|left|Int32|是|-|控件边框的左上角的X坐标。|
|top|Int32|是|-|控件边框的左上角的Y坐标。|
|right|Int32|是|-|控件边框的右下角的X坐标。|
|bottom|Int32|是|-|控件边框的右下角的Y坐标。|
|displayId|?Int32|否|None| **命名参数。** 控件边框所属的屏幕ID，取值大于或等于0的整数。|


## class TestRunner

```cangjie
public open class TestRunner <: FFIData {}
```

**功能：** 提供了框架测试的能力。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 21

**父类型：**

- [FFIData](../AbilityKit/cj-apis-ability.md#class-ffidata)

### static func registerCreator(String, () -> TestRunner)

```cangjie
public static func registerCreator(name: String, creator: () -> TestRunner): Unit
```

**功能：** 注册构建[TestRunner](#class-testrunner)对象的函数。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|name|String|是|-|构建函数标识。|
|creator|()->[TestRunner](#class-testrunner)|是|-|构建[TestRunner](#class-testrunner)对象的函数。|

### func onPrepare()

```cangjie
public open func onPrepare(): Unit
```

**功能：** 运行测试用例。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 21

### func onRun()

```cangjie
public open func onRun(): Unit
```

**功能：** 为运行测试用例准备单元测试环境。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**起始版本：** 21


## class UIElementInfo

```cangjie
public class UIElementInfo {
    public let bundleName: String
    public let componentType: String
    public let text: String
}
```

**功能：** UI事件的相关信息。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### let bundleName

```cangjie
public let bundleName: String
```

**功能：** 归属应用的包名。

**类型：** String

**读写能力：** 只读

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### let componentType

```cangjie
public let componentType: String
```

**功能：** 控件或窗口类型。

**类型：** String

**读写能力：** 只读

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### let text

```cangjie
public let text: String
```

**功能：** 控件或窗口的文本信息。

**类型：** String

**读写能力：** 只读

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21


## class UIEventObserver

```cangjie
public class UIEventObserver {}
```

**功能：** UI事件监听器。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### func once(OnceType, Callback\<UIElementInfo>)

```cangjie
public func once(onceType: OnceType, callback: Callback<UIElementInfo>): Unit
```

**功能：** 监听指定控件出现的事件。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|onceType|[OnceType](#enum-oncetype)|是|-|控件类型。|
|callback|[Callback](./../BasicServicesKit/cj-apis-base.md#type-callback)\<[UIElementInfo](#class-uielementinfo)>|是|-|事件发生时执行的回调函数。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |


## class UITest

```cangjie
public class UITest {}
```

**功能：** [UITest](#class-uitest)类只包含一个静态方法[setup](#func-setup)，用于初始化ui_test库。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### static func setup()

```cangjie
public static func setup(): Unit
```

**功能：** 初始化ui_test库。目前[setup](#func-setup)必须写在[TestRunner](#class-testrunner)的[onRun](#func-onrun)中。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**示例：**

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

**功能：** [UiWindow](#class-uiwindow)代表了UI界面上的一个窗口，提供获取窗口属性、拖动窗口、调整窗口大小等能力。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### func close()

```cangjie
public func close(): Unit
```

**功能：** 将窗口关闭。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |
  | 17000005 | This operation is not supported. |

**示例：**

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

**功能：** 让窗口获焦。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |

**示例：**

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

**功能：** 获取窗口的边框信息。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[Rect](#class-rect)|返回窗口的边框信息。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |

**示例：**

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

**功能：** 获取窗口归属应用的包名信息。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|String|返回窗口归属应用的包名信息。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |

**示例：**

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

**功能：** 获取窗口的标题信息。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|String|返回窗口的标题信息。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |

**示例：**

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

**功能：** 获取窗口的窗口模式信息。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[WindowMode](#enum-windowmode)|返回窗口的窗口模式信息。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |

**示例：**

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

**功能：** 判断窗口是否为用户正在交互的窗口。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Bool|返回窗口对象交互状态，true：交互窗口，false：非交互窗口。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |

**示例：**

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

**功能：** 判断窗口是否处于获焦状态。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Bool|返回窗口对象是否处于获焦状态，true：获焦，false：未获焦。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |

**示例：**

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

**功能：** 将窗口最大化。适用于支持窗口最大化操作的窗口。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |
  | 17000005 | This operation is not supported. |

**示例：**

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

**功能：** 将窗口最小化。适用于支持窗口最小化操作的窗口。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |
  | 17000005 | This operation is not supported. |

**示例：**

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

**功能：** 将窗口移动到目标点。适用于支持移动的窗口。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|x|Int32|是|-|以IntNative的形式传入目标点的横坐标信息。|
|y|Int32|是|-|以IntNative的形式传入目标点的纵坐标信息。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |
  | 17000004 | The window or component is invisible or destroyed. |
  | 17000005 | This operation is not supported. |

**示例：**

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

**功能：** 根据传入的宽、高和调整方向来调整窗口的大小。适用于支持调整大小的窗口。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|wide|Int32|是|-|以IntNative的形式传入调整后窗口的宽度。|
|height|Int32|是|-|以IntNative的形式传入调整后窗口的高度。|
|direction|[ResizeDirection](#enum-resizedirection)|是|-|以ResizeDirection的形式传入窗口调整的方向。|

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes: 1.Mandatory parameters are left unspecified; 2. Incorrect parameter types; 3. Parameter verification failed. |
  | 17000004 | The window or component is invisible or destroyed. |
  | 17000005 | This operation is not supported. |

**示例：**

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

**功能：** 将窗口恢复到之前的窗口模式。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |
  | 17000005 | This operation is not supported. |

**示例：**

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

**功能：** 将窗口模式切换成分屏模式。适用于支持切换分屏模式的窗口。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**异常：**

- BusinessException：对应错误码如下表，详见[uitest错误码](../../errorcodes/cj-errorcode-uitest.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 17000004 | The window or component is invisible or destroyed. |
  | 17000005 | This operation is not supported. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.TestKit.*

let driver: Driver = Driver.create()
let window: Option<UiWindow> = driver.findWindow(WindowFilter(active: true))
window?.split()
```


## class WindowFilter

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

**功能：** 窗口的属性信息。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### var active

```cangjie
public var active:?Bool
```

**功能：** 窗口是否正与用户进行交互。

**类型：** ?Bool

**读写能力：** 可读写

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### var bundleName

```cangjie
public var bundleName:?String
```

**功能：** 窗口归属应用的包名。

**类型：** ?String

**读写能力：** 可读写

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### var displayId

```cangjie
public var displayId:?Int32
```

**功能：** 控件边框所属的屏幕ID。

**类型：** ?Int32

**读写能力：** 可读写

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### var focused

```cangjie
public var focused:?Bool
```

**功能：** 窗口是否处于获焦状态。

**类型：** ?Bool

**读写能力：** 可读写

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### var title

```cangjie
public var title:?String
```

**功能：** 窗口的标题信息。

**类型：** ?String

**读写能力：** 可读写

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### init(String, String, Bool, Bool, ?Int32)

```cangjie
public init(bundleName!: String = "", title!: String = "", focused!: Bool = false, active!: Bool = false, displayId!: ?Int32 = None)
```

**功能：** 创建[WindowFilter](#class-windowfilter)实例。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|bundleName|String|否|""| **命名参数。** 窗口归属应用的包名。|
|title|String|否|""| **命名参数。** 窗口的标题信息。|
|focused|Bool|否|false| **命名参数。** 窗口是否处于获焦状态。|
|active|Bool|否|false| **命名参数。** 窗口是否正与用户进行交互。|
|displayId|?Int32|否|None| **命名参数。** 控件边框所属的屏幕ID，取值大于或等于0的整数。|


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

**功能：** 设备显示器的显示方向。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### Rotation0

```cangjie
Rotation0
```

**功能：** 设备显示器不旋转，初始形态垂直显示。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### Rotation180

```cangjie
Rotation180
```

**功能：** 设备显示器顺时针旋转180°，逆向垂直显示。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### Rotation270

```cangjie
Rotation270
```

**功能：** 设备显示器顺时针旋转270°，逆向水平显示。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### Rotation90

```cangjie
Rotation90
```

**功能：** 设备显示器顺时针旋转90°，水平显示。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21


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

**功能：** 控件属性支持的匹配模式。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### Contains

```cangjie
Contains
```

**功能：** 包含给定值。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### EndsWith

```cangjie
EndsWith
```

**功能：** 以给定值结束。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### Equals

```cangjie
Equals
```

**功能：** 等于给定值。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### StartsWith

```cangjie
StartsWith
```

**功能：** 以给定值开始。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21


## enum MouseButton

```cangjie
public enum MouseButton {
    | MouseButtonLeft
    | MouseButtonRight
    | MouseButtonMiddle
    | ...
}
```

**功能：** 模拟注入的鼠标按钮。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### MouseButtonLeft

```cangjie
MouseButtonLeft
```

**功能：** 鼠标左键。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### MouseButtonMiddle

```cangjie
MouseButtonMiddle
```

**功能：** 鼠标中间键。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### MouseButtonRight

```cangjie
MouseButtonRight
```

**功能：** 鼠标右键。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21


## enum OnceType

```cangjie
public enum OnceType <: Equatable<OnceType> & ToString {
    | ToastShow
    | DialogShow
    | ...
}
```

**功能：** 控件的类型。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

**父类型：**

- Equatable\<OnceType>
- ToString

### DialogShow

```cangjie
DialogShow
```

**功能：** dialog控件类型。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### ToastShow

```cangjie
ToastShow
```

**功能：** toast控件类型。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### func !=(OnceType)

```cangjie
public operator func !=(other: OnceType): Bool
```

**功能：** 判断两个枚举值是否不相等。

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|other|[OnceType](#enum-oncetype)|是|-|另一个枚举值。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|两个枚举值不相等返回true，否则返回false。|

### func ==(OnceType)

```cangjie
public operator func ==(other: OnceType): Bool
```

**功能：** 判断两个枚举值是否相等。

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|other|[OnceType](#enum-oncetype)|是|-|另一个枚举值。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|两个枚举值相等返回true，否则返回false。|

### func toString()

```cangjie
public func toString(): String
```

**功能：** 获取枚举的值。

**返回值：**

|类型|说明|
|:----|:----|
|String|枚举的说明。|


## enum ResizeDirection

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

**功能：** 窗口调整的方向。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### Down

```cangjie
Down
```

**功能：** 下方。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### Left

```cangjie
Left
```

**功能：** 左方。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### LeftDown

```cangjie
LeftDown
```

**功能：** 左下方。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### LeftUp

```cangjie
LeftUp
```

**功能：** 左上方。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### Right

```cangjie
Right
```

**功能：** 右方。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### RightDown

```cangjie
RightDown
```

**功能：** 右下方。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### RightUp

```cangjie
RightUp
```

**功能：** 右上方。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### Up

```cangjie
Up
```

**功能：** 上方。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21


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

**功能：** 进行抛滑等UI操作时的方向。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### Down

```cangjie
Down
```

**功能：** 向下。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### Left

```cangjie
Left
```

**功能：** 向左。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### Right

```cangjie
Right
```

**功能：** 向右。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### Up

```cangjie
Up
```

**功能：** 向上。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21


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

**功能：** 窗口模式。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### Floating

```cangjie
Floating
```

**功能：** 浮动窗口。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### Fullscreen

```cangjie
Fullscreen
```

**功能：** 全屏模式。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### Primary

```cangjie
Primary
```

**功能：** 主窗口。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

### Secondary

```cangjie
Secondary
```

**功能：** 第二窗口。

**系统能力：** SystemCapability.Test.UiTest

**起始版本：** 21

