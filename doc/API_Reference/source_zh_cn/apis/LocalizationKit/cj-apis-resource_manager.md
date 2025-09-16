# ohos.resource_manager

资源管理模块，根据当前configuration：语言、区域、横竖屏、Mcc（移动国家码）和Mnc（移动网络码）、Device capability（设备类型）、Density（分辨率）提供获取应用资源对象读取接口。

## 导入模块

```cangjie
import kit.LocalizationKit.*
```

## 使用说明

API示例代码使用说明：

- 若示例代码首行有“// index.cj”注释，表示该示例可在仓颉模板工程的“index.cj”文件中编译运行。
- 若示例需获取[Context](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-context)应用上下文，需在仓颉模板工程中的“main_ability.cj”文件中进行配置。

上述示例工程及配置模板详见[仓颉示例代码说明](../../cj-development-intro.md#仓颉示例代码说明)。

## class Configuration

```cangjie
public class Configuration {
    public var direction: Direction
    public var locale: String
    public var deviceType: DeviceType
    public var screenDensity: ScreenDensity
    public var colorMode: ColorMode
    public var mcc: UInt32
    public var mnc: UInt32
}
```

**功能：** 表示当前设备的配置。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

### var colorMode

```cangjie
public var colorMode: ColorMode
```

**功能：** 颜色模式。

**类型：** [ColorMode](#enum-colormode)

**读写能力：** 可读写

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

### var deviceType

```cangjie
public var deviceType: DeviceType
```

**功能：** 设备类型。

**类型：** [DeviceType](#enum-devicetype)

**读写能力：** 可读写

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

### var direction

```cangjie
public var direction: Direction
```

**功能：** 屏幕方向。

**类型：** [Direction](#enum-direction)

**读写能力：** 可读写

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

### var locale

```cangjie
public var locale: String
```

**功能：** 语言文字国家地区。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

### var mcc

```cangjie
public var mcc: UInt32
```

**功能：** 移动国家码。

**类型：** UInt32

**读写能力：** 可读写

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

### var mnc

```cangjie
public var mnc: UInt32
```

**功能：** 移动网络码。

**类型：** UInt32

**读写能力：** 可读写

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

### var screenDensity

```cangjie
public var screenDensity: ScreenDensity
```

**功能：** 屏幕密度。

**类型：** [ScreenDensity](#enum-screendensity)

**读写能力：** 可读写

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

## class DeviceCapability

```cangjie
public class DeviceCapability {
    public let screenDensity: ScreenDensity
    public let deviceType: DeviceType
}
```

**功能：** 表示设备支持的能力。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

### let deviceType

```cangjie
public let deviceType: DeviceType
```

**功能：** 当前设备类型。

**类型：** [DeviceType](#enum-devicetype)

**读写能力：** 只读

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

### let screenDensity

```cangjie
public let screenDensity: ScreenDensity
```

**功能：** 当前设备屏幕密度。

**类型：** [ScreenDensity](#enum-screendensity)

**读写能力：** 只读

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

## class ResourceManager

```cangjie
public class ResourceManager {}
```

**功能：** 提供访问应用资源的能力。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

### func addResource(String)

```cangjie

public func addResource(path: String): Unit
```

**功能：** 应用运行时，加载指定的资源路径，实现资源覆盖。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|path|String|是|-|资源路径。|

**异常：**

- BusinessException：对应错误码如下表，详见[资源管理错误码](../../errorcodes/cj-errorcode-resource-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 9001010 | Invalid overlay path.|

- IllegalStateException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | If the instance id invallid.| todo | todo |

### func closeRawFd(String)

```cangjie

public func closeRawFd(path: String): Unit
```

**功能：** 关闭resources/rawfile目录下rawfile文件。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|path|String|是|-|rawfile文件路径。|

**异常：**

- BusinessException：对应错误码如下表，详见[资源管理错误码](../../errorcodes/cj-errorcode-resource-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | If the input parameter invalid. Possible causes: Incorrect parameter types.|
  | 9001005 |The resource not found by path.|

- IllegalStateException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | If the instance id invallid.| todo | todo |

### func getBoolean(UInt32)

```cangjie

public func getBoolean(resId: UInt32): Bool
```

**功能：** 获取资源ID对应的布尔结果。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|resId|UInt32|是|-|资源ID。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|资源对象对应的布尔结果。|

**异常：**

- BusinessException：对应错误码如下表，详见[资源管理错误码](../../errorcodes/cj-errorcode-resource-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | If the input parameter invalid. Possible causes: Incorrect parameter types.|
  | 9001001 | Invalid resource ID.|
  | 9001002 | No matching resource is found based on the resource ID.|
  | 9001006 | The resource is referenced cyclically.|

- IllegalStateException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | If the instance id invallid.| todo | todo |

### func getBoolean(AppResource)

```cangjie

public func getBoolean(resource: AppResource): Bool
```

**功能：** 获取资源对象对应的布尔结果。此接口用于多工程应用内跨包访问。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|resource|[AppResource](../LocalizationKit/cj-apis-resource.md#class-appresource)|是|-|资源对象。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|资源对象对应的布尔结果。|

**异常：**

- BusinessException：对应错误码如下表，详见[资源管理错误码](../../errorcodes/cj-errorcode-resource-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | If the input parameter invalid. Possible causes: Incorrect parameter types.|
  | 9001001 | Invalid resource ID.|
  | 9001002 | No matching resource is found based on the resource ID.|
  | 9001006 | The resource is referenced cyclically.|

- IllegalStateException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | If the instance id invallid.| todo | todo |

### func getBooleanByName(String)

```cangjie

public func getBooleanByName(resName: String): Bool
```

**功能：** 获取资源名对应的布尔结果。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|resName|String|是|-|资源名。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|资源名对应的布尔结果。|

**异常：**

- BusinessException：对应错误码如下表，详见[资源管理错误码](../../errorcodes/cj-errorcode-resource-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | If the input parameter invalid. Possible causes: Incorrect parameter types.|
  | 9001003 | Invalid resource name.|
  | 9001004 | No matching resource is found based on the resource name.|
  | 9001006 | The resource is referenced cyclically.|

- IllegalStateException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | If the instance id invallid.| todo | todo |

### func getColor(AppResource)

```cangjie

public func getColor(resource: AppResource): UInt32
```

**功能：** 获取资源对象对应颜色资源的值。此接口用于多工程应用内跨包访问。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|resource|[AppResource](../LocalizationKit/cj-apis-resource.md#class-appresource)|是|-|资源对象。|

**返回值：**

|类型|说明|
|:----|:----|
|UInt32|资源对象对应颜色资源的值（十进制）。|

**异常：**

- BusinessException：对应错误码如下表，详见[资源管理错误码](../../errorcodes/cj-errorcode-resource-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | If the input parameter invalid. Possible causes: Incorrect parameter types.|
  | 9001001 | Invalid resource ID.|
  | 9001002 | No matching resource is found based on the resource ID.|
  | 9001006 | The resource is referenced cyclically.|

- IllegalStateException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | If the instance id invallid.| todo | todo |

### func getColor(UInt32)

```cangjie

public func getColor(resId: UInt32): UInt32
```

**功能：** 获取资源ID对应颜色资源的值。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|resId|UInt32|是|-|资源ID。|

**返回值：**

|类型|说明|
|:----|:----|
|UInt32|资源对象对应颜色资源的值（十进制）。|

**异常：**

- BusinessException：对应错误码如下表，详见[资源管理错误码](../../errorcodes/cj-errorcode-resource-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | If the input parameter invalid. Possible causes: Incorrect parameter types.|
  | 9001001 | Invalid resource ID.|
  | 9001002 | No matching resource is found based on the resource ID.|
  | 9001006 | The resource is referenced cyclically.|

- IllegalStateException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | If the instance id invallid.| todo | todo |

### func getColorByName(String)

```cangjie

public func getColorByName(resName: String): UInt32
```

**功能：** 获取资源名对应颜色资源的值。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|resName|String|是|-|资源名。|

**返回值：**

|类型|说明|
|:----|:----|
|UInt32|资源名对应颜色资源的值（十进制）。|

**异常：**

- BusinessException：对应错误码如下表，详见[资源管理错误码](../../errorcodes/cj-errorcode-resource-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | If the input parameter invalid. Possible causes: Incorrect parameter types.|
  | 9001003 | Invalid resource name.|
  | 9001004 | No matching resource is found based on the resource name.|
  | 9001006 | The resource is referenced cyclically.|

- IllegalStateException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | If the instance id invallid.| todo | todo |

### func getConfiguration()

```cangjie

public func getConfiguration(): Configuration
```

**功能：** 获取设备的配置信息，返回[Configuration](#class-configuration)对象。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[Configuration](#class-configuration)|设备的配置信息。|

**异常：**

- IllegalStateException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | If the instance id invallid. @returns { Configuration } the device configuration.| todo | todo |

### func getDeviceCapability()

```cangjie

public func getDeviceCapability(): DeviceCapability
```

**功能：** 获取设备的设备能力，返回[DeviceCapability](#class-devicecapability)对象。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[DeviceCapability](#class-devicecapability)|设备能力。|

**异常：**

- IllegalStateException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | If the instance id invallid. @returns { DeviceCapability } the device capability.| todo | todo |

### func getLocales(Bool)

```cangjie

public func getLocales(includeSystem!: Bool = false): Array<String>
```

**功能：** 获取应用的语言列表。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|includeSystem|Bool|否|false| **命名参数。** 是否包含系统资源，默认值为false。 <br> false：表示仅获取应用资源的语言列表。 <br>true：表示获取系统资源和应用资源的语言列表。 <br>当系统资源管理对象获取语言列表时，includeSystem值无效，返回获取系统资源语言列表。|

**返回值：**

|类型|说明|
|:----|:----|
|Array\<String>|返回获取的语言列表，列表中的字符串由语言、脚本（可选）、地区（可选），按照顺序使用中划线"-"连接组成。|

**异常：**

- BusinessException：对应错误码如下表，详见[资源管理错误码](../../errorcodes/cj-errorcode-resource-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | If the input parameter invalid. Possible causes: Incorrect parameter types.|

- IllegalStateException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | If the instance id invallid.| todo | todo |

### func getMediaBase64ByName(String, ?ScreenDensity)

```cangjie

public func getMediaBase64ByName(resName: String, density!: ?ScreenDensity = None): String
```

**功能：** 获取资源名对应指定屏幕密度的图片资源，返回图片资源的Base64编码。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|resName|String|是|-|资源ID。|
|density|?[ScreenDensity](#enum-screendensity)|否|None| **命名参数。** 资源获取需要的屏幕密度，0或缺省表示默认屏幕密度。|

**返回值：**

|类型|说明|
|:----|:----|
|String|资源名对应图片资源的Base64编码。|

**异常：**

- BusinessException：对应错误码如下表，详见[资源管理错误码](../../errorcodes/cj-errorcode-resource-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | If the input parameter invalid. Possible causes: 1.Incorrect parameter types; 2.Parameter verification failed.|
  | 9001003 | Invalid resource name.|
  | 9001004 | No matching resource is found based on the resource name.|

- IllegalStateException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | If the instance id invallid.| todo | todo |

- IllegalMemoryException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | Out of memory.| todo | todo |

### func getMediaByName(String, ?ScreenDensity)

```cangjie

public func getMediaByName(resName: String, density!: ?ScreenDensity = None): Array<UInt8>
```

**功能：** 获取资源名对应指定屏幕密度的媒体文件内容。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|resName|String|是|-|资源名。|
|density|?[ScreenDensity](#enum-screendensity)|否|None|资源获取需要的屏幕密度，0表示默认屏幕密度。|

**返回值：**

|类型|说明|
|:----|:----|
|Array\<UInt8>|资源名对应的媒体资源。|

**异常：**

- BusinessException：对应错误码如下表，详见[资源管理错误码](../../errorcodes/cj-errorcode-resource-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | If the input parameter invalid. Possible causes: 1.Incorrect parameter types; 2.Parameter verification failed.|
  | 9001003 | Invalid resource name.|
  | 9001004 | No matching resource is found based on the resource name.|

- IllegalStateException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | If the instance id invallid.| todo | todo |

### func getMediaContent(UInt32, ?ScreenDensity)

```cangjie

public func getMediaContent(resId: UInt32, density!: ?ScreenDensity = None): Array<UInt8>
```

**功能：** 获取资源ID对应指定屏幕密度的媒体文件内容。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|resId|UInt32|是|-|资源ID。|
|density|?[ScreenDensity](#enum-screendensity)|否|None|资源获取需要的屏幕密度，0表示默认屏幕密度。|

**返回值：**

|类型|说明|
|:----|:----|
|Array\<UInt8>|资源ID对应的媒体资源。|

**异常：**

- BusinessException：对应错误码如下表，详见[资源管理错误码](../../errorcodes/cj-errorcode-resource-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | If the input parameter invalid. Possible causes: 1.Incorrect parameter types; 2.Parameter verification failed.|
  | 9001001 | Invalid resource ID.|
  | 9001002 | No matching resource is found based on the resource ID.|

- IllegalStateException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | If the instance id invallid.| todo | todo |

### func getMediaContent(AppResource, ?ScreenDensity)

```cangjie

public func getMediaContent(resource: AppResource, density!: ?ScreenDensity = None): Array<UInt8>
```

**功能：** 获取资源对象对应指定的屏幕密度媒体文件内容。此接口用于多工程应用内跨包访问源。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|resource|[AppResource](../LocalizationKit/cj-apis-resource.md#class-appresource)|是|-|资源对象。|
|density|?[ScreenDensity](#enum-screendensity)|否|None|资源获取需要的屏幕密度，0表示默认屏幕密度。|

**返回值：**

|类型|说明|
|:----|:----|
|Array\<UInt8>|资源对象对应的媒体资源。|

**异常：**

- BusinessException：对应错误码如下表，详见[资源管理错误码](../../errorcodes/cj-errorcode-resource-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | If the input parameter invalid. Possible causes: 1.Incorrect parameter types; 2.Parameter verification failed.|
  | 9001001 | Invalid resource ID.|
  | 9001002 | No matching resource is found based on the resource ID.|

- IllegalStateException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | If the instance id invallid.| todo | todo |

### func getMediaContentBase64(UInt32, ?ScreenDensity)

```cangjie

public func getMediaContentBase64(resId: UInt32, density!: ?ScreenDensity = None): String
```

**功能：** 获取资源ID对应指定屏幕密度的图片资源，返回图片资源的Base64编码。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|resId|UInt32|是|-|资源ID。|
|density|?[ScreenDensity](#enum-screendensity)|否|None| **命名参数。** 资源获取需要的屏幕密度，0或缺省表示默认屏幕密度。|

**返回值：**

|类型|说明|
|:----|:----|
|String|资源ID对应图片资源的Base64编码。|

**异常：**

- BusinessException：对应错误码如下表，详见[资源管理错误码](../../errorcodes/cj-errorcode-resource-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | If the input parameter invalid. Possible causes: 1.Incorrect parameter types; 2.Parameter verification failed.|
  | 9001001 | Invalid resource ID.|
  | 9001002 | No matching resource is found based on the resource ID.|

- IllegalStateException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | If the instance id invallid.| todo | todo |

- IllegalMemoryException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | Out of memory.| todo | todo |

### func getMediaContentBase64(AppResource, ?ScreenDensity)

```cangjie

public func getMediaContentBase64(resource: AppResource, density!: ?ScreenDensity = None): String
```

**功能：** 获取资源对象对应指定屏幕密度的图片资源，返回图片资源的Base64编码。此接口用于多工程应用内跨包访问。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|resource|[AppResource](../LocalizationKit/cj-apis-resource.md#class-appresource)|是|-|资源对象。|
|density|?[ScreenDensity](#enum-screendensity)|否|None| **命名参数。** 资源获取需要的屏幕密度，0或缺省表示默认屏幕密度。|

**返回值：**

|类型|说明|
|:----|:----|
|String|资源对象对应图片资源的Base64编码。|

**异常：**

- BusinessException：对应错误码如下表，详见[资源管理错误码](../../errorcodes/cj-errorcode-resource-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | If the input parameter invalid. Possible causes: 1.Incorrect parameter types; 2.Parameter verification failed.|
  | 9001001 | Invalid resource ID.|
  | 9001002 | No matching resource is found based on the resource ID.|

- IllegalStateException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | If the instance id invallid.| todo | todo |

- IllegalMemoryException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | Out of memory.| todo | todo |

### func getNumber(UInt32)

```cangjie

public func getNumber(resId: UInt32): NumberValueType
```

**功能：** 获取资源ID对应的数字资源。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|resId|UInt32|是|-|资源ID。|

**返回值：**

|类型|说明|
|:----|:----|
|[NumberValueType](#enum-numbervaluetype)|资源对象对应的数字资源。|

**异常：**

- BusinessException：对应错误码如下表，详见[资源管理错误码](../../errorcodes/cj-errorcode-resource-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | If the input parameter invalid. Possible causes: Incorrect parameter types.|
  | 9001001 | Invalid resource ID.|
  | 9001002 | No matching resource is found based on the resource ID.|
  | 9001006 | The resource is referenced cyclically.|

- IllegalStateException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | If the instance id invallid.| todo | todo |

### func getNumber(AppResource)

```cangjie

public func getNumber(resource: AppResource): NumberValueType
```

**功能：** 获取资源对象的数字资源。此接口用于多工程应用内跨包访问。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|resource|[AppResource](../LocalizationKit/cj-apis-resource.md#class-appresource)|是|-|资源对象。|

**返回值：**

|类型|说明|
|:----|:----|
|[NumberValueType](#enum-numbervaluetype)|资源对象对应的数字资源。|

**异常：**

- BusinessException：对应错误码如下表，详见[资源管理错误码](../../errorcodes/cj-errorcode-resource-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | If the input parameter invalid. Possible causes: Incorrect parameter types.|
  | 9001001 | Invalid resource ID.|
  | 9001002 | No matching resource is found based on the resource ID.|
  | 9001006 | The resource is referenced cyclically.|

- IllegalStateException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | If the instance id invallid.| todo | todo |

### func getNumberByName(String)

```cangjie

public func getNumberByName(resName: String): NumberValueType
```

**功能：** 获取资源名的数字资源。若integer资源和float资源中有相同的`resName`，优先返回integer资源的数值。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|resName|String|是|-|资源名。|

**返回值：**

|类型|说明|
|:----|:----|
|[NumberValueType](#enum-numbervaluetype)|资源名对应的数字资源。|

**异常：**

- BusinessException：对应错误码如下表，详见[资源管理错误码](../../errorcodes/cj-errorcode-resource-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | If the input parameter invalid. Possible causes: Incorrect parameter types.|
  | 9001003 | Invalid resource name.|
  | 9001004 | No matching resource is found based on the resource name.|
  | 9001006 | The resource is referenced cyclically.|

- IllegalStateException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | If the instance id invallid.| todo | todo |

### func getPluralStringByName(String, Int64)

```cangjie

public func getPluralStringByName(resName: String, num: Int64): String
```

**功能：** 获取资源名的单复数字符串资源，并根据指定数量格式化字符串。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|resName|String|是|-|资源名。|
|num|Int64|是|-|数量值。|

**返回值：**

|类型|说明|
|:----|:----|
|String|指定资源名的单复数字符串资源。|

**异常：**

- BusinessException：对应错误码如下表，详见[资源管理错误码](../../errorcodes/cj-errorcode-resource-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | If the input parameter invalid. Possible causes: Incorrect parameter types.|
  | 9001003 | Invalid resource name.|
  | 9001004 | No matching resource is found based on the resource name.|
  | 9001006 | The resource is referenced cyclically.|

- IllegalStateException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | If the instance id invallid.| todo | todo |

- IllegalMemoryException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | Out of memory.| todo | todo |

### func getPluralStringValue(UInt32, Int64)

```cangjie

public func getPluralStringValue(resId: UInt32, num: Int64): String
```

**功能：** 获取资源ID的单复数字符串资源，并根据指定数量格式化字符串。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|resId|UInt32|是|-|资源ID。|
|num|Int64|是|-|数量值。|

**返回值：**

|类型|说明|
|:----|:----|
|String|指定资源对象的单复数字符串资源。|

**异常：**

- BusinessException：对应错误码如下表，详见[资源管理错误码](../../errorcodes/cj-errorcode-resource-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | If the input parameter invalid. Possible causes: Incorrect parameter types.|
  | 9001001 | Invalid resource ID.|
  | 9001002 | No matching resource is found based on the resource ID.|
  | 9001006 | The resource is referenced cyclically.|

- IllegalStateException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | If the instance id invallid.| todo | todo |

- IllegalMemoryException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | Out of memory.| todo | todo |

### func getPluralStringValue(AppResource, Int64)

```cangjie

public func getPluralStringValue(resource: AppResource, num: Int64): String
```

**功能：** 获取资源对象的单复数字符串资源，并根据指定数量格式化字符串。此接口用于多工程应用内跨包访问。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|resource|[AppResource](../LocalizationKit/cj-apis-resource.md#class-appresource)|是|-|资源对象。|
|num|Int64|是|-|数量值。|

**返回值：**

|类型|说明|
|:----|:----|
|String|指定资源对象的单复数字符串资源。|

**异常：**

- BusinessException：对应错误码如下表，详见[资源管理错误码](../../errorcodes/cj-errorcode-resource-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | If the input parameter invalid. Possible causes: Incorrect parameter types.|
  | 9001001 | Invalid resource ID.|
  | 9001002 | No matching resource is found based on the resource ID.|
  | 9001006 | The resource is referenced cyclically.|

- IllegalStateException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | If the instance id invallid.| todo | todo |

- IllegalMemoryException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | Out of memory.| todo | todo |

### func getRawFd(String)

```cangjie

public func getRawFd(path: String): RawFileDescriptor
```

**功能：** 获取resources/rawfile目录下对应rawfile文件的descriptor。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|path|String|是|-|rawfile文件路径。|

**返回值：**

|类型|说明|
|:----|:----|
|[RawFileDescriptor](./cj-apis-raw_file_descriptor.md#class-rawfiledescriptor)|rawfile文件的descriptor。|

**异常：**

- BusinessException：对应错误码如下表，详见[资源管理错误码](../../errorcodes/cj-errorcode-resource-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | If the input parameter invalid. Possible causes: Incorrect parameter types.|
  | 9001005 | Invalid relative path.|

- IllegalStateException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | If the instance id invallid.| todo | todo |

### func getRawFileContent(String)

```cangjie

public func getRawFileContent(path: String): Array<UInt8>
```

**功能：** 获取resources/rawfile目录下对应的rawfile文件内容，返回字节数组。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|path|String|是|-|rawfile文件路径。|

**返回值：**

|类型|说明|
|:----|:----|
|Array\<UInt8>|rawfile文件的内容。|

**异常：**

- BusinessException：对应错误码如下表，详见[资源管理错误码](../../errorcodes/cj-errorcode-resource-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | If the input parameter invalid. Possible causes: Incorrect parameter types.|
  | 9001005 | Invalid relative path.|

- IllegalStateException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | If the instance id invallid.| todo | todo |

### func getRawFileList(String)

```cangjie

public func getRawFileList(path: String): Array<String>
```

**功能：** 获取resources/rawfile目录下文件夹及文件列表，返回文件列表的字符串数组。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|path|String|是|-|rawfile文件夹路径。|

**返回值：**

|类型|说明|
|:----|:----|
|Array\<String>|rawfile文件夹下的列表（包含子文件夹和文件）。|

**异常：**

- BusinessException：对应错误码如下表，详见[资源管理错误码](../../errorcodes/cj-errorcode-resource-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | If the input parameter invalid. Possible causes: Incorrect parameter types.|
  | 9001005 | Invalid relative path.|

- IllegalStateException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | If the instance id invallid.| todo | todo |

### func getString(UInt32, Array\<ArgsValueType>)

```cangjie

public func getString(resId: UInt32, args: Array<ArgsValueType>): String
```

**功能：** 获取资源ID对应的字符串资源，并根据args参数进行格式化。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|resId|UInt32|是|-|资源对象。|
|args|Array\<[ArgsValueType](#enum-argsvaluetype)>|是|-|格式化字符串资源参数。 <br>支持参数类型：<br /> %d、%f、%s、%%。 <br>说明：%%转译符，转译%。<br>举例：%%d格式化后为%d字符串。|

**返回值：**

|类型|说明|
|:----|:----|
|String|资源名对应的格式化字符串。|

**异常：**

- BusinessException：对应错误码如下表，详见[资源管理错误码](../../errorcodes/cj-errorcode-resource-manager.md)。

| 错误码ID | 错误信息 |
| :---- | :--- |
| 401 | If the input parameter invalid.|
| 9001001 | Invalid resource ID.|
| 9001002 | No matching resource is found based on the resource ID.|
| 9001006 | The resource is referenced cyclically.|
| 9001007 | Failed to format the resource obtained based on the resource ID.|

- IllegalStateException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | If the instance id invallid.| todo | todo |

### func getString(AppResource, Array\<ArgsValueType>)

```cangjie

public func getString(resource: AppResource, args: Array<ArgsValueType>): String
```

**功能：** 获取资源对象对应的字符串资源，根据args参数进行格式化。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|resource|[AppResource](../LocalizationKit/cj-apis-resource.md#class-appresource)|是|-|资源对象。|
|args|Array\<[ArgsValueType](#enum-argsvaluetype)>|是|-|格式化字符串资源参数。 <br>支持参数类型：<br /> %d、%f、%s、%%。 <br>说明：%%转译符，转译%。<br>举例：%%d格式化后为%d字符串。|

**返回值：**

|类型|说明|
|:----|:----|
|String|资源名对应的格式化字符串。|

**异常：**

- BusinessException：对应错误码如下表，详见[资源管理错误码](../../errorcodes/cj-errorcode-resource-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | If the input parameter invalid. Possible causes: Incorrect parameter types.|
  | 9001001 | Invalid resource ID.|
  | 9001002 | No matching resource is found based on the resource ID.|
  | 9001006 | The resource is referenced cyclically.|
  | 9001007 | Failed to format the resource obtained based on the resource ID.|

- IllegalStateException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | If the instance id invallid.| todo | todo |

### func getStringArrayByName(String)

```cangjie
public func getStringArrayByName(resName: String): Array<String>
```

**功能：** 获取资源名对应的字符串数组资源。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|resName|String|是|-|资源名。|

**返回值：**

|类型|说明|
|:----|:----|
|Array\<String>|资源名对应的字符串数组资源。|

**异常：**

- BusinessException：对应错误码如下表，详见[资源管理错误码](../../errorcodes/cj-errorcode-resource-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | If the input parameter invalid. Possible causes: Incorrect parameter types. |
  | 9001003 | Invalid resource name. |
  | 9001004 | No matching resource is found based on the resource name. |
  | 9001006 | The resource is referenced cyclically. |

- IllegalStateException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | If the instance id invallid. | todo | todo |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import kit.LocalizationKit.*
import kit.AbilityKit.*

let stageContext = getStageContext(MainAbility.abilityContext.getOrThrow())
let resourceManager = ResourceManager.getResourceManager(stageContext)
resourceManager.getStringArrayByName("test")
```

### func getStringArrayValue(UInt32)

```cangjie

public func getStringArrayValue(resId: UInt32): Array<String>
```

**功能：** 获取资源ID对应的字符串数组资源。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|resId|UInt32|是|-|资源ID。|

**返回值：**

|类型|说明|
|:----|:----|
|Array\<String>|资源ID对应的字符串数组。|

**异常：**

- BusinessException：对应错误码如下表，详见[资源管理错误码](../../errorcodes/cj-errorcode-resource-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | If the input parameter invalid. Possible causes: Incorrect parameter types.|
  | 9001001 | Invalid resource ID.|
  | 9001002 | No matching resource is found based on the resource ID.|
  | 9001006 | The resource is referenced cyclically.|

- IllegalStateException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | If the instance id invallid.| todo | todo |

### func getStringArrayValue(AppResource)

```cangjie

public func getStringArrayValue(resource: AppResource): Array<String>
```

**功能：** 获取资源对象对应的字符串数组资源。此接口用于多工程应用内跨包访问。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|resource|[AppResource](../LocalizationKit/cj-apis-resource.md#class-appresource)|是|-|资源对象。|

**返回值：**

|类型|说明|
|:----|:----|
|Array\<String>|资源对象对应的字符串数组。|

**异常：**

- BusinessException：对应错误码如下表，详见[资源管理错误码](../../errorcodes/cj-errorcode-resource-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | If the input parameter invalid. Possible causes: Incorrect parameter types.|
  | 9001001 | Invalid resource ID.|
  | 9001002 | No matching resource is found based on the resource ID.|
  | 9001006 | The resource is referenced cyclically.|

- IllegalStateException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | If the instance id invallid.| todo | todo |

### func getStringByName(String, Array\<ArgsValueType>)

```cangjie

public func getStringByName(resName: String, args: Array<ArgsValueType>): String
```

**功能：** 获取资源名对应的字符串资源，根据args参数进行格式化。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|resName|String|是|-|资源名。|
|args|Array\<[ArgsValueType](#enum-argsvaluetype)>|是|-|格式化字符串资源参数。 <br>支持参数类型：<br /> %d、%f、%s、%%。 <br>说明：%%转译符，转译%。<br>举例：%%d格式化后为%d字符串。|

**返回值：**

|类型|说明|
|:----|:----|
|String|资源名对应的格式化字符串。|

**异常：**

- BusinessException：对应错误码如下表，详见[资源管理错误码](../../errorcodes/cj-errorcode-resource-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | If the input parameter invalid. Possible causes: Incorrect parameter types.|
  | 9001003 | Invalid resource name.|
  | 9001004 | No matching resource is found based on the resource name.|
  | 9001006 | The resource is referenced cyclically.|
  | 9001008 | Failed to format the resource obtained based on the resource Name.|

- IllegalStateException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | If the instance id invallid.| todo | todo |

### func removeResource(String)

```cangjie

public func removeResource(path: String): Unit
```

**功能：** 用户运行时，移除指定的资源路径，还原被覆盖前的资源。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|path|String|是|-|资源路径。|

**异常：**

- BusinessException：对应错误码如下表，详见[资源管理错误码](../../errorcodes/cj-errorcode-resource-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 9001010 | Invalid overlay path.|

- IllegalStateException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | If the instance id invallid.| todo | todo |

## enum ArgsValueType

```cangjie
public enum ArgsValueType {
    | Int32Value(Int32)
    | Float32Value(Float32)
    | StringValue(String)
    | ...
}
```

**功能：** 格式化字符串资源参数枚举类型。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

### Float32Value(Float32)

```cangjie
Float32Value(Float32)
```

**功能：** Float32类型的格式化字符串资源参数枚举值。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

### Int32Value(Int32)

```cangjie
Int32Value(Int32)
```

**功能：** Int32类型的格式化字符串资源参数枚举值。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

### StringValue(String)

```cangjie
StringValue(String)
```

**功能：** String类型的格式化字符串资源参数枚举值。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

## enum ColorMode

```cangjie
public enum ColorMode {
    | Dark
    | Light
    | ...
}
```

**功能：** 用于表示当前设备颜色模式。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

### Dark

```cangjie
Dark
```

**功能：** 深色模式。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

### Light

```cangjie
Light
```

**功能：** 浅色模式。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

## enum DeviceType

```cangjie
public enum DeviceType {
    | DeviceTypePhone
    | DeviceTypeTablet
    | DeviceTypeCar
    | DeviceTypePc
    | DeviceTypeTv
    | DeviceTypeWearable
    | DeviceType2In1
    | ...
}
```

**功能：** 用于表示当前设备类型。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

### DeviceType2In1

```cangjie
DeviceType2In1
```

**功能：** 二合一设备。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

### DeviceTypeCar

```cangjie
DeviceTypeCar
```

**功能：** 汽车。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

### DeviceTypePc

```cangjie
DeviceTypePc
```

**功能：** 电脑。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

### DeviceTypePhone

```cangjie
DeviceTypePhone
```

**功能：** 手机。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

### DeviceTypeTv

```cangjie
DeviceTypeTv
```

**功能：** 电视。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

### DeviceTypeTablet

```cangjie
DeviceTypeTablet
```

**功能：** 平板。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

### DeviceTypeWearable

```cangjie
DeviceTypeWearable
```

**功能：** 穿戴。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

## enum Direction

```cangjie
public enum Direction {
    | DirectionVertical
    | DirectionHorizontal
    | ...
}
```

**功能：** 用于表示设备屏幕方向。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

### DirectionHorizontal

```cangjie
DirectionHorizontal
```

**功能：** 横屏。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

### DirectionVertical

```cangjie
DirectionVertical
```

**功能：** 竖屏。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

## enum NumberValueType

```cangjie
public enum NumberValueType {
    | Int32Value(Int32)
    | Float32Value(Float32)
    | ...
}
```

**功能：** 表示从资源中获取到的数字类型。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

### Float32Value(Float32)

```cangjie
Float32Value(Float32)
```

**功能：** 存储Float32类型值的Number类型。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

### Int32Value(Int32)

```cangjie
Int32Value(Int32)
```

**功能：** 存储Int32类型值的Number类型。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

## enum ScreenDensity

```cangjie
public enum ScreenDensity {
    | ScreenSdpi
    | ScreenMdpi
    | ScreenLdpi
    | ScreenXldpi
    | ScreenXxldpi
    | ScreenXxxldpi
    | ...
}
```

**功能：** 用于表示当前设备屏幕密度。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

### ScreenLdpi

```cangjie
ScreenLdpi
```

**功能：** 大规模的屏幕密度。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

### ScreenMdpi

```cangjie
ScreenMdpi
```

**功能：** 中规模的屏幕密度。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

### ScreenSdpi

```cangjie
ScreenSdpi
```

**功能：** 小规模的屏幕密度。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

### ScreenXldpi

```cangjie
ScreenXldpi
```

**功能：** 特大规模的屏幕密度。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

### ScreenXxldpi

```cangjie
ScreenXxldpi
```

**功能：** 超大规模的屏幕密度。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21

### ScreenXxxldpi

```cangjie
ScreenXxxldpi
```

**功能：** 超特大规模的屏幕密度。

**系统能力：** SystemCapability.Global.ResourceManager

**起始版本：** 21
