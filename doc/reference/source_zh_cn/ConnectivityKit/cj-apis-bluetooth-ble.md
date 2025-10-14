# ohos.bluetooth.ble（蓝牙ble模块）

ble模块提供了对蓝牙操作和管理的方法。

## 导入模块

```cangjie
import kit.ConnectivityKit.*
```

## 权限列表

ohos.permission.ACCESS_BLUETOOTH

## 使用说明

API示例代码使用说明：

- 若示例代码首行有“// index.cj”注释，表示该示例可在仓颉模板工程的“index.cj”文件中编译运行。
- 若示例需获取[Context](./../AbilityKit/cj-apis-app-ability-ui_ability.md#class-context)应用上下文，需在仓颉模板工程中的“main_ability.cj”文件中进行配置。
- 请将示例代码中的XX:XX:XX:XX:XX:XX或其他地址替换为您的真实地址

上述示例工程及配置模板详见[仓颉示例代码说明](../cj-development-intro.md#仓颉示例代码说明)。

## func createGattClientDevice(String)

```cangjie
public func createGattClientDevice(deviceId: String): GattClientDevice
```

**功能：** 创建一个可使用的GattClientDevice实例。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|deviceId|String|是|-|对端设备地址，例如："XX:XX:XX:XX:XX:XX"。|

**返回值：**

|类型|说明|
|:----|:----|
|[GattClientDevice](#class-gattclientdevice)|client端类，使用client端方法之前需要创建该类的实例进行操作。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.2. Incorrect parameter types. 3. Parameter verification failed. |
  | 801 | Capability not supported. |

**示例：**

<!-- compile only -->
<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

try {
    let device: GattClientDevice = createGattClientDevice("XX:XX:XX:XX:XX:XX")  // 请替换为您的设备地址
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

## func createGattServer()

```cangjie
public func createGattServer(): GattServer
```

**功能：** 创建一个可使用的GattServer实例。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**返回值：**

|类型|说明|
|:----|:----|
|[GattServer](#class-gattserver)|返回一个Gatt服务的实例。|

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

let gattServer: GattServer = createGattServer()
```

## func off(BluetoothBleCallbackType, ?CallbackObject)

```cangjie
public func off(eventType: BluetoothBleCallbackType, callback!: ?CallbackObject = None): Unit
```

**功能：** 取消订阅BLE设备事件。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|eventType|[BluetoothBleCallbackType](#enum-bluetoothblecallbacktype)|是|-|回调事件。|
|callback|?[CallbackObject](../arkinterop/cj-api-callback_invoke.md#class-callbackobject)|否|None|**命名参数。**  表示取消订阅BLE事件。不填该参数则取消订阅该type对应的所有回调。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)和[蓝牙服务子系统错误码](./cj-errorcode-bluetooth_manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 401 | Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.2. Incorrect parameter types. 3. Parameter verification failed. |
  | 801 | Capability not supported. |
  | 2900099 | Operation failed. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.callback_invoke.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

// 此处代码可添加在依赖项定义中
class BLEDeviceFindCallback <: Callback1Argument<Array<ScanResult>> {
    public func invoke(err: ?BusinessException, devices: Array<ScanResult>): Unit {
        for (device in devices) {
            Hilog.info(0, "Bluetooth", "device has find, deviceID is ${device.deviceId}, name is ${device.deviceName}")
        }
    }
}

let bleDeviceFindCallback = BLEDeviceFindCallback()
try {
    on(BluetoothBleCallbackType.BleDeviceFind, bleDeviceFindCallback)
    off(BluetoothBleCallbackType.BleDeviceFind, callback: bleDeviceFindCallback)
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

## func on(BluetoothBleCallbackType, Callback1Argument\<AdvertisingStateChangeInfo>)

```cangjie
public func on(eventType: BluetoothBleCallbackType, callback: Callback1Argument<AdvertisingStateChangeInfo>): Unit
```

**功能：** 订阅BLE广播状态。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|eventType|[BluetoothBleCallbackType](#enum-bluetoothblecallbacktype)|是|-|填写 AdvertisingStateChange，表示广播状态事件。|
|callback|[Callback1Argument](../arkinterop/cj-api-callback_invoke.md#class-callback1argument)\<[AdvertisingStateChangeInfo](#class-advertisingstatechangeinfo)>|是|-|表示回调函数的入参，广播状态。回调函数由用户创建通过该接口注册。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)和[蓝牙服务子系统错误码](./cj-errorcode-bluetooth_manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 401 | Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.2. Incorrect parameter types. 3. Parameter verification failed. |
  | 801 | Capability not supported. |
  | 2900099 | Operation failed. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.callback_invoke.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

// 此处代码可添加在依赖项定义中
class AdvertisingStateChange <: Callback1Argument<AdvertisingStateChangeInfo> {
    public func invoke(err: ?BusinessException, info: AdvertisingStateChangeInfo): Unit {
        Hilog.info(0, "Bluetooth", "the advertising state is ${info.state}")
    }
}

let advertisingStateChange = AdvertisingStateChange()
try {
    on(BluetoothBleCallbackType.AdvertisingStateChange, advertisingStateChange)
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

## func on(BluetoothBleCallbackType, Callback1Argument\<Array\<ScanResult>>)

```cangjie
public func on(eventType: BluetoothBleCallbackType, callback: Callback1Argument<Array<ScanResult>>): Unit
```

**功能：** 订阅BLE设备发现上报事件。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|eventType|[BluetoothBleCallbackType](#enum-bluetoothblecallbacktype)|是|-|填写BleDeviceFind，表示BLE设备发现事件。|
|callback|[Callback1Argument](../arkinterop/cj-api-callback_invoke.md#class-callback1argument)\<Array\<[ScanResult](#class-scanresult)>>|是|-|表示回调函数的入参，发现的设备集合。回调函数由用户创建通过该接口注册。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)和[蓝牙服务子系统错误码](./cj-errorcode-bluetooth_manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 401 | Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.2. Incorrect parameter types. 3. Parameter verification failed. |
  | 801 | Capability not supported. |
  | 2900099 | Operation failed. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.callback_invoke.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

// 此处代码可添加在依赖项定义中
class BLEDeviceFindCallback <: Callback1Argument<Array<ScanResult>> {
    public func invoke(err: ?BusinessException, devices: Array<ScanResult>): Unit {
        for (device in devices) {
            Hilog.info(0, "Bluetooth", "device has find, deviceID is ${device.deviceId}, name is ${device.deviceName}")
        }
    }
}

let bleDeviceFindCallback = BLEDeviceFindCallback()
try {
    on(BluetoothBleCallbackType.BleDeviceFind, bleDeviceFindCallback)
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

## func startAdvertising(AdvertiseSetting, AdvertiseData, ?AdvertiseData)

```cangjie
public func startAdvertising(setting: AdvertiseSetting, advData: AdvertiseData, advResponse!: ?AdvertiseData = None): Unit
```

**功能：** 开始发送BLE广播。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|setting|[AdvertiseSetting](#class-advertisesetting)|是|-|BLE广播的相关参数。|
|advData|[AdvertiseData](#class-advertisedata)|是|-|BLE广播包内容。|
|advResponse|?[AdvertiseData](#class-advertisedata)|否|None|**命名参数。**  BLE回复扫描请求回复响应。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)和[蓝牙服务子系统错误码](./cj-errorcode-bluetooth_manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 401 | Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.2. Incorrect parameter types. 3. Parameter verification failed. |
  | 801 | Capability not supported. |
  | 2900001 | Service stopped. |
  | 2900003 | Bluetooth disabled. |
  | 2900099 | Operation failed. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.ConnectivityKit.*
import ohos.hilog.Hilog

let advertisingSettings = AdvertiseSetting(32, 0, true)
let manufactureDataUnit = ManufactureData(
    4567u16,
    [1, 2, 3, 4]
)
let serviceDataUnit = ServiceData(
    "00001888-0000-1000-8000-00805f9b34fb",
    [5, 6, 7, 8]
)
let advertisingData = AdvertiseData(
    ["00001888-0000-1000-8000-00805f9b34fb"],
    [manufactureDataUnit],
    [serviceDataUnit],
    includeDeviceName: true
)
let advertisingResponse = AdvertiseData(
    ["00001888-0000-1000-8000-00805f9b34fb"],
    [manufactureDataUnit],
    [serviceDataUnit]
)
try {
    startAdvertising(advertisingSettings, advertisingData, advResponse: advertisingResponse)
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

## func startAdvertising(AdvertisingParams)

```cangjie
public func startAdvertising(advertisingParams: AdvertisingParams): UInt32
```

**功能：** 开始发送BLE广播。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|advertisingParams|[AdvertisingParams](#class-advertisingparams)|是|-|启动BLE广播的相关参数。|

**返回值：**

|类型|说明|
|:----|:----|
|UInt32|广播ID标识。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)和[蓝牙服务子系统错误码](./cj-errorcode-bluetooth_manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 401 | Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.2. Incorrect parameter types. 3. Parameter verification failed. |
  | 801 | Capability not supported. |
  | 2900001 | Service stopped. |
  | 2900003 | Bluetooth disabled. |
  | 2900099 | Operation failed. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.ConnectivityKit.*
import ohos.hilog.Hilog

let advertisingSettings = AdvertiseSetting(32, 0, true)
let manufactureDataUnit = ManufactureData(
    4567u16,
    [1, 2, 3, 4]
)
let serviceDataUnit = ServiceData(
    "00001888-0000-1000-8000-00805f9b34fb",
    [5, 6, 7, 8]
)
let advertisingData = AdvertiseData(
    ["00001888-0000-1000-8000-00805f9b34fb"],
    [manufactureDataUnit],
    [serviceDataUnit],
    includeDeviceName: true
)
let advertisingResponse = AdvertiseData(
    ["00001888-0000-1000-8000-00805f9b34fb"],
    [manufactureDataUnit],
    [serviceDataUnit]
)
let advertisingParams = AdvertisingParams(
    advertisingSettings,
    advertisingData,
    advertisingResponse,
    duration: 300
)
try {
    let advHandle = startAdvertising(advertisingParams)
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

## func startBLEScan(Array\<ScanFilter>, ?ScanOptions)

```cangjie
public func startBLEScan(filters: Array<ScanFilter>, options!: ?ScanOptions = None): Unit
```

**功能：** 发起BLE扫描流程。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|filters|Array\<[ScanFilter](#class-scanfilter)>|是|-|表示扫描结果过滤策略集合，符合过滤条件的设备发现会保留。|
|options|?[ScanOptions](#class-scanoptions)|否|None|**命名参数。**  表示扫描的参数配置，可选参数。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)和[蓝牙服务子系统错误码](./cj-errorcode-bluetooth_manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 401 | Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.2. Incorrect parameter types. 3. Parameter verification failed. |
  | 801 | Capability not supported. |
  | 2900001 | Service stopped. |
  | 2900003 | Bluetooth disabled. |
  | 2900099 | Operation failed. |

**示例：**

<!-- compile only -->
<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.callback_invoke.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

// 此处代码可添加在依赖项定义中
class BLEDeviceFindCallback <: Callback1Argument<Array<ScanResult>> {
    public func invoke(err: ?BusinessException, devices: Array<ScanResult>): Unit {
        for (device in devices) {
            Hilog.info(0, "Bluetooth", "device has find, deviceID is ${device.deviceId}, name is ${device.deviceName}")
        }
    }
}

let bleDeviceFindCallback = BLEDeviceFindCallback()
try {
    on(BluetoothBleCallbackType.BleDeviceFind, bleDeviceFindCallback)
    var scanFilter = ScanFilter()
    scanFilter.serviceUuid = "00001888-0000-1000-8000-00805f9b34fb"  // 请替换为您的 serviceUUid
    let scanOptions = ScanOptions(interval: 0, dutyMode: ScanDuty.ScanModeLowPower, matchMode: MatchMode.MatchModeAggressive, phyType: PhyType.PhyLe1M)
    startBLEScan([scanFilter], options: scanOptions)
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

## func stopAdvertising()

```cangjie
public func stopAdvertising(): Unit
```

**功能：** 停止发送BLE广播。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)和[蓝牙服务子系统错误码](./cj-errorcode-bluetooth_manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 801 | Capability not supported. |
  | 2900001 | Service stopped. |
  | 2900003 | Bluetooth disabled. |
  | 2900099 | Operation failed. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.ConnectivityKit.*
import ohos.hilog.Hilog

try {
    stopAdvertising()
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

## func stopAdvertising(UInt32)

```cangjie
public func stopAdvertising(advertisingId: UInt32): Unit
```

**功能：** 停止发送BLE广播。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|advertisingId|UInt32|是|-|需要停止的广播ID标识。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)和[蓝牙服务子系统错误码](./cj-errorcode-bluetooth_manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 401 | Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.2. Incorrect parameter types.3. Parameter verification failed. |
  | 801 | Capability not supported. |
  | 2900001 | Service stopped. |
  | 2900003 | Bluetooth disabled. |
  | 2900099 | Operation failed. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.ConnectivityKit.*
import ohos.hilog.Hilog

let advertisingSettings = AdvertiseSetting(32, 0, true)
let manufactureDataUnit = ManufactureData(
    4567u16,
    [1, 2, 3, 4]
)
let serviceDataUnit = ServiceData(
    "00001888-0000-1000-8000-00805f9b34fb",
    [5, 6, 7, 8]
)
let advertisingData = AdvertiseData(
    ["00001888-0000-1000-8000-00805f9b34fb"],
    [manufactureDataUnit],
    [serviceDataUnit],
    includeDeviceName: true
)
let advertisingResponse = AdvertiseData(
    ["00001888-0000-1000-8000-00805f9b34fb"],
    [manufactureDataUnit],
    [serviceDataUnit]
)
let advertisingParams = AdvertisingParams(
    advertisingSettings,
    advertisingData,
    advertisingResponse,
    duration: 300
)
var advHandle: UInt32 = 0xFF
try {
    advHandle = startAdvertising(advertisingParams)
    stopAdvertising(advHandle)
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

## func stopBLEScan()

```cangjie
public func stopBLEScan(): Unit
```

**功能：** 停止BLE扫描流程。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)和[蓝牙服务子系统错误码](./cj-errorcode-bluetooth_manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 801 | Capability not supported. |
  | 2900001 | Service stopped. |
  | 2900003 | Bluetooth disabled. |
  | 2900099 | Operation failed. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

try {
    stopBLEScan()
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

## class AdvertiseData

```cangjie
public class AdvertiseData {
    public var serviceUuids: Array<String>
    public var manufactureData: Array<ManufactureData>
    public var serviceData: Array<ServiceData>
    public var includeDeviceName: Bool
    public init(
        serviceUuids: Array<String>,
        manufactureData: Array<ManufactureData>,
        serviceData: Array<ServiceData>,
        includeDeviceName!: Bool = false,
        includeTxPower!: Bool = false
    )
}
```

**功能：** 描述BLE广播数据包的内容，广播包数据长度为31个字节。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var includeDeviceName

```cangjie
public var includeDeviceName: Bool
```

**功能：** 表示是否携带设备名，可选参数。true表示携带，false或未设置此参数表示不携带。注意带上设备名时广播包长度不能超出31个字节。

**类型：** Bool

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var manufactureData

```cangjie
public var manufactureData: Array<ManufactureData>
```

**功能：** 表示要广播的广播的制造商信息列表。

**类型：** Array\<[ManufactureData](#class-manufacturedata)>

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var serviceData

```cangjie
public var serviceData: Array<ServiceData>
```

**功能：** 表示要广播的服务数据列表。

**类型：** Array\<[ServiceData](#class-servicedata)>

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var serviceUuids

```cangjie
public var serviceUuids: Array<String>
```

**功能：** 表示要广播的服务列表。

**类型：** Array\<String>

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### init(Array\<String>, Array\<ManufactureData>, Array\<ServiceData>, Bool, Bool)

```cangjie
public init(
    serviceUuids: Array<String>,
    manufactureData: Array<ManufactureData>,
    serviceData: Array<ServiceData>,
    includeDeviceName!: Bool = false,
    includeTxPower!: Bool = false
)
```

**功能：** AdvertiseData 构造器。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|serviceUuids|Array\<String>|是|-|表示要广播的服务 UUID 列表。|
|manufactureData|Array\<[ManufactureData](#class-manufacturedata)>|是|-|表示要广播的广播的制造商信息列表。|
|serviceData|Array\<[ServiceData](#class-servicedata)>|是|-|表示要广播的服务数据列表。|
|includeDeviceName|Bool|否|false| **命名参数。**  表示是否携带设备名，可选参数。true表示携带，false或未设置此参数表示不携带。注意带上设备名时广播包长度不能超出31个字节。|
|includeTxPower|Bool|否|false| **命名参数。**  表示是否携带广播发送功率。true表示携带广播发送功率，false表示不携带广播发送功率，默认值为false。携带该值后，广播报文长度将多占3个字节。预留字段，本版本暂不支持。|

## class AdvertiseSetting

```cangjie
public class AdvertiseSetting {
    public var interval: UInt16
    public var txPower: Int8
    public var connectable: Bool
    public init(interval!: UInt16 = BLE_ADV_DEFAULT_INTERVAL, txPower!: Int8 = BLE_ADV_TX_POWER_MEDIUM_VALUE, connectable!: Bool = true)
}
```

**功能：** 描述蓝牙低功耗设备发送广播的参数。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var connectable

```cangjie
public var connectable: Bool
```

**功能：** 表示是否是可连接广播，默认值设置为true，表示可连接，false表示不可连接。

**类型：** Bool

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var interval

```cangjie
public var interval: UInt16
```

**功能：** 表示广播间隔，最小值设置160个slot表示100ms，最大值设置16384个slot，默认值设置为1600个slot表示1s。

**类型：** UInt16

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var txPower

```cangjie
public var txPower: Int8
```

**功能：** 表示发送功率，最小值设置-127，最大值设置1，默认值设置-7，单位dbm。推荐值：高档（1），中档（-7），低档（-15）。

**类型：** Int8

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### init(UInt16, Int8, Bool)

```cangjie
public init(interval!: UInt16 = BLE_ADV_DEFAULT_INTERVAL, txPower!: Int8 = BLE_ADV_TX_POWER_MEDIUM_VALUE, connectable!: Bool = true)
```

**功能：** 构造蓝牙低功耗设备发送广播的参数结构。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|interval|UInt16|否|BLE_ADV_DEFAULT_INTERVAL|表示广播间隔，最小值设置160个slot表示100ms，最大值设置16384个slot，默认值设置为1600个slot表示1s。|
|txPower|Int8|否|BLE_ADV_TX_POWER_MEDIUM_VALUE|表示发送功率，最小值设置-127，最大值设置1，默认值设置-7，单位dbm。推荐值：高档（1），中档（-7），低档（-15）。|
|connectable|Bool|否|true|表示是否是可连接广播，默认值设置为true，表示可连接，false表示不可连接。|

## class AdvertisingParams

```cangjie
public class AdvertisingParams {
    public var advertisingSettings: AdvertiseSetting
    public var advertisingData: AdvertiseData
    public var advertisingResponse: AdvertiseData
    public var duration: UInt16
    public init(
        advertisingSettings: AdvertiseSetting,
        advertisingData: AdvertiseData,
        advertisingResponse!: AdvertiseData = AdvertiseData([], [], []),
        duration!: UInt16 = 0
    )
}
```

**功能：** 描述首次启动广播设置的参数。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var advertisingData

```cangjie
public var advertisingData: AdvertiseData
```

**功能：** 表示广播的数据包内容。

**类型：** [AdvertiseData](#class-advertisedata)

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var advertisingResponse

```cangjie
public var advertisingResponse: AdvertiseData
```

**功能：** 表示回复扫描请求的响应内容。

**类型：** [AdvertiseData](#class-advertisedata)

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var advertisingSettings

```cangjie
public var advertisingSettings: AdvertiseSetting
```

**功能：** 表示发送广播的相关参数。

**类型：** [AdvertiseSetting](#class-advertisesetting)

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var duration

```cangjie
public var duration: UInt16
```

**功能：** 表示发送广播持续的时间。单位为10ms，有效范围为1(10ms)到65535(655350ms)，如果未指定此参数或者将其设置为0，则会连续发送广播。

**类型：** UInt16

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### init(AdvertiseSetting, AdvertiseData, AdvertiseData, UInt16)

```cangjie
public init(
    advertisingSettings: AdvertiseSetting,
    advertisingData: AdvertiseData,
    advertisingResponse!: AdvertiseData = AdvertiseData([], [], []),
    duration!: UInt16 = 0
)
```

**功能：** AdvertisingParams 构造器。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|advertisingSettings|[AdvertiseSetting](#class-advertisesetting)|是|-|表示发送广播的相关参数。|
|advertisingData|[AdvertiseData](#class-advertisedata)|是|-|表示广播的数据包内容。|
|advertisingResponse|[AdvertiseData](#class-advertisedata)|否|AdvertiseData([],[],[])|表示回复扫描请求的响应内容。|
|duration|UInt16|否|0| **命名参数。**  表示发送广播持续的时间。单位为10ms，有效范围为1(10ms)到65535(655350ms)，如果未指定此参数或者将其设置为0，则会连续发送广播。|

## class AdvertisingStateChangeInfo

```cangjie
public class AdvertisingStateChangeInfo {
    public var advertisingId: Int32
    public var state: AdvertisingState
}
```

**功能：** 描述广播启动、停止等状态信息。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var advertisingId

```cangjie
public var advertisingId: Int32
```

**功能：** 表示广播ID标识。

**类型：** Int32

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var state

```cangjie
public var state: AdvertisingState
```

**功能：** 表示广播状态。

**类型：** [AdvertisingState](#enum-advertisingstate)

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

## class BLECharacteristic

```cangjie
public class BLECharacteristic {
    public var serviceUuid: String
    public var characteristicUuid: String
    public var characteristicValue: Array<Byte>
    public var descriptors: Array<BLEDescriptor>
    public var properties: GattProperties
    public init(
        serviceUuid: String,
        characteristicUuid: String,
        characteristicValue: Array<Byte>,
        descriptors: Array<BLEDescriptor>,
        properties!: GattProperties = GattProperties(),
        permissions!: GattPermissions = GattPermissions(),
        characteristicValueHandle!: UInt32 = 0
    )
}
```

**功能：** 描述characteristic的接口参数定义。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var characteristicUuid

```cangjie
public var characteristicUuid: String
```

**功能：** 特定特征（characteristic）的UUID，例如：00002a11-0000-1000-8000-00805f9b34fb。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var characteristicValue

```cangjie
public var characteristicValue: Array<Byte>
```

**功能：** 特征对应的二进制值。

**类型：** Array\<Byte>

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var descriptors

```cangjie
public var descriptors: Array<BLEDescriptor>
```

**功能：** 特定特征的描述符列表。

**类型：** Array\<[BLEDescriptor](#class-bledescriptor)>

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var properties

```cangjie
public var properties: GattProperties
```

**功能：** 特定特征的属性描述。

**类型：** [GattProperties](#class-gattproperties)

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var serviceUuid

```cangjie
public var serviceUuid: String
```

**功能：** 特定服务（service）的UUID，例如：00001888-0000-1000-8000-00805f9b34fb。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### init(String, String, Array\<Byte>, Array\<BLEDescriptor>, GattProperties, GattPermissions, UInt32)

```cangjie
public init(
    serviceUuid: String,
    characteristicUuid: String,
    characteristicValue: Array<Byte>,
    descriptors: Array<BLEDescriptor>,
    properties!: GattProperties = GattProperties(),
    permissions!: GattPermissions = GattPermissions(),
    characteristicValueHandle!: UInt32 = 0
)
```

**功能：** BLECharacteristic 构造器。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|serviceUuid|String|是|-|特定服务（service）的UUID，例如：00001888-0000-1000-8000-00805f9b34fb。|
|characteristicUuid|String|是|-|特定特征（characteristic）的UUID，例如：00002a11-0000-1000-8000-00805f9b34fb。|
|characteristicValue|Array\<Byte>|是|-|特征对应的二进制值。|
|descriptors|Array\<[BLEDescriptor](#class-bledescriptor)>|是|-|特定特征的描述符列表。|
|properties|[GattProperties](#class-gattproperties)|否|GattProperties()|**命名参数。**  特定特征的属性描述。|
|permissions|[GattPermissions](#class-gattpermissions)|否|GattPermissions()|**命名参数。** 特征值读写操作需要的权限。预留字段，本版本暂不支持。|
|characteristicValueHandle|UInt32|否|0|**命名参数。** 特征值的唯一标识句柄。当server端BLE蓝牙设备提供了多个相同UUID特征值时，可以通过此句柄区分不同的特征值。预留字段，本版本暂不支持。|

## class BLEConnectionChangeState

```cangjie
public class BLEConnectionChangeState {
    public var deviceId: String
    public var state: ProfileConnectionState
}
```

**功能：** 描述Gatt profile连接状态。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var deviceId

```cangjie
public var deviceId: String
```

**功能：** 表示远端设备地址，例如："XX:XX:XX:XX:XX:XX"。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var state

```cangjie
public var state: ProfileConnectionState
```

**功能：** 表示BLE连接状态的枚举。

**类型：** [ProfileConnectionState](cj-apis-bluetooth-constant.md#enum-profileconnectionstate)

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

## class BLEDescriptor

```cangjie
public class BLEDescriptor {
    public var serviceUuid: String
    public var characteristicUuid: String
    public var descriptorUuid: String
    public var descriptorValue: Array<Byte>
    public init(
        serviceUuid: String,
        characteristicUuid: String,
        descriptorUuid: String,
        descriptorValue: Array<Byte>,
        descriptorHandle!: UInt32 = 0,
        permissions!: GattPermissions = GattPermissions()
    )
}
```

**功能：** 描述descriptor的接口参数定义。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var characteristicUuid

```cangjie
public var characteristicUuid: String
```

**功能：** 特定特征（characteristic）的UUID，例如：00002a11-0000-1000-8000-00805f9b34fb。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var descriptorUuid

```cangjie
public var descriptorUuid: String
```

**功能：** 描述符（descriptor）的UUID，例如：00002902-0000-1000-8000-00805f9b34fb。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var descriptorValue

```cangjie
public var descriptorValue: Array<Byte>
```

**功能：** 描述符对应的二进制值。

**类型：** Array\<Byte>

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var serviceUuid

```cangjie
public var serviceUuid: String
```

**功能：** 特定服务（service）的UUID，例如：00001888-0000-1000-8000-00805f9b34fb。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### init(String, String, String, Array\<Byte>, UInt32, GattPermissions)

```cangjie
public init(
    serviceUuid: String,
    characteristicUuid: String,
    descriptorUuid: String,
    descriptorValue: Array<Byte>,
    descriptorHandle!: UInt32 = 0,
    permissions!: GattPermissions = GattPermissions()
)
```

**功能：** BLEDescriptor 构造器。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|serviceUuid|String|是|-|特定服务（service）的UUID，例如：00001888-0000-1000-8000-00805f9b34fb。|
|characteristicUuid|String|是|-|特定特征（characteristic）的UUID，例如：00002a11-0000-1000-8000-00805f9b34fb。|
|descriptorUuid|String|是|-|描述符（descriptor）的UUID，例如：00002902-0000-1000-8000-00805f9b34fb。|
|descriptorValue|Array\<Byte>|是|-|描述符对应的二进制值。|
|descriptorHandle|UInt32|否|0|**命名参数。**  描述符的唯一标识句柄。当server端BLE蓝牙设备提供了多个相同UUID描述符时，可以通过此句柄区分不同的描述符。预留字段，本版本暂不支持。|
|permissions|[GattPermissions](#class-gattpermissions)|否|GattPermissions()|**命名参数。**  描述符读写操作需要的权限。预留字段，本版本暂不支持。|

## class CharacteristicReadRequest

```cangjie
public class CharacteristicReadRequest {
    public var deviceId: String
    public var transId: Int32
    public var offset: Int32
    public var characteristicUuid: String
    public var serviceUuid: String
}
```

**功能：** 描述server端订阅后收到的特征值读请求事件参数类。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var characteristicUuid

```cangjie
public var characteristicUuid: String
```

**功能：** 特定特征（characteristic）的UUID，例如：00002a11-0000-1000-8000-00805f9b34fb。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var deviceId

```cangjie
public var deviceId: String
```

**功能：** 表示发送特征值读请求的远端设备地址，例如："XX:XX:XX:XX:XX:XX"。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var offset

```cangjie
public var offset: Int32
```

**功能：** 表示读特征值数据的起始位置。例如：k表示从第k个字节开始读，server端回复响应时需填写相同的offset。

**类型：** Int32

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var serviceUuid

```cangjie
public var serviceUuid: String
```

**功能：** 特定服务（service）的UUID，例如：00001888-0000-1000-8000-00805f9b34fb。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var transId

```cangjie
public var transId: Int32
```

**功能：** 表示写请求的传输ID，server端回复响应时需填写相同的传输ID。

**类型：** Int32

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

## class CharacteristicWriteRequest

```cangjie
public class CharacteristicWriteRequest {
    public var deviceId: String
    public var transId: Int32
    public var offset: Int32
    public var isPrepared: Bool
    public var needRsp: Bool
    public var value: Array<Byte>
    public var characteristicUuid: String
    public var serviceUuid: String
}
```

**功能：** 描述server端订阅后收到的特征值写请求事件参数类。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var characteristicUuid

```cangjie
public var characteristicUuid: String
```

**功能：** 特定特征（characteristic）的UUID，例如：00002a11-0000-1000-8000-00805f9b34fb。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var deviceId

```cangjie
public var deviceId: String
```

**功能：** 表示扫描到的设备地址，例如："XX:XX:XX:XX:XX:XX"。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var isPrepared

```cangjie
public var isPrepared: Bool
```

**功能：** 表示写请求是否立即执行。true表示立即执行。

**类型：** Bool

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var needRsp

```cangjie
public var needRsp: Bool
```

**功能：** 表示是否要给client端回复响应。

**类型：** Bool

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var offset

```cangjie
public var offset: Int32
```

**功能：** 表示写描述符数据的起始位置。例如：k表示从第k个字节开始写，server端回复响应时需填写相同的offset。

**类型：** Int32

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var serviceUuid

```cangjie
public var serviceUuid: String
```

**功能：** 特定服务（service）的UUID，例如：00001888-0000-1000-8000-00805f9b34fb。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var transId

```cangjie
public var transId: Int32
```

**功能：** 表示写请求的传输ID，server端回复响应时需填写相同的传输ID。

**类型：** Int32

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var value

```cangjie
public var value: Array<Byte>
```

**功能：** 表示写入的描述符二进制数据。

**类型：** Array\<Byte>

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

## class DescriptorReadRequest

```cangjie
public class DescriptorReadRequest {
    public var deviceId: String
    public var transId: Int32
    public var offset: Int32
    public var descriptorUuid: String
    public var characteristicUuid: String
    public var serviceUuid: String
}
```

**功能：** 描述server端订阅后收到的描述符读请求事件参数类。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var characteristicUuid

```cangjie
public var characteristicUuid: String
```

**功能：** 特定特征（characteristic）的UUID，例如：00002a11-0000-1000-8000-00805f9b34fb。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var descriptorUuid

```cangjie
public var descriptorUuid: String
```

**功能：** 表示描述符（descriptor）的UUID，例如：00002902-0000-1000-8000-00805f9b34fb。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var deviceId

```cangjie
public var deviceId: String
```

**功能：** 表示发送描述符读请求的远端设备地址，例如："XX:XX:XX:XX:XX:XX"。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var offset

```cangjie
public var offset: Int32
```

**功能：** 表示读描述符数据的起始位置。例如：k表示从第k个字节开始读，server端回复响应时需填写相同的offset。

**类型：** Int32

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var serviceUuid

```cangjie
public var serviceUuid: String
```

**功能：** 特定服务（service）的UUID，例如：00001888-0000-1000-8000-00805f9b34fb。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var transId

```cangjie
public var transId: Int32
```

**功能：** 表示读请求的传输ID，server端回复响应时需填写相同的传输ID。

**类型：** Int32

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

## class DescriptorWriteRequest

```cangjie
public class DescriptorWriteRequest {
    public var deviceId: String
    public var transId: Int32
    public var offset: Int32
    public var isPrepared: Bool
    public var needRsp: Bool
    public var value: Array<Byte>
    public var descriptorUuid: String
    public var characteristicUuid: String
    public var serviceUuid: String
}
```

**功能：** 描述server端订阅后收到的描述符写请求事件参数类。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var characteristicUuid

```cangjie
public var characteristicUuid: String
```

**功能：** 特定特征（characteristic）的UUID，例如：00002a11-0000-1000-8000-00805f9b34fb。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var descriptorUuid

```cangjie
public var descriptorUuid: String
```

**功能：** 表示描述符（descriptor）的UUID，例如：00002902-0000-1000-8000-00805f9b34fb。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var deviceId

```cangjie
public var deviceId: String
```

**功能：** 表示发送描述符写请求的远端设备地址，例如："XX:XX:XX:XX:XX:XX"。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var isPrepared

```cangjie
public var isPrepared: Bool
```

**功能：** 表示写请求是否立即执行。

**类型：** Bool

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var needRsp

```cangjie
public var needRsp: Bool
```

**功能：** 表示是否要给client端回复响应。

**类型：** Bool

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var offset

```cangjie
public var offset: Int32
```

**功能：** 表示写描述符数据的起始位置。例如：k表示从第k个字节开始写，server端回复响应时需填写相同的offset。

**类型：** Int32

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var serviceUuid

```cangjie
public var serviceUuid: String
```

**功能：** 特定服务（service）的UUID，例如：00001888-0000-1000-8000-00805f9b34fb。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var transId

```cangjie
public var transId: Int32
```

**功能：** 表示写请求的传输ID，server端回复响应时需填写相同的传输ID。

**类型：** Int32

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var value

```cangjie
public var value: Array<Byte>
```

**功能：** 表示写入的描述符二进制数据。

**类型：** Array\<Byte>

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

## class GattClientDevice

```cangjie
public class GattClientDevice {}
```

**功能：** client端类。使用client端方法之前需要创建该类的实例进行操作，通过[createGattClientDevice(String)](#func-creategattclientdevicestring)方法构造此实例。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### func close()

```cangjie
public func close(): Unit
```

**功能：** 关闭客户端功能，注销client在协议栈的注册，调用该接口后[GattClientDevice](#class-gattclientdevice)实例将不能再使用。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)和[蓝牙服务子系统错误码](./cj-errorcode-bluetooth_manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 801 | Capability not supported. |
  | 2900001 | Service stopped. |
  | 2900003 | Bluetooth disabled. |
  | 2900099 | Operation failed. |

**示例：**

<!-- compile only -->
<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

let gattClient = createGattClientDevice("XX:XX:XX:XX:XX:XX")  // 请替换为您的设备地址
try {
    gattClient.close()
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

### func connect()

```cangjie
public func connect(): Unit
```

**功能：** client端发起连接远端蓝牙低功耗设备。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)和[蓝牙服务子系统错误码](./cj-errorcode-bluetooth_manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 801 | Capability not supported. |
  | 2900001 | Service stopped. |
  | 2900003 | Bluetooth disabled. |
  | 2900099 | Operation failed. |

**示例：**

<!-- compile only -->
<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

let gattClient = createGattClientDevice("XX:XX:XX:XX:XX:XX")  // 请替换为您的设备地址
try {
    gattClient.connect()
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

### func disconnect()

```cangjie
public func disconnect(): Unit
```

**功能：** client端断开与远端蓝牙低功耗设备的连接。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)和[蓝牙服务子系统错误码](./cj-errorcode-bluetooth_manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 801 | Capability not supported. |
  | 2900001 | Service stopped. |
  | 2900003 | Bluetooth disabled. |
  | 2900099 | Operation failed. |

**示例：**

<!-- compile only -->
<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

let gattClient = createGattClientDevice("XX:XX:XX:XX:XX:XX")  // 请替换为您的设备地址
try {
    gattClient.disconnect()
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

### func getDeviceName()

```cangjie
public func getDeviceName(): String
```

**功能：** client获取远端蓝牙低功耗设备名。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**返回值：**

|类型|说明|
|:----|:----|
|String|client获取对端server设备名。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)和[蓝牙服务子系统错误码](./cj-errorcode-bluetooth_manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 401 | Invalid parameter.Possible causes: 1. Mandatory parameters are left unspecified.2. Incorrect parameter types. |
  | 801 | Capability not supported. |
  | 2900001 | Service stopped. |
  | 2900099 | Operation failed. |

**示例：**

<!-- compile only -->
<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

let gattClient = createGattClientDevice("XX:XX:XX:XX:XX:XX")  // 请替换为您的设备地址
try {
    let server = gattClient.getDeviceName()
    Hilog.info(0, "Bluetooth", "device name " + server)
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

### func getRssiValue(AsyncCallback\<Int32>)

```cangjie
public func getRssiValue(callback: AsyncCallback<Int32>): Unit
```

**功能：** client获取远端蓝牙低功耗设备的信号强度（Received Signal Strength Indication, RSSI），调用[connect](#func-connect)接口连接成功后才能使用。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|callback|[AsyncCallback](../arkinterop/cj-api-business_exception.md#type-asynccallback)\<Int32>|是|-|返回信号强度，单位&nbsp;dBm，通过注册回调函数获取。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)和[蓝牙服务子系统错误码](./cj-errorcode-bluetooth_manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 401 | Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.2. Incorrect parameter types. |
  | 801 | Capability not supported. |
  | 2900099 | Operation failed. |

**示例：**

<!-- compile only -->
<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

let gattClient = createGattClientDevice("XX:XX:XX:XX:XX:XX")  // 请替换为您的设备地址
try {
    gattClient.getRssiValue {
        error: ?BusinessException, rssi: ?Int32 =>
        if (let Some(e) <- error) {
            throw e
        }
        Hilog.info(0, "Bluetooth", "the rssi value is " + rssi.getOrThrow().toString())
    }
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

### func getServices(AsyncCallback\<Array\<GattService>>)

```cangjie
public func getServices(callback: AsyncCallback<Array<GattService>>): Unit
```

**功能：** client端获取蓝牙低功耗设备的所有服务，即服务发现。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|callback|[AsyncCallback](../arkinterop/cj-api-business_exception.md#type-asynccallback)\<Array\<[GattService](#class-gattservice)>>|是|-|client进行服务发现。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)和[蓝牙服务子系统错误码](./cj-errorcode-bluetooth_manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 401 | Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.2. Incorrect parameter types. 3. Parameter verification failed. |
  | 801 | Capability not supported. |
  | 2900001 | Service stopped. |
  | 2900099 | Operation failed. |

**示例：**

<!-- compile only -->
<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

let gattClient = createGattClientDevice("XX:XX:XX:XX:XX:XX")  // 请替换为您的设备地址
try {
    let services = gattClient.getServices{err: ?BusinessException, c: ?Array<GattService> =>
            let ss = c.getOrThrow()
            for (service in ss) {
                Hilog.info(0, "Bluetooth", "find serviceUuid : ${service.serviceUuid}")
            }
        }
    Hilog.info(0, "Bluetooth", "getServices success")
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

### func off(BluetoothBleGattClientDeviceCallbackType, ?CallbackObject)

```cangjie
public func off(eventType: BluetoothBleGattClientDeviceCallbackType, callback!: ?CallbackObject = None): Unit
```

**功能：** 取消订阅 client 端蓝牙低功耗设备事件。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|eventType|[BluetoothBleGattClientDeviceCallbackType](#enum-bluetoothblegattclientdevicecallbacktype)|是|-|特征值变化事件。|
|callback|?[CallbackObject](../arkinterop/cj-api-callback_invoke.md#class-callbackobject)|否|None|**命名参数。**  取消订阅 client 端蓝牙低功耗设备事件。不填该参数则取消订阅该type对应的所有回调。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)和[蓝牙服务子系统错误码](./cj-errorcode-bluetooth_manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 401 | Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.2. Incorrect parameter types. 3. Parameter verification failed. |
  | 801 | Capability not supported. |

**示例：**

<!-- compile only -->
<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.callback_invoke.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

let gattClient = createGattClientDevice("XX:XX:XX:XX:XX:XX")  // 请替换为您的设备地址
let device = "XX:XX:XX:XX:XX:XX"
var connectState = ProfileConnectionState.StateDisconnected
class BLEConnectionStateChangeCallback <: Callback1Argument<BLEConnectionChangeState> {
    public func invoke(err: ?BusinessException, stateInfo: BLEConnectionChangeState): Unit {
        Hilog.info(0, "Bluetooth", "onGattServerStateChange: device=" + stateInfo.deviceId + ", state=" + stateInfo.state.toString())
        if (stateInfo.deviceId == device) {
            connectState = stateInfo.state
        }
    }
}

let bleConnectionStateChangeCallback = BLEConnectionStateChangeCallback()
try {
    gattClient.on(BluetoothBleGattClientDeviceCallbackType.BleConnectionStateChange, bleConnectionStateChangeCallback)
    gattClient.off(BluetoothBleGattClientDeviceCallbackType.BleConnectionStateChange, callback: bleConnectionStateChangeCallback)
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

### func on(BluetoothBleGattClientDeviceCallbackType, Callback1Argument\<BLECharacteristic>)

```cangjie
public func on(eventType: BluetoothBleGattClientDeviceCallbackType, callback: Callback1Argument<BLECharacteristic>): Unit
```

**功能：** client端订阅MTU状态变化事件。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|eventType|[BluetoothBleGattClientDeviceCallbackType](#enum-bluetoothblegattclientdevicecallbacktype)|是|-|必须填写ClientBleMtuChange，表示MTU状态变化事件。填写不正确将导致回调无法注册。|
|callback|[Callback1Argument](../arkinterop/cj-api-callback_invoke.md#class-callback1argument)\<[BLECharacteristic](#class-blecharacteristic)>|是|-|返回MTU字节数的值，通过注册回调函数获取。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)和[蓝牙服务子系统错误码](./cj-errorcode-bluetooth_manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 401 | Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.2. Incorrect parameter types. 3. Parameter verification failed. |
  | 801 | Capability not supported. |

**示例：**

<!-- compile only -->
<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.callback_invoke.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

// 此处代码可添加在依赖项定义中
class BLECharacteristicChangeCallback <: Callback1Argument<BLECharacteristic> {
    public func invoke(err: ?BusinessException, characteristic: BLECharacteristic): Unit {
        Hilog.info(0, "Bluetooth", "characteristic ${characteristic.serviceUuid} has change")
    }
}

let gattClient = createGattClientDevice("XX:XX:XX:XX:XX:XX")  // 请替换为您的设备地址
let bleCharacteristicChangeCallback = BLECharacteristicChangeCallback()
try {
    gattClient.on(BluetoothBleGattClientDeviceCallbackType.ClientBleMtuChange, bleCharacteristicChangeCallback)
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

### func on(BluetoothBleGattClientDeviceCallbackType, Callback1Argument\<BLEConnectionChangeState>)

```cangjie
public func on(
    eventType: BluetoothBleGattClientDeviceCallbackType,
    callback: Callback1Argument<BLEConnectionChangeState>
): Unit
```

**功能：** client端订阅MTU状态变化事件。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|eventType|[BluetoothBleGattClientDeviceCallbackType](#enum-bluetoothblegattclientdevicecallbacktype)|是|-|填写BleConnectionStateChange，表示连接状态变化事件。|
|callback|[Callback1Argument](../arkinterop/cj-api-callback_invoke.md#class-callback1argument)\<[BLEConnectionChangeState](#class-bleconnectionchangestate)>|是|-|返回MTU字节数的值，通过注册回调函数获取。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)和[蓝牙服务子系统错误码](./cj-errorcode-bluetooth_manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 401 | Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.2. Incorrect parameter types. 3. Parameter verification failed. |
  | 801 | Capability not supported. |

**示例：**

<!-- compile only -->
<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.callback_invoke.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

// 此处代码可添加在依赖项定义中
let gattClient = createGattClientDevice("XX:XX:XX:XX:XX:XX")  // 请替换为您的设备地址
let device = "XX:XX:XX:XX:XX:XX"
var connectState = ProfileConnectionState.StateDisconnected
class BLEConnectionStateChangeCallback <: Callback1Argument<BLEConnectionChangeState> {
    public func invoke(err: ?BusinessException, stateInfo: BLEConnectionChangeState): Unit {
        Hilog.info(0, "Bluetooth", "onGattServerStateChange: device=" + stateInfo.deviceId + ", state=" + stateInfo.state.toString())
        if (stateInfo.deviceId == device) {
            connectState = stateInfo.state
        }
    }
}

let bleConnectionStateChangeCallback = BLEConnectionStateChangeCallback()
try {
    gattClient.on(BluetoothBleGattClientDeviceCallbackType.BleConnectionStateChange, bleConnectionStateChangeCallback)
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

### func on(BluetoothBleGattClientDeviceCallbackType, Callback1Argument\<Int32>)

```cangjie
public func on(eventType: BluetoothBleGattClientDeviceCallbackType, callback: Callback1Argument<Int32>): Unit
```

**功能：** client端订阅MTU状态变化事件。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|eventType|[BluetoothBleGattClientDeviceCallbackType](#enum-bluetoothblegattclientdevicecallbacktype)|是|-|必须填写ClientBleMtuChange，表示MTU状态变化事件。填写不正确将导致回调无法注册。|
|callback|[Callback1Argument](../arkinterop/cj-api-callback_invoke.md#class-callback1argument)\<Int32>|是|-|返回MTU字节数的值，通过注册回调函数获取。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)和[蓝牙服务子系统错误码](./cj-errorcode-bluetooth_manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 401 | Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.2. Incorrect parameter types. 3. Parameter verification failed. |
  | 801 | Capability not supported. |

**示例：**

<!-- compile only -->
<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.callback_invoke.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

// 此处代码可添加在依赖项定义中
let gattClient = createGattClientDevice("XX:XX:XX:XX:XX:XX")  // 请替换为您的设备地址
class BLEMtuChangeCallback <: Callback1Argument<Int32> {
    public func invoke(err: ?BusinessException, mtu: Int32): Unit {
        Hilog.info(0, "Bluetooth", "mtu change to ${mtu}")
    }
}

let bleMtuChangeCallback = BLEMtuChangeCallback()
try {
    gattClient.on(BluetoothBleGattClientDeviceCallbackType.ClientBleMtuChange, bleMtuChangeCallback)
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

### func readCharacteristicValue(BLECharacteristic, AsyncCallback\<BLECharacteristic>)

```cangjie
public func readCharacteristicValue(
    characteristic: BLECharacteristic,
    callback: AsyncCallback<BLECharacteristic>
): Unit
```

**功能：** client端读取蓝牙低功耗设备特定服务的特征值。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|characteristic|[BLECharacteristic](#class-blecharacteristic)|是|-|待读取的特征值。|
|callback|[AsyncCallback](../arkinterop/cj-api-business_exception.md#type-asynccallback)\<[BLECharacteristic](#class-blecharacteristic)>|是|-|client读取特征值，通过注册回调函数获取。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)和[蓝牙服务子系统错误码](./cj-errorcode-bluetooth_manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 401 | Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.2. Incorrect parameter types. 3. Parameter verification failed. |
  | 801 | Capability not supported. |
  | 2900001 | Service stopped. |
  | 2901000 | Read forbidden. |
  | 2900099 | Operation failed. |

**示例：**

<!-- compile only -->
<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

let gattClient = createGattClientDevice("XX:XX:XX:XX:XX:XX")  // 请替换为您的设备地址

// 创建descriptors
let descBuffer: Array<Byte> = [31, 32]
let descriptor = BLEDescriptor(
    "00001810-0000-1000-8000-00805F9B34FB",
    "00001820-0000-1000-8000-00805F9B34FB",
    "00002902-0000-1000-8000-00805F9B34FB",
    Array<Byte>(2, repeat: 0)
)
// 创建characteristics
let descriptors: Array<BLEDescriptor> = [descriptor]
let charBuffer: Array<Byte> = [21, 22]
let properties = GattProperties()

let characteristic: BLECharacteristic = BLECharacteristic(
    "00001810-0000-1000-8000-00805F9B34FB",
    "00001820-0000-1000-8000-00805F9B34FB",
    charBuffer,
    descriptors,
    properties: properties
)

try {
    gattClient.readCharacteristicValue(characteristic) {
        error: ?BusinessException, outData: ?BLECharacteristic =>
        if (let Some(e) <- error) {
            throw e
        }
        if (let Some(c) <- outData) {
            Hilog.info(0, "Bluetooth", "read characteristic value uuid is ${c.characteristicUuid}")
            let message = StringBuilder("logCharacteristic value: ")
            for (i in 0..c.characteristicValue.size) {
                message.append(c.characteristicValue[i])
            }
            Hilog.info(0, "Bluetooth", message.toString())
        }
    }
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

### func readDescriptorValue(BLEDescriptor, AsyncCallback\<BLEDescriptor>)

```cangjie
public func readDescriptorValue(descriptor: BLEDescriptor, callback: AsyncCallback<BLEDescriptor>): Unit
```

**功能：** client端读取蓝牙低功耗设备特定的特征包含的描述符。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|descriptor|[BLEDescriptor](#class-bledescriptor)|是|-|待读取的描述符。|
|callback|[AsyncCallback](../arkinterop/cj-api-business_exception.md#type-asynccallback)\<[BLEDescriptor](#class-bledescriptor)>|是|-|client读取描述符，通过注册回调函数获取。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)和[蓝牙服务子系统错误码](./cj-errorcode-bluetooth_manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 401 | Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.2. Incorrect parameter types. 3. Parameter verification failed. |
  | 801 | Capability not supported. |
  | 2900001 | Service stopped. |
  | 2900011 | The operation is busy. The last operation is not complete. |
  | 2900099 | Operation failed. |
  | 2901000 | Read forbidden. |
  | 2901003 | The connection is not established. |
  | 2901004 | The connection is congested. |
  | 2901005 | The connection is not encrypted. |
  | 2901006 | The connection is not authenticated. |
  | 2901007 | The connection is not authorized. |

**示例：**

<!-- compile only -->
<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

let gattClient = createGattClientDevice("XX:XX:XX:XX:XX:XX")  // 请替换为您的设备地址

let descBuffer: Array<Byte> = [31, 32]
let descriptor = BLEDescriptor(
    "00001810-0000-1000-8000-00805F9B34FB",
    "00001820-0000-1000-8000-00805F9B34FB",
    "00002903-0000-1000-8000-00805F9B34FB",
    Array<Byte>(2, repeat: 0)
)

try {
    gattClient.readDescriptorValue(descriptor) {
        error: ?BusinessException, outDescriptor: ?BLEDescriptor =>
        if (let Some(e) <- error) {
            throw e
        }
        if (let Some(d) <- outDescriptor) {
            Hilog.info(0, "Bluetooth", "read descriptor value uuid is ${d.descriptorUuid}")
            let message = StringBuilder("logDescriptor value: ")
            for (i in 0..d.descriptorValue.size) {
                message.append(d.descriptorValue[i])
            }
            Hilog.info(0, "Bluetooth", message.toString())
        }
    }
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

### func setBLEMtuSize(Int32)

```cangjie
public func setBLEMtuSize(mtu: Int32): Unit
```

**功能：** client协商远端蓝牙低功耗设备的最大传输单元（Maximum Transmission Unit, MTU），调用[connect](#func-connect)接口连接成功后才能使用。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|mtu|Int32|是|-|设置范围为22~512字节。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)和[蓝牙服务子系统错误码](./cj-errorcode-bluetooth_manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 401 | Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.2. Incorrect parameter types. 3. Parameter verification failed. |
  | 801 | Capability not supported. |
  | 2900001 | Service stopped. |
  | 2900099 | Operation failed. |

**示例：**

<!-- compile only -->
<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

let gattClient = createGattClientDevice("XX:XX:XX:XX:XX:XX")  // 请替换为您的设备地址
try {
    gattClient.setBLEMtuSize(100)
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

### func setCharacteristicChangeIndication(BLECharacteristic, Bool, AsyncCallback\<Unit>)

```cangjie
public func setCharacteristicChangeIndication(characteristic: BLECharacteristic, enable: Bool, callback: AsyncCallback<Unit>): Unit
```

**功能：** 向服务端发送设置通知此特征值请求，需要对端设备的回复。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|characteristic|[BLECharacteristic](#class-blecharacteristic)|是|-|蓝牙设备特征对应的二进制值及其它参数。|
|enable|Bool|是|-|蓝牙设备特征的写入类型。|
|callback|[AsyncCallback](../arkinterop/cj-api-business_exception.md#type-asynccallback)\<Unit>|是|-|回调函数。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)和[蓝牙服务子系统错误码](./cj-errorcode-bluetooth_manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 401 | Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.2. Incorrect parameter types. 3. Parameter verification failed. |
  | 801 | Capability not supported. |
  | 2900001 | Service stopped. |
  | 2900099 | Operation failed. |

**示例：**

<!-- compile only -->
<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

let gattClient = createGattClientDevice("XX:XX:XX:XX:XX:XX")  // 请替换为您的设备地址

// 创建descriptors
let descBuffer: Array<Byte> = [31, 32]
let descriptor = BLEDescriptor(
    "00001810-0000-1000-8000-00805F9B34FB",
    "00001820-0000-1000-8000-00805F9B34FB",
    "00002902-0000-1000-8000-00805F9B34FB",
    Array<Byte>(2, repeat: 0)
)
// 创建characteristics
let descriptors: Array<BLEDescriptor> = [descriptor]
let charBuffer: Array<Byte> = [21, 22]
let properties = GattProperties()

let characteristic: BLECharacteristic = BLECharacteristic(
    "00001810-0000-1000-8000-00805F9B34FB",
    "00001820-0000-1000-8000-00805F9B34FB",
    charBuffer,
    descriptors,
    properties: properties
)

try {
    gattClient.setCharacteristicChangeIndication(characteristic, false)  {
        error: ?BusinessException, c: ?Unit => if (let Some(e) <- error) {
            throw e
        }
    }
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

### func setCharacteristicChangeNotification(BLECharacteristic, Bool, AsyncCallback\<Unit>)

```cangjie
public func setCharacteristicChangeNotification(characteristic: BLECharacteristic, enable: Bool, callback: AsyncCallback<Unit>): Unit
```

**功能：** 向服务端发送设置通知此特征值请求。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|characteristic|[BLECharacteristic](#class-blecharacteristic)|是|-|蓝牙低功耗特征。|
|enable|Bool|是|-|启用接收notify设置为true，否则设置为false。|
|callback|[AsyncCallback](../arkinterop/cj-api-business_exception.md#type-asynccallback)\<Unit>|是|-|回调函数。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)和[蓝牙服务子系统错误码](./cj-errorcode-bluetooth_manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 401 | Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.2. Incorrect parameter types. 3. Parameter verification failed. |
  | 801 | Capability not supported. |
  | 2900001 | Service stopped. |
  | 2900099 | Operation failed. |

**示例：**

<!-- compile only -->
<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

let gattClient = createGattClientDevice("XX:XX:XX:XX:XX:XX")  // 请替换为您的设备地址

// 创建descriptors
let descBuffer: Array<Byte> = [31, 32]
let descriptor = BLEDescriptor(
    "00001810-0000-1000-8000-00805F9B34FB",
    "00001820-0000-1000-8000-00805F9B34FB",
    "00002902-0000-1000-8000-00805F9B34FB",
    Array<Byte>(2, repeat: 0)
)
// 创建characteristics
let descriptors: Array<BLEDescriptor> = [descriptor]
let charBuffer: Array<Byte> = [21, 22]
let properties = GattProperties()

let characteristic: BLECharacteristic = BLECharacteristic(
    "00001810-0000-1000-8000-00805F9B34FB",
    "00001820-0000-1000-8000-00805F9B34FB",
    charBuffer,
    descriptors,
    properties: properties
)

try {
    gattClient.setCharacteristicChangeNotification(characteristic, false) {
        error: ?BusinessException, c: ?Unit => if (let Some(e) <- error) {
            throw e
        }
    }
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

### func writeCharacteristicValue(BLECharacteristic, GattWriteType, AsyncCallback\<Unit>)

```cangjie
public func writeCharacteristicValue(characteristic: BLECharacteristic, writeType: GattWriteType,
    callback: AsyncCallback<Unit>): Unit
```

**功能：** client端向低功耗蓝牙设备写入特定的特征值。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|characteristic|[BLECharacteristic](#class-blecharacteristic)|是|-|蓝牙设备特征对应的二进制值及其它参数。|
|writeType|[GattWriteType](#enum-gattwritetype)|是|-|蓝牙设备特征的写入类型。|
|callback|[AsyncCallback](../arkinterop/cj-api-business_exception.md#type-asynccallback)\<Unit>|是|-|回调函数。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)和[蓝牙服务子系统错误码](./cj-errorcode-bluetooth_manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 401 | Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.2. Incorrect parameter types. 3. Parameter verification failed. |
  | 801 | Capability not supported. |
  | 2900001 | Service stopped. |
  | 2901001 | Write forbidden. |
  | 2900099 | Operation failed. |

**示例：**

<!-- compile only -->
<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

let gattClient = createGattClientDevice("XX:XX:XX:XX:XX:XX")  // 请替换为您的设备地址

// 创建descriptors
let descBuffer: Array<Byte> = [31, 32]
let descriptor = BLEDescriptor(
    "00001810-0000-1000-8000-00805F9B34FB",
    "00001820-0000-1000-8000-00805F9B34FB",
    "00002902-0000-1000-8000-00805F9B34FB",
    Array<Byte>(2, repeat: 0)
)

// 创建characteristics
let descriptors: Array<BLEDescriptor> = [descriptor]
let charBuffer: Array<Byte> = [21, 22]
let properties = GattProperties()

let characteristic: BLECharacteristic = BLECharacteristic(
    "00001810-0000-1000-8000-00805F9B34FB",
    "00001820-0000-1000-8000-00805F9B34FB",
    charBuffer,
    descriptors,
    properties: properties
)

try {
    gattClient.writeCharacteristicValue(characteristic, GattWriteType.Write) {
        error: ?BusinessException, c: ?Unit => if (let Some(e) <- error) {
            throw e
        }
    }
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

### func writeDescriptorValue(BLEDescriptor, AsyncCallback\<Unit>)

```cangjie
public func writeDescriptorValue(descriptor: BLEDescriptor, callback: AsyncCallback<Unit>): Unit
```

**功能：** client端向低功耗蓝牙设备特定的描述符写入二进制数据。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|descriptor|[BLEDescriptor](#class-bledescriptor)|是|-|蓝牙设备描述符的二进制值及其它参数。|
|callback|[AsyncCallback](../arkinterop/cj-api-business_exception.md#type-asynccallback)\<Unit>|是|-|回调函数。|

**异常：**
**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)和[蓝牙服务子系统错误码](./cj-errorcode-bluetooth_manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 401 | Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.2. Incorrect parameter types. 3. Parameter verification failed. |
  | 801 | Capability not supported. |
  | 2900001 | Service stopped. |
  | 2901001 | Write forbidden. |
  | 2900099 | Operation failed. |

**示例：**

<!-- compile only -->
<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

let gattClient = createGattClientDevice("XX:XX:XX:XX:XX:XX")  // 请替换为您的设备地址

let descBuffer: Array<Byte> = [31, 32]
let descriptor = BLEDescriptor(
    "00001810-0000-1000-8000-00805F9B34FB",
    "00001820-0000-1000-8000-00805F9B34FB",
    "00002903-0000-1000-8000-00805F9B34FB",
    Array<Byte>(2, repeat: 0)
)
let descriptors: BLEDescriptor = descriptor
let charBuffer: Array<Byte> = [1, 2]
let properties = GattProperties()

try {
    gattClient.writeDescriptorValue(descriptors) {
        error: ?BusinessException, c: ?Unit => if (let Some(e) <- error) {
            throw e
        }
    }
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

## class GattPermissions

```cangjie
public class GattPermissions <: Equatable<GattPermissions> {
    public var read: Bool
    public var readEncrypted: Bool
    public var readEncryptedMitm: Bool
    public var write: Bool
    public var writeEncrypted: Bool
    public var writeEncryptedMitm: Bool
    public var writeSigned: Bool
    public var writeSignedMitm: Bool
    public init (
        read!: Bool = true,
        readEncrypted!: Bool = false,
        readEncryptedMitm!: Bool = false,
        write!: Bool = true,
        writeEncrypted!: Bool = false,
        writeEncryptedMitm!: Bool = false,
        writeSigned!: Bool = false,
        writeSignedMitm!: Bool = false
    )
}
```

**功能：** 描述读写GATT特征值或描述符需具备的权限。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**父类型：**

- Equatable\<GattPermissions>

### var read

```cangjie
public var read: Bool
```

**功能：** 表示是否允许读取该特征值或描述符内容。

**类型：** Bool

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var readEncrypted

```cangjie
public var readEncrypted: Bool
```

**功能：** 表示读取该特征值或描述符内容是否需要加密。

**类型：** Bool

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var readEncryptedMitm

```cangjie
public var readEncryptedMitm: Bool
```

**功能：** 表示读取该特征值或描述符内容是否需要防中间人攻击的加密。

**类型：** Bool

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var write

```cangjie
public var write: Bool
```

**功能：** 表示是否允许写入该特征值或描述符内容。

**类型：** Bool

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var writeEncrypted

```cangjie
public var writeEncrypted: Bool
```

**功能：** 表示写入该特征值或描述符内容是否需要加密。

**类型：** Bool

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var writeEncryptedMitm

```cangjie
public var writeEncryptedMitm: Bool
```

**功能：** 表示写入该特征值或描述符内容是否需要防中间人攻击的加密。

**类型：** Bool

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var writeSigned

```cangjie
public var writeSigned: Bool
```

**功能：** 表示写入该特征值或描述符内容是否需要经过签名处理。

**类型：** Bool

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var writeSignedMitm

```cangjie
public var writeSignedMitm: Bool
```

**功能：** 表示写入该特征值或描述符内容是否需要经过防中间人攻击方式的签名处理。

**类型：** Bool

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### init(Bool, Bool, Bool, Bool, Bool, Bool, Bool, Bool)

```cangjie
public init (
    read!: Bool = true,
    readEncrypted!: Bool = false,
    readEncryptedMitm!: Bool = false,
    write!: Bool = true,
    writeEncrypted!: Bool = false,
    writeEncryptedMitm!: Bool = false,
    writeSigned!: Bool = false,
    writeSignedMitm!: Bool = false
)
```

**功能：** GattPermissions 构造器

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|read|Bool|否|true|是否允许读取该特征值或描述符内容。<br>true表示允许，false表示不允许。默认值为true。|
|readEncrypted|Bool|否|false|读取该特征值或描述符内容是否需要加密。<br>true表示需要加密后，方可读取内容，false表示不需要普通方式加密。默认值为false。|
|readEncryptedMitm|Bool|否|false|读取该特征值或描述符内容是否需要防中间人攻击的加密。<br>防中间人攻击表示操作需要经过认证，防止数据被第三方篡改。true表示需要防中间人攻击的加密后才能读取内容，false表示不需要防中间人攻击的加密。默认值为false。|
|write|Bool|否|true|是否允许写入该特征值或描述符内容。<br>true表示允许，false表示不允许。默认值为true。|
|writeEncrypted|Bool|否|false|写入该特征值或描述符内容是否需要加密。<br>true表示需要加密后，方可写入内容，false表示不需要普通方式加密。默认值为false。|
|writeEncryptedMitm|Bool|否|false|写入该特征值或描述符内容是否需要防中间人攻击的加密。<br>true表示需要防中间人攻击的加密后才能写入内容，false表示不需要防中间人攻击的加密。默认值为false。|
|writeSigned|Bool|否|false|写入该特征值或描述符内容是否需要经过签名处理。<br>true表示内容需要签名处理后方可写入，false表示不需要签名处理。默认值为false。|
|writeSignedMitm|Bool|否|false|写入该特征值或描述符内容是否需要经过防中间人攻击方式的签名处理。<br>true表示需要防中间人攻击方式的签名处理后方可写入，false表示不需要以防中间人攻击方式签名处理。默认值为false。|

### func !=(GattPermissions)

```cangjie
public operator func !=(other: GattPermissions): Bool
```

**功能：** 对 GattPermissions 进行判不等。

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|other|[GattPermissions](#class-gattpermissions)|是|-|描述符读写操作需要的权限。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|如果描述符读写操作需要的权限不同，返回true，否则返回false。|

### func ==(GattPermissions)

```cangjie
public operator func ==(other: GattPermissions): Bool
```

**功能：** 对 GattPermissions 进行判等。
**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|other|[GattPermissions](#class-gattpermissions)|是|-|描述符读写操作需要的权限。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|如果描述符读写操作需要的权限相同，返回true，否则返回false。|

## class GattProperties

```cangjie
public class GattProperties {
    public var write: Bool
    public var writeNoResponse: Bool
    public var read: Bool
    public var notify: Bool
    public var indicate: Bool
    public init(
        write!: Bool = true,
        writeNoResponse!: Bool = true,
        read!: Bool = true,
        notify!: Bool = false,
        indicate!: Bool = false,
        broadcast!: Bool = false,
        authenticatedSignedWrite!: Bool = false,
        extendedProperties!: Bool = false
    )
}
```

**功能：** 描述gatt characteristic的属性。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var indicate

```cangjie
public var indicate: Bool
```

**功能：** **命名参数。**  true表示该特征可通知对端设备，需要对端设备的回复。

**类型：** Bool

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var notify

```cangjie
public var notify: Bool
```

**功能：** **命名参数。**  true表示该特征可通知对端设备。

**类型：** Bool

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var read

```cangjie
public var read: Bool
```

**功能：** **命名参数。**  true表示该特征支持读操作。

**类型：** Bool

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var write

```cangjie
public var write: Bool
```

**功能：** **命名参数。**  表示该特征支持写操作，true表示需要对端设备的回复。

**类型：** Bool

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var writeNoResponse

```cangjie
public var writeNoResponse: Bool
```

**功能：** **命名参数。**  true表示该特征支持写操作，无需对端设备回复。

**类型：** Bool

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### init(Bool, Bool, Bool, Bool, Bool, Bool, Bool, Bool)

```cangjie
public init(
    write!: Bool = true,
    writeNoResponse!: Bool = true,
    read!: Bool = true,
    notify!: Bool = false,
    indicate!: Bool = false,
    broadcast!: Bool = false,
    authenticatedSignedWrite!: Bool = false,
    extendedProperties!: Bool = false
)
```

**功能：** GattProperties构造器。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|write|Bool|否|true| **命名参数。**  表示该特征支持写操作，true表示需要对端设备的回复。|
|writeNoResponse|Bool|否|true| **命名参数。**  true表示该特征支持写操作，无需对端设备回复。|
|read|Bool|否|true| **命名参数。**  true表示该特征支持读操作。|
|notify|Bool|否|false| **命名参数。**  true表示该特征可通知对端设备。|
|indicate|Bool|否|false| **命名参数。**  true表示该特征可通知对端设备，需要对端设备的回复。|
|broadcast|Bool|否|false|**命名参数。**  该特征值是否支持作为广播内容由server端发送。<br>true表示支持，server端可将特征值内容以ServiceData类型在广播报文中携带，false表示不支持。默认值为false。预留字段，本版本暂不支持。|
|authenticatedSignedWrite|Bool|否|false|**命名参数。**  该特征值是否支持签名写入操作，通过对写入内容进行签名校验替代加密流程。<br>true表示支持，且该特征值权限GattPermissions中的writeSigned或writeSignedMitm需设置为true，否则该属性不生效，false表示不支持。默认值为false。预留字段，本版本暂不支持。|
|extendedProperties|Bool|否|false|**命名参数。**  该特征值是否存在扩展属性。<br>true表示存在扩展属性，false表示不存在。默认值为false。预留字段，本版本暂不支持。|

## class GattServer

```cangjie
public class GattServer {}
```

**功能：** server端类。使用server端方法之前需要创建该类的实例进行操作，通过[createGattServer()](#func-creategattserver)方法构造此实例。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### func addService(GattService)

```cangjie
public func addService(service: GattService): Unit
```

**功能：** server端添加服务。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|service|[GattService](#class-gattservice)|是|-|服务端的service数据。BLE广播的相关参数。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)和[蓝牙服务子系统错误码](./cj-errorcode-bluetooth_manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 401 | Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.2. Incorrect parameter types. 3. Parameter verification failed. |
  | 801 | Capability not supported. |
  | 2900001 | Service stopped. |
  | 2900003 | Bluetooth disabled. |
  | 2900099 | Operation failed. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

// 创建descriptors
let descBuffer: Array<Byte> = [31, 32]
let descriptors0 = BLEDescriptor(
    "00001810-0000-1000-8000-00805F9B34FB",
    "00001820-0000-1000-8000-00805F9B34FB",
    "00002902-0000-1000-8000-00805F9B34FB",
    Array<Byte>(2, repeat: 0)
)
let descriptors1 = BLEDescriptor(
    "00001810-0000-1000-8000-00805F9B34FB",
    "00001820-0000-1000-8000-00805F9B34FB",
    "00002903-0000-1000-8000-00805F9B34FB",
    descBuffer
)

// 创建characteristics
let descriptors: Array<BLEDescriptor> = [descriptors0, descriptors1]
let charBuffer: Array<Byte> = [21, 22]
let properties = GattProperties()

let characteristic: BLECharacteristic = BLECharacteristic(
    "00001810-0000-1000-8000-00805F9B34FB",
    "00001820-0000-1000-8000-00805F9B34FB",
    charBuffer,
    descriptors,
    properties: properties
)

let characteristics: Array<BLECharacteristic> = [characteristic]
let gattService: GattService = GattService(
    "00001810-0000-1000-8000-00805F9B34FB",
    true,
    characteristics,
    includeServices: Array<GattService>()
)

try {
    //构造gattServer
    let gattServer = createGattServer()
    gattServer.addService(gattService)
} catch (e: BusinessException) {
    Hilog.error(0, "AppLogCj", "add Service error because ${e}")
}
```

### func close()

```cangjie
public func close(): Unit
```

**功能：** 关闭服务端功能，去掉server在协议栈的注册。调用该接口后[GattServer](#class-gattserver)实例将不能再使用。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)和[蓝牙服务子系统错误码](./cj-errorcode-bluetooth_manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 801 | Capability not supported. |
  | 2900001 | Service stopped. |
  | 2900003 | Bluetooth disabled. |
  | 2900099 | Operation failed. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

let gattServer = createGattServer()
try {
    gattServer.close()
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

### func notifyCharacteristicChanged(String, NotifyCharacteristic)

```cangjie
public func notifyCharacteristicChanged(deviceId: String, notifyCharacteristic: NotifyCharacteristic): Unit
```

**功能：** server端特征值发生变化时，主动通知已连接的client设备。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|deviceId|String|是|-|接收通知的client端设备地址，例如“XX:XX:XX:XX:XX:XX”。|
|notifyCharacteristic|[NotifyCharacteristic](#class-notifycharacteristic)|是|-|通知的特征值数据。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)和[蓝牙服务子系统错误码](./cj-errorcode-bluetooth_manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 401 | Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.2. Incorrect parameter types. 3. Parameter verification failed. |
  | 801 | Capability not supported. |
  | 2900001 | Service stopped. |
  | 2900003 | Bluetooth disabled. |
  | 2900099 | Operation failed. |

**示例：**

<!-- compile only -->
<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

let gattServer = createGattServer()
try {
    let charBuffer: Array<Byte> = [21, 22]
    let notifyCharacteristic = NotifyCharacteristic(
        "00001810-0000-1000-8000-00805F9B34FB",
        "00001820-0000-1000-8000-00805F9B34FB",
        charBuffer,
        false
    )
    gattServer.notifyCharacteristicChanged("XX:XX:XX:XX:XX:XX", notifyCharacteristic)  // 请替换为您的 deviceId
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

### func off(BluetoothBleGattServerCallbackType, ?CallbackObject)

```cangjie
public func off(eventType: BluetoothBleGattServerCallbackType, callback!: ?CallbackObject = None): Unit
```

**功能：** server端取消订阅事件。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|eventType|[BluetoothBleGattServerCallbackType](#enum-bluetoothblegattservercallbacktype)|是|-|回调事件。|
|callback|?[CallbackObject](../arkinterop/cj-api-callback_invoke.md#class-callbackobject)|否|None|**命名参数。**  表示取消订阅BLE事件。不填该参数则取消订阅该type对应的所有回调。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 401 | Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.2. Incorrect parameter types. 3. Parameter verification failed. |
  | 801 | Capability not supported. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.callback_invoke.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

// 此处代码可添加在依赖项定义中
class StateChangeCallback <: Callback1Argument<BLEConnectionChangeState> {
    public func invoke(err: ?BusinessException, state: BLEConnectionChangeState): Unit {
        Hilog.info(0, "Bluetooth", "onGattServerStateChange: device=" + state.deviceId + ", state=" + state.state.toString())
    }
}

let stateChangeCallback = StateChangeCallback()
let gattServer = createGattServer()
try {
    gattServer.on(BluetoothBleGattServerCallbackType.ConnectionStateChange, stateChangeCallback)
    gattServer.off(BluetoothBleGattServerCallbackType.ConnectionStateChange, callback: stateChangeCallback)
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

### func on(BluetoothBleGattServerCallbackType, Callback1Argument\<CharacteristicReadRequest>)

```cangjie
public func on(eventType: BluetoothBleGattServerCallbackType, callback: Callback1Argument<CharacteristicReadRequest>): Unit
```

**功能：** server端订阅MTU状态变化事件。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|eventType|[BluetoothBleGattServerCallbackType](#enum-bluetoothblegattservercallbacktype)|是|-|填CharacteristicRead，表示特征值读请求事件。|
|callback|[Callback1Argument](../arkinterop/cj-api-callback_invoke.md#class-callback1argument)\<[CharacteristicReadRequest](#class-characteristicreadrequest)>|是|-|返回MTU字节数的值，通过注册回调函数获取。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 401 | Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.2. Incorrect parameter types. 3. Parameter verification failed. |
  | 801 | Capability not supported. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.callback_invoke.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

// 此处代码可添加在依赖项定义中
let gattServer = createGattServer()

class CharacteristicReadCallback <: Callback1Argument<CharacteristicReadRequest> {
    public func invoke(err: ?BusinessException, charReq: CharacteristicReadRequest): Unit {
        let deviceId: String = charReq.deviceId
        let transId: Int32 = charReq.transId
        let offset: Int32 = charReq.offset
        Hilog.info(0, "Bluetooth", "receive characteristicRead")
        let rspBuffer: Array<Byte> = [21, 22]
        let serverResponse: ServerResponse = ServerResponse(
            deviceId,
            transId,
            0,
            offset,
            rspBuffer
        )
        try {
            gattServer.sendResponse(serverResponse)
        } catch (e: BusinessException) {
            Hilog.info(0, "Bluetooth", "gattServer send response fail because ${e}")
        }
    }
}

let characteristicReadCallback = CharacteristicReadCallback()
try {
    gattServer.on(BluetoothBleGattServerCallbackType.CharacteristicRead, characteristicReadCallback)
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

### func on(BluetoothBleGattServerCallbackType, Callback1Argument\<CharacteristicWriteRequest>)

```cangjie
public func on(eventType: BluetoothBleGattServerCallbackType, callback: Callback1Argument<CharacteristicWriteRequest>): Unit
```

**功能：** server端订阅MTU状态变化事件。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|eventType|[BluetoothBleGattServerCallbackType](#enum-bluetoothblegattservercallbacktype)|是|-|填写CharacteristicWrite，表示特征值写请求事件。|
|callback|[Callback1Argument](../arkinterop/cj-api-callback_invoke.md#class-callback1argument)\<[CharacteristicWriteRequest](#class-characteristicwriterequest)>|是|-|返回MTU字节数的值，通过注册回调函数获取。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 401 | Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.2. Incorrect parameter types. 3. Parameter verification failed. |
  | 801 | Capability not supported. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.callback_invoke.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

// 此处代码可添加在依赖项定义中
let gattServer = createGattServer()

class CharacteristicWriteCallback <: Callback1Argument<CharacteristicWriteRequest> {
    public func invoke(err: ?BusinessException, charReq: CharacteristicWriteRequest): Unit {
        let deviceId: String = charReq.deviceId
        let transId: Int32 = charReq.transId
        let offset: Int32 = charReq.offset
        Hilog.info(0, "Bluetooth", "receive characteristicWrite")

        Hilog.info(0, "Bluetooth", "receive characteristicWrite: needRsp=" + charReq
            .needRsp
            .toString())
        if (!charReq.needRsp) {
            return
        }
        let rspBuffer = Array<Byte>()
        let serverResponse: ServerResponse = ServerResponse(
            deviceId,
            transId,
            0,
            offset,
            rspBuffer
        )
        try {
            gattServer.sendResponse(serverResponse)
        } catch (e: BusinessException) {
            Hilog.info(0, "Bluetooth", "gattServer send response fail because ${e}")
        }
    }
}

let characteristicWriteCallback = CharacteristicWriteCallback()
try {
    gattServer.on(BluetoothBleGattServerCallbackType.CharacteristicWrite, characteristicWriteCallback)
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

### func on(BluetoothBleGattServerCallbackType, Callback1Argument\<DescriptorReadRequest>)

```cangjie
public func on(eventType: BluetoothBleGattServerCallbackType, callback: Callback1Argument<DescriptorReadRequest>): Unit
```

**功能：** server端订阅MTU状态变化事件。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|eventType|[BluetoothBleGattServerCallbackType](#enum-bluetoothblegattservercallbacktype)|是|-|填写DescriptorRead，表示描述符读请求事件。|
|callback|[Callback1Argument](../arkinterop/cj-api-callback_invoke.md#class-callback1argument)\<[DescriptorReadRequest](#class-descriptorreadrequest)>|是|-|返回MTU字节数的值，通过注册回调函数获取。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 401 | Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.2. Incorrect parameter types. 3. Parameter verification failed. |
  | 801 | Capability not supported. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.callback_invoke.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

// 此处代码可添加在依赖项定义中
let gattServer = createGattServer()

class DescriptorReadCallback <: Callback1Argument<DescriptorReadRequest> {
    public func invoke(err: ?BusinessException, desReq: DescriptorReadRequest): Unit {
        let deviceId: String = desReq.deviceId
        let transId: Int32 = desReq.transId
        let offset: Int32 = desReq.offset
        Hilog.info(0, "Bluetooth", "receive descriptorRead")
        let rspBuffer: Array<Byte> = [31, 32]
        let serverResponse: ServerResponse = ServerResponse(
            deviceId,
            transId,
            0,
            offset,
            rspBuffer
        )
        try {
            gattServer.sendResponse(serverResponse)
        } catch (e: BusinessException) {
            Hilog.info(0, "Bluetooth", "gattServer send response fail because ${e}")
        }
    }
}

let descriptorReadCallback = DescriptorReadCallback()
try {
    gattServer.on(BluetoothBleGattServerCallbackType.DescriptorRead, descriptorReadCallback)
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

### func on(BluetoothBleGattServerCallbackType, Callback1Argument\<DescriptorWriteRequest>)

```cangjie
public func on(eventType: BluetoothBleGattServerCallbackType, callback: Callback1Argument<DescriptorWriteRequest>): Unit
```

**功能：** server端订阅MTU状态变化事件。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|eventType|[BluetoothBleGattServerCallbackType](#enum-bluetoothblegattservercallbacktype)|是|-|填写DescriptorWrite，表示描述符写请求事件。|
|callback|[Callback1Argument](../arkinterop/cj-api-callback_invoke.md#class-callback1argument)\<[DescriptorWriteRequest](#class-descriptorwriterequest)>|是|-|返回MTU字节数的值，通过注册回调函数获取。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 401 | Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.2. Incorrect parameter types. 3. Parameter verification failed. |
  | 801 | Capability not supported. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.callback_invoke.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

// 此处代码可添加在依赖项定义中
let gattServer = createGattServer()

class DescriptorWriteCallback <: Callback1Argument<DescriptorWriteRequest> {
    public func invoke(err: ?BusinessException, desReq: DescriptorWriteRequest): Unit {
        let deviceId: String = desReq.deviceId
        let transId: Int32 = desReq.transId
        let offset: Int32 = desReq.offset
        Hilog.info(0, "Bluetooth", "receive descriptorWrite")
        Hilog.info(0, "Bluetooth", "receive descriptorWrite: needRsp=" + desReq.needRsp.toString())
        if (!desReq.needRsp) {
            return
        }
        let rspBuffer = Array<Byte>()
        let serverResponse: ServerResponse = ServerResponse(
            deviceId,
            transId,
            0,
            offset,
            rspBuffer
        )
        try {
            gattServer.sendResponse(serverResponse)
        } catch (e: BusinessException) {
            Hilog.info(0, "Bluetooth", "gattServer send response fail because ${e}")
        }
    }
}

let descriptorWriteCallback = DescriptorWriteCallback()
try {
    gattServer.on(BluetoothBleGattServerCallbackType.DescriptorWrite, descriptorWriteCallback)
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

### func on(BluetoothBleGattServerCallbackType, Callback1Argument\<BLEConnectionChangeState>)

```cangjie
public func on(eventType: BluetoothBleGattServerCallbackType, callback: Callback1Argument<BLEConnectionChangeState>): Unit
```

**功能：** server端订阅MTU状态变化事件。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|eventType|[BluetoothBleGattServerCallbackType](#enum-bluetoothblegattservercallbacktype)|是|-|填ConnectionStateChange，表示BLE连接状态变化事件。|
|callback|[Callback1Argument](../arkinterop/cj-api-callback_invoke.md#class-callback1argument)\<[BLEConnectionChangeState](#class-bleconnectionchangestate)>|是|-|返回MTU字节数的值，通过注册回调函数获取。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 401 | Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.2. Incorrect parameter types. 3. Parameter verification failed. |
  | 801 | Capability not supported. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.callback_invoke.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

// 此处代码可添加在依赖项定义中
let gattServer = createGattServer()

class StateChangeCallback <: Callback1Argument<BLEConnectionChangeState> {
    public func invoke(err: ?BusinessException, state: BLEConnectionChangeState): Unit {
        Hilog.info(0, "Bluetooth", "onGattServerStateChange: device=" + state.deviceId + ", state=" + state.state.toString())
    }
}

let stateChangeCallback = StateChangeCallback()
try {
    gattServer.on(BluetoothBleGattServerCallbackType.ConnectionStateChange, stateChangeCallback)
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

### func on(BluetoothBleGattServerCallbackType, Callback1Argument\<Int32>)

```cangjie
public func on(eventType: BluetoothBleGattServerCallbackType, callback: Callback1Argument<Int32>): Unit
```

**功能：** server端订阅MTU状态变化事件。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|eventType|[BluetoothBleGattServerCallbackType](#enum-bluetoothblegattservercallbacktype)|是|-|必须填写BLE_MTU_CHANGE，表示MTU状态变化事件。填写不正确将导致回调无法注册。|
|callback|[Callback1Argument](../arkinterop/cj-api-callback_invoke.md#class-callback1argument)\<Int32>|是|-|返回MTU字节数的值，通过注册回调函数获取。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 401 | Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.2. Incorrect parameter types. 3. Parameter verification failed. |
  | 801 | Capability not supported. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.callback_invoke.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

// 此处代码可添加在依赖项定义中
let gattServer = createGattServer()
class BLEMtuChangeCallback <: Callback1Argument<Int32> {
    public func invoke(err: ?BusinessException, mtu: Int32): Unit {
        Hilog.info(0, "Bluetooth", "mtu change to ${mtu}")
    }
}

let bleMtuChangeCallback = BLEMtuChangeCallback()
try {
    gattServer.on(BluetoothBleGattServerCallbackType.ServerBleMtuChange, bleMtuChangeCallback)
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

### func removeService(String)

```cangjie
public func removeService(serviceUuid: String): Unit
```

**功能：** 删除已添加的服务。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|serviceUuid|String|是|-|service的UUID，例如“00001810-0000-1000-8000-00805F9B34FB”。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)和[蓝牙服务子系统错误码](./cj-errorcode-bluetooth_manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 401 | Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.2. Incorrect parameter types. 3. Parameter verification failed. |
  | 801 | Capability not supported. |
  | 2900001 | Service stopped. |
  | 2900003 | Bluetooth disabled. |
  | 2900004 | Profile not supported. |
  | 2900099 | Operation failed. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

let gattServer = createGattServer()
try {
    gattServer.removeService("00001810-0000-1000-8000-00805F9B34FB")
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

### func sendResponse(ServerResponse)

```cangjie
public func sendResponse(serverResponse: ServerResponse): Unit
```

**功能：** server端回复client端的读写请求。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|serverResponse|ServerResponse|是|-|client进行服务发现。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../cj-errorcode-universal.md)和[蓝牙服务子系统错误码](./cj-errorcode-bluetooth_manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 401 | Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.2. Incorrect parameter types. 3. Parameter verification failed. |
  | 801 | Capability not supported. |
  | 2900001 | Service stopped. |
  | 2900003 | Bluetooth disabled. |
  | 2900099 | Operation failed. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

let gattServer = createGattServer()
try {
    let rspBuffer = Array<Byte>()
    let serverResponse: ServerResponse = ServerResponse(
        "XX:XX:XX:XX:XX:XX'", 0, 0, 0,
        rspBuffer
    )
    gattServer.sendResponse(serverResponse)
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

## class GattService

```cangjie
public class GattService {
    public var serviceUuid: String
    public var isPrimary: Bool
    public var characteristics: Array<BLECharacteristic>
    public var includeServices: Array<GattService>
    public init(
        serviceUuid: String,
        isPrimary: Bool,
        characteristics: Array<BLECharacteristic>,
        includeServices!: Array<GattService> = []
    )
}
```

**功能：** 描述service的接口参数定义。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var characteristics

```cangjie
public var characteristics: Array<BLECharacteristic>
```

**功能：** 当前服务包含的特征列表。

**类型：** Array\<[BLECharacteristic](#class-blecharacteristic)>

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var includeServices

```cangjie
public var includeServices: Array<GattService>
```

**功能：** 当前服务依赖的其它服务。

**类型：** Array\<[GattService](#class-gattservice)>

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var isPrimary

```cangjie
public var isPrimary: Bool
```

**功能：** 特如果是主服务设置为true，否则设置为false。

**类型：** Bool

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var serviceUuid

```cangjie
public var serviceUuid: String
```

**功能：** 特定服务（service）的UUID，例如：00001888-0000-1000-8000-00805f9b34fb。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### init(String, Bool, Array\<BLECharacteristic>, Array\<GattService>)

```cangjie
public init(
    serviceUuid: String,
    isPrimary: Bool,
    characteristics: Array<BLECharacteristic>,
    includeServices!: Array<GattService> = []
)
```

**功能：** GattService 构造器。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|serviceUuid|String|是|-|特定服务（service）的UUID，例如：00001888-0000-1000-8000-00805f9b34fb。|
|isPrimary|Bool|是|-|如果是主服务设置为true，否则设置为false。|
|characteristics|Array\<[BLECharacteristic](#class-blecharacteristic)>|是|-|当前服务包含的特征列表。|
|includeServices|Array\<[GattService](#class-gattservice)>|否|[]|当前服务依赖的其它服务。|

## class ManufactureData

```cangjie
public class ManufactureData {
    public var manufactureId: UInt16
    public var manufactureValue: Array<Byte>
    public init(
        manufactureId: UInt16,
        manufactureValue: Array<Byte>
    )
}
```

**功能：** 描述BLE广播数据包的内容。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var manufactureId

```cangjie
public var manufactureId: UInt16
```

**功能：** 表示制造商的ID，由蓝牙SIG分配。

**类型：** UInt16

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var manufactureValue

```cangjie
public var manufactureValue: Array<Byte>
```

**功能：** 表示制造商发送的制造商数据。

**类型：** Array\<Byte>

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### init(UInt16, Array\<Byte>)

```cangjie
public init(
    manufactureId: UInt16,
    manufactureValue: Array<Byte>
)
```

**功能：** ManufactureData 构造器。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|manufactureId|UInt16|是|-|表示制造商的ID，由蓝牙SIG分配。|
|manufactureValue|Array\<Byte>|是|-|表示制造商发送的制造商数据。|

## class NotifyCharacteristic

```cangjie
public class NotifyCharacteristic {
    public var serviceUuid: String
    public var characteristicUuid: String
    public var characteristicValue: Array<Byte>
    public var confirm: Bool
    public init(
        serviceUuid: String,
        characteristicUuid: String,
        characteristicValue: Array<Byte>,
        confirm: Bool
    )
}
```

**功能：** 描述server端特征值变化时发送的特征通知参数定义。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var characteristicUuid

```cangjie
public var characteristicUuid: String
```

**功能：** 特定特征（characteristic）的UUID，例如：00002a11-0000-1000-8000-00805f9b34fb。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var characteristicValue

```cangjie
public var characteristicValue: Array<Byte>
```

**功能：** 特征对应的二进制值。

**类型：** Array\<Byte>

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var confirm

```cangjie
public var confirm: Bool
```

**功能：** 如果是indication，对端需要回复确认，则设置为true；如果是notification，对端不需要回复确认，则设置为false。

**类型：** Bool

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var serviceUuid

```cangjie
public var serviceUuid: String
```

**功能：** 特定服务（service）的UUID，例如：00001888-0000-1000-8000-00805f9b34fb。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### init(String, String, Array\<Byte>, Bool)

```cangjie
public init(
    serviceUuid: String,
    characteristicUuid: String,
    characteristicValue: Array<Byte>,
    confirm: Bool
)
```

**功能：** NotifyCharacteristic 构造器。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|serviceUuid|String|是|-|特定服务（service）的UUID，例如：00001888-0000-1000-8000-00805f9b34fb。|
|characteristicUuid|String|是|-|特定特征（characteristic）的UUID，例如：00002a11-0000-1000-8000-00805f9b34fb。|
|characteristicValue|Array\<Byte>|是|-|特征对应的二进制值。|
|confirm|Bool|是|-|如果是indication，对端需要回复确认，则设置为true；如果是notification，对端不需要回复确认，则设置为false。|

## class ScanFilter

```cangjie
public class ScanFilter {
    public var deviceId: String
    public var name: String
    public var serviceUuid: String
    public var serviceUuidMask: String
    public var serviceSolicitationUuid: String
    public var serviceSolicitationUuidMask: String
    public var serviceData: Array<Byte>
    public var serviceDataMask: Array<Byte>
    public var manufactureId: UInt16
    public var manufactureData: Array<Byte>
    public var manufactureDataMask: Array<Byte>
    public init(
        deviceId!: String = "",
        name!: String = "",
        serviceUuid!: String = "",
        serviceUuidMask!: String = "",
        serviceSolicitationUuid!: String = "",
        serviceSolicitationUuidMask!: String = "",
        serviceData!: Array<Byte> = [],
        serviceDataMask!: Array<Byte> = [],
        manufactureId!: UInt16 = 0,
        manufactureData!: Array<Byte> = [],
        manufactureDataMask!: Array<Byte> = []
    )
}
```

**功能：** 扫描过滤参数。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var deviceId

```cangjie
public var deviceId: String
```

**功能：** 表示过滤的BLE设备地址，例如："XX:XX:XX:XX:XX:XX"。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var manufactureData

```cangjie
public var manufactureData: Array<Byte>
```

**功能：** 表示过滤包含该制造商相关数据的设备，例如：[0x1F,0x2F,0x3F]。

**类型：** Array\<Byte>

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var manufactureDataMask

```cangjie
public var manufactureDataMask: Array<Byte>
```

**功能：** 表示过滤包含该制造商相关数据掩码的设备，例如：[0xFF,0xFF,0xFF]。

**类型：** Array\<Byte>

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var manufactureId

```cangjie
public var manufactureId: UInt16
```

**功能：** 表示过滤包含该制造商ID的设备，例如：0x0006。

**类型：** UInt16

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var name

```cangjie
public var name: String
```

**功能：** 表示过滤的BLE设备名。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var serviceData

```cangjie
public var serviceData: Array<Byte>
```

**功能：** 表示过滤包含该服务相关数据的设备，例如：[0x90,0x00,0xF1,0xF2]。

**类型：** Array\<Byte>

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var serviceDataMask

```cangjie
public var serviceDataMask: Array<Byte>
```

**功能：** 表示过滤包含该服务相关数据掩码的设备，例如：[0xFF,0xFF,0xFF,0xFF]。

**类型：** Array\<Byte>

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var serviceSolicitationUuid

```cangjie
public var serviceSolicitationUuid: String
```

**功能：** 表示过滤包含该UUID服务请求的设备，例如：00001888-0000-1000-8000-00805F9B34FB。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var serviceSolicitationUuidMask

```cangjie
public var serviceSolicitationUuidMask: String
```

**功能：** 表示过滤包含该UUID服务请求掩码的设备，例如：FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var serviceUuid

```cangjie
public var serviceUuid: String
```

**功能：** 表示过滤包含该UUID服务的设备，例如：00001888-0000-1000-8000-00805f9b34fb。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var serviceUuidMask

```cangjie
public var serviceUuidMask: String
```

**功能：** 表示过滤包含该UUID服务掩码的设备，例如：FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### init(String, String, String, String, String, String, Array\<Byte>, Array\<Byte>, UInt16, Array\<Byte>, Array\<Byte>)

```cangjie
public init(
    deviceId!: String = "",
    name!: String = "",
    serviceUuid!: String = "",
    serviceUuidMask!: String = "",
    serviceSolicitationUuid!: String = "",
    serviceSolicitationUuidMask!: String = "",
    serviceData!: Array<Byte> = [],
    serviceDataMask!: Array<Byte> = [],
    manufactureId!: UInt16 = 0,
    manufactureData!: Array<Byte> = [],
    manufactureDataMask!: Array<Byte> = []
)
```

**功能：** 创建扫描过滤参数结构体ScanFilter。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|deviceId|String|否|""| **命名参数。** 过滤该BLE设备地址的广播报文。例如："XX:XX:XX:XX:XX:XX"。预留字段，本版本暂不支持。|
|name|String|否|""|**命名参数。** 过滤该BLE设备名称的广播报文。预留字段，本版本暂不支持。|
|serviceUuid|String|否|""|**命名参数。** 过滤包含该服务UUID的广播报文。例如：00001888-0000-1000-8000-00805f9b34fb。预留字段，本版本暂不支持。|
|serviceUuidMask|String|否|""|**命名参数。** 搭配serviceUuid过滤器使用，可设置过滤部分服务UUID。例如：FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF。预留字段，本版本暂不支持。|
|serviceSolicitationUuid|String|否|""|**命名参数。** 过滤包含该服务请求UUID的广播报文。例如：00001888-0000-1000-8000-00805F9B34FB。预留字段，本版本暂不支持。|
|serviceSolicitationUuidMask|String|否|""|**命名参数。** 搭配serviceSolicitationUuid过滤器使用，可设置过滤部分服务请求UUID。例如：FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF。预留字段，本版本暂不支持。|
|serviceData|Array\<Byte>|否|[]|**命名参数。** 过滤包含该服务数据的广播报文。例如：[0x90,0x00,0xF1,0xF2]。预留字段，本版本暂不支持。|
|serviceDataMask|Array\<Byte>|否|[]|**命名参数。** 搭配serviceData过滤器使用，可设置过滤部分服务数据。例如：[0xFF,0xFF,0xFF,0xFF]。预留字段，本版本暂不支持。|
|manufactureId|UInt16|否|0|**命名参数。** 过滤包含该制造商标识符的广播报文。例如：0x0006。预留字段，本版本暂不支持。|
|manufactureData|Array\<Byte>|否|[]|**命名参数。**  搭配manufactureId过滤器使用，过滤包含该制造商数据的广播报文。例如：[0x1F,0x2F,0x3F]。预留字段，本版本暂不支持。|
|manufactureDataMask|Array\<Byte>|否|[]|**命名参数。** 搭配manufactureData过滤器使用，可设置过滤部分制造商数据。例如：[0xFF,0xFF,0xFF]。预留字段，本版本暂不支持。|

## class ScanOptions

```cangjie
public class ScanOptions {
    public var interval: Int32
    public var dutyMode: ScanDuty
    public var matchMode: MatchMode
    public var phyType: PhyType
    public init(
        interval!: Int32 = 0,
        dutyMode!: ScanDuty = ScanModeLowPower,
        matchMode!: MatchMode = MatchModeAggressive,
        phyType!: PhyType = PhyLe1M,
        reportMode!: ScanReportMode = Normal
    )
}
```

**功能：** 扫描的配置参数。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var dutyMode

```cangjie
public var dutyMode: ScanDuty
```

**功能：** 表示扫描模式，默认值为ScanDuty.ScanModeLowPower。

**类型：** [ScanDuty](#enum-scanduty)

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var interval

```cangjie
public var interval: Int32
```

**功能：** 表示扫描结果上报延迟时间，默认值为0。

**类型：** Int32

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var matchMode

```cangjie
public var matchMode: MatchMode
```

**功能：** 表示硬件的过滤匹配模式，默认值为MatchMode.MatchModeAggressive。

**类型：** [MatchMode](#enum-matchmode)

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var phyType

```cangjie
public var phyType: PhyType
```

**功能：** 表示扫描中使用的PHY类型。

**类型：** [PhyType](#enum-phytype)

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### init(Int32, ScanDuty, MatchMode, PhyType, ScanReportMode)

```cangjie
public init(
    interval!: Int32 = 0,
    dutyMode!: ScanDuty = ScanModeLowPower,
    matchMode!: MatchMode = MatchModeAggressive,
    phyType!: PhyType = PhyLe1M,
    reportMode!: ScanReportMode = Normal
)
```

**功能：** 创建扫描的配置参数结构体ScanOptions。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|interval|Int32|否|0|**命名参数。**  表示扫描结果上报延迟时间，初始值为0。|
|dutyMode|[ScanDuty](#enum-scanduty)|否|ScanModeLowPower|**命名参数。** 表示扫描模式，初始值为ScanDuty.ScanModeLowPower。|
|matchMode|[MatchMode](#enum-matchmode)|否|MatchModeAggressive|**命名参数。** 表示硬件的过滤匹配模式，初始值为MatchMode.MatchModeAggressive。|
|phyType|[PhyType](#enum-phytype)|否|PhyLe1M|**命名参数。** 表示扫描中使用的PHY类型。|
|reportMode|[ScanReportMode](#enum-scanreportmode)|否|Normal|**命名参数。** 扫描结果数据上报模式，默认值为NORMAL。|

## class ScanResult

```cangjie
public class ScanResult {
    public var deviceId: String
    public var rssi: Int32
    public var data: Array<Byte>
    public var deviceName: String
    public var connectable: Bool
}
```

**功能：** 扫描结果上报数据。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var connectable

```cangjie
public var connectable: Bool
```

**功能：** 表示扫描到的设备是否可连接。true表示可连接，false表示不可连接。

**类型：** Bool

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var data

```cangjie
public var data: Array<Byte>
```

**功能：** 表示扫描到的设备发送的广播包。

**类型：** Array\<Byte>

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var deviceId

```cangjie
public var deviceId: String
```

**功能：** 表示扫描到的设备地址，例如："XX:XX:XX:XX:XX:XX"。基于信息安全考虑，此处获取的设备地址为随机MAC地址。配对成功后，该地址不会变更；已配对设备取消配对后重新扫描或蓝牙服务下电时，该随机地址会变更。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var deviceName

```cangjie
public var deviceName: String
```

**功能：** 表示扫描到的设备名称。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var rssi

```cangjie
public var rssi: Int32
```

**功能：** 表示扫描到的设备的rssi值。

**类型：** Int32

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

## class ServerResponse

```cangjie
public class ServerResponse {
    public var deviceId: String
    public var transId: Int32
    public var status: Int32
    public var offset: Int32
    public var value: Array<Byte>
    public init(
        deviceId: String,
        transId: Int32,
        status: Int32,
        offset: Int32,
        value: Array<Byte>
    )
}
```

**功能：** 描述server端回复client端读/写请求的响应参数类。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var deviceId

```cangjie
public var deviceId: String
```

**功能：** 表示远端设备地址，例如："XX:XX:XX:XX:XX:XX"。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var offset

```cangjie
public var offset: Int32
```

**功能：** 表示请求的读/写起始位置，与订阅的读/写请求事件携带的offset保持一致。

**类型：** Int32

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var status

```cangjie
public var status: Int32
```

**功能：** 表示响应的状态，设置为0即可，表示正常。

**类型：** Int32

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var transId

```cangjie
public var transId: Int32
```

**功能：** 表示请求的传输ID，与订阅的读/写请求事件携带的ID保持一致。

**类型：** Int32

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var value

```cangjie
public var value: Array<Byte>
```

**功能：** 表示回复响应的二进制数据。

**类型：** Array\<Byte>

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### init(String, Int32, Int32, Int32, Array\<Byte>)

```cangjie
public init(
    deviceId: String,
    transId: Int32,
    status: Int32,
    offset: Int32,
    value: Array<Byte>
)
```

**功能：** 描述server端回复client端读/写请求的响应参数类。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|deviceId|String|是|-|表示远端设备地址，例如："XX:XX:XX:XX:XX:XX"。|
|transId|Int32|是|-|表示请求的传输ID，与订阅的读/写请求事件携带的ID保持一致。|
|status|Int32|是|-|表示响应的状态，设置为0即可，表示正常。|
|offset|Int32|是|-|表示请求的读/写起始位置，与订阅的读/写请求事件携带的offset保持一致。|
|value|Array\<Byte>|是|-|表示回复响应的二进制数据。|

## class ServiceData

```cangjie
public class ServiceData {
    public var serviceUuid: String
    public var serviceValue: Array<Byte>
    public init(
        serviceUuid: String,
        serviceValue: Array<Byte>
    )
}
```

**功能：** 描述广播包中服务数据内容。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var serviceUuid

```cangjie
public var serviceUuid: String
```

**功能：** 表示服务的UUID。

**类型：** String

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### var serviceValue

```cangjie
public var serviceValue: Array<Byte>
```

**功能：** 表示服务数据。

**类型：** Array\<Byte>

**读写能力：** 可读写

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### init(String, Array\<Byte>)

```cangjie
public init(
    serviceUuid: String,
    serviceValue: Array<Byte>
)
```

**功能：** 描述广播包中服务数据内容。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|serviceUuid|String|是|-|表示服务的UUID。|
|serviceValue|Array\<Byte>|是|-|表示服务数据。|

## enum AdvertisingState

```cangjie
public enum AdvertisingState <: Equatable<AdvertisingState> & ToString {
    | Started
    | Enabled
    | Disabled
    | Stopped
    | ...
}
```

**功能：** 广播状态。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**父类型：**

- Equatable\<AdvertisingState>
- ToString

### Disabled

```cangjie
Disabled
```

**功能：** 表示临时停止广播后的状态。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### Enabled

```cangjie
Enabled
```

**功能：** 表示临时启动广播后的状态。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### Started

```cangjie
Started
```

**功能：** 表示首次启动广播后的状态。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### Stopped

```cangjie
Stopped
```

**功能：** 表示完全停止广播后的状态。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### func !=(AdvertisingState)

```cangjie
public operator func !=(other: AdvertisingState): Bool
```

**功能：** 判断两个枚举值是否不相等。

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|other|[AdvertisingState](#enum-advertisingstate)|是|-|另一个枚举值。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|两个枚举值不相等返回true，否则返回false。|

### func ==(AdvertisingState)

```cangjie
public operator func ==(other: AdvertisingState): Bool
```

**功能：** 判断两个枚举值是否相等。

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|other|[AdvertisingState](#enum-advertisingstate)|是|-|另一个枚举值。|

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

## enum BluetoothBleCallbackType

```cangjie
public enum BluetoothBleCallbackType <: Equatable<BluetoothBleCallbackType> & Hashable & ToString {
    | AdvertisingStateChange
    | BleDeviceFind
    | ...
}
```

**功能：** 广播扫描订阅事件类型。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**父类型：**

- Equatable\<BluetoothBleCallbackType>
- Hashable
- ToString

### AdvertisingStateChange

```cangjie
AdvertisingStateChange
```

**功能：** 表示广播状态事件类型。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### BleDeviceFind

```cangjie
BleDeviceFind
```

**功能：** 表示BLE设备发现事件类型。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### func !=(BluetoothBleCallbackType)

```cangjie
public operator func !=(other: BluetoothBleCallbackType): Bool
```

**功能：** 判断两个枚举值是否不相等。

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|other|[BluetoothBleCallbackType](#enum-bluetoothblecallbacktype)|是|-|另一个枚举值。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|两个枚举值不相等返回true，否则返回false。|

### func ==(BluetoothBleCallbackType)

```cangjie
public operator func ==(other: BluetoothBleCallbackType): Bool
```

**功能：** 判断两个枚举值是否相等。

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|other|[BluetoothBleCallbackType](#enum-bluetoothblecallbacktype)|是|-|另一个枚举值。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|两个枚举值相等返回true，否则返回false。|

### func hashCode()

```cangjie
public func hashCode(): Int64
```

**功能：** 获取输入数据的哈希值。

**返回值：**

|类型|说明|
|:----|:----|
|Int64|数据的哈希值。|

### func toString()

```cangjie
public func toString(): String
```

**功能：** 获取枚举的值。

**返回值：**

|类型|说明|
|:----|:----|
|String|枚举的说明。|

## enum BluetoothBleGattClientDeviceCallbackType

```cangjie
public enum BluetoothBleGattClientDeviceCallbackType <: Equatable<BluetoothBleGattClientDeviceCallbackType> & Hashable & ToString {
    | BleCharacteristicChange
    | BleConnectionStateChange
    | ClientBleMtuChange
    | ...
}
```

**功能：** 客户端 on/off 事件的类型。

**需要权限：** ohos.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**父类型：**

- Equatable\<BluetoothBleGattClientDeviceCallbackType>
- Hashable
- ToString

### BleCharacteristicChange

```cangjie
BleCharacteristicChange
```

**功能：** 表示特征值变化事件类型。

**需要权限：** ohos.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### BleConnectionStateChange

```cangjie
BleConnectionStateChange
```

**功能：** 表示连接状态变化事件类型。

**需要权限：** ohos.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### ClientBleMtuChange

```cangjie
ClientBleMtuChange
```

**功能：** 表示MTU状态变化事件类型。

**需要权限：** ohos.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### func !=(BluetoothBleGattClientDeviceCallbackType)

```cangjie
public operator func !=(other: BluetoothBleGattClientDeviceCallbackType): Bool
```

**功能：** 判断两个枚举值是否不相等。

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|other|[BluetoothBleGattClientDeviceCallbackType](#enum-bluetoothblegattclientdevicecallbacktype)|是|-|另一个枚举值。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|两个枚举值不相等返回true，否则返回false。|

### func ==(BluetoothBleGattClientDeviceCallbackType)

```cangjie
public operator func ==(other: BluetoothBleGattClientDeviceCallbackType): Bool
```

**功能：** 判断两个枚举值是否相等。

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|other|[BluetoothBleGattClientDeviceCallbackType](#enum-bluetoothblegattclientdevicecallbacktype)|是|-|另一个枚举值。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|两个枚举值相等返回true，否则返回false。|

### func hashCode()

```cangjie
public func hashCode(): Int64
```

**功能：** 获取输入数据的哈希值。

**返回值：**

|类型|说明|
|:----|:----|
|Int64|数据的哈希值。|

### func toString()

```cangjie
public func toString(): String
```

**功能：** 获取枚举的值。

**返回值：**

|类型|说明|
|:----|:----|
|String|枚举的说明。|

## enum BluetoothBleGattServerCallbackType

```cangjie
public enum BluetoothBleGattServerCallbackType <: Equatable<BluetoothBleGattServerCallbackType> & Hashable & ToString {
    | CharacteristicRead
    | CharacteristicWrite
    | DescriptorRead
    | DescriptorWrite
    | ConnectionStateChange
    | ServerBleMtuChange
    | ...
}
```

**功能：** 服务端 on/off 事件的类型。

**需要权限：** ohos.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**父类型：**

- Equatable\<BluetoothBleGattServerCallbackType>
- Hashable
- ToString

### CharacteristicRead

```cangjie
CharacteristicRead
```

**功能：** 表示特征值读请求事件类型。

**需要权限：** ohos.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### CharacteristicWrite

```cangjie
CharacteristicWrite
```

**功能：** 表示特征值写请求事件类型。

**需要权限：** ohos.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### ConnectionStateChange

```cangjie
ConnectionStateChange
```

**功能：** 表示BLE连接状态变化事件类型。

**需要权限：** ohos.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### DescriptorRead

```cangjie
DescriptorRead
```

**功能：** 表示描述符读请求事件类型。

**需要权限：** ohos.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### DescriptorWrite

```cangjie
DescriptorWrite
```

**功能：** 表示描述符写请求事件类型。

**需要权限：** ohos.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### ServerBleMtuChange

```cangjie
ServerBleMtuChange
```

**功能：** 表示MTU状态变化事件类型。

**需要权限：** ohos.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### func !=(BluetoothBleGattServerCallbackType)

```cangjie
public operator func !=(other: BluetoothBleGattServerCallbackType): Bool
```

**功能：** 判断两个枚举值是否不相等。

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|other|[BluetoothBleGattServerCallbackType](#enum-bluetoothblegattservercallbacktype)|是|-|另一个枚举值。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|两个枚举值不相等返回true，否则返回false。|

### func ==(BluetoothBleGattServerCallbackType)

```cangjie
public operator func ==(other: BluetoothBleGattServerCallbackType): Bool
```

**功能：** 判断两个枚举值是否相等。

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|other|[BluetoothBleGattServerCallbackType](#enum-bluetoothblegattservercallbacktype)|是|-|另一个枚举值。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|两个枚举值相等返回true，否则返回false。|

### func hashCode()

```cangjie
public func hashCode(): Int64
```

**功能：** 获取输入数据的哈希值。

**返回值：**

|类型|说明|
|:----|:----|
|Int64|数据的哈希值。|

### func toString()

```cangjie
public func toString(): String
```

**功能：** 获取枚举的值。

**返回值：**

|类型|说明|
|:----|:----|
|String|枚举的说明。|

## enum GattWriteType

```cangjie
public enum GattWriteType <: Equatable<GattWriteType> & ToString {
    | Write
    | WriteNoResponse
    | ...
}
```

**功能：** 表示gatt写入类型。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**父类型：**

- Equatable\<GattWriteType>
- ToString

### Write

```cangjie
Write
```

**功能：** 表示写入特征值，需要对端设备的回复。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### WriteNoResponse

```cangjie
WriteNoResponse
```

**功能：** 表示写入特征值，不需要对端设备的回复。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### func !=(GattWriteType)

```cangjie
public operator func !=(other: GattWriteType): Bool
```

**功能：** 判断两个枚举值是否不相等。

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|other|[GattWriteType](#enum-gattwritetype)|是|-|另一个枚举值。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|两个枚举值不相等返回true，否则返回false。|

### func ==(GattWriteType)

```cangjie
public operator func ==(other: GattWriteType): Bool
```

**功能：** 判断两个枚举值是否相等。

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|other|[GattWriteType](#enum-gattwritetype)|是|-|另一个枚举值。|

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

## enum MatchMode

```cangjie
public enum MatchMode <: Equatable<MatchMode> & ToString {
    | MatchModeAggressive
    | MatchModeSticky
    | ...
}
```

**功能：** 硬件过滤匹配模式。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**父类型：**

- Equatable\<MatchMode>
- ToString

### MatchModeAggressive

```cangjie
MatchModeAggressive
```

**功能：** 表示硬件上报扫描结果门限较低，比如扫描到的功率较低或者一段时间扫描到的次数较少也触发上报，默认值。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### MatchModeSticky

```cangjie
MatchModeSticky
```

**功能：** 表示硬件上报扫描结果门限较高，更高的功率门限以及扫描到多次才会上报。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### func !=(MatchMode)

```cangjie
public operator func !=(other: MatchMode): Bool
```

**功能：** 判断两个枚举值是否不相等。

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|other|[MatchMode](#enum-matchmode)|是|-|另一个枚举值。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|两个枚举值不相等返回true，否则返回false。|

### func ==(MatchMode)

```cangjie
public operator func ==(other: MatchMode): Bool
```

**功能：** 判断两个枚举值是否相等。

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|other|[MatchMode](#enum-matchmode)|是|-|另一个枚举值。|

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

## enum PhyType

```cangjie
public enum PhyType <: Equatable<PhyType> & ToString {
    | PhyLe1M
    | PhyLeAllSupported
    | ...
}
```

**功能：** 广播状态。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**父类型：**

- Equatable\<PhyType>
- ToString

### PhyLe1M

```cangjie
PhyLe1M
```

**功能：** 广播状态。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### PhyLeAllSupported

```cangjie
PhyLeAllSupported
```

**功能：** 表示扫描中使用蓝牙协议支持的PHY模式。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### func !=(PhyType)

```cangjie
public operator func !=(other: PhyType): Bool
```

**功能：** 判断两个枚举值是否不相等。

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|other|[PhyType](#enum-phytype)|是|-|另一个枚举值。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|两个枚举值不相等返回true，否则返回false。|

### func ==(PhyType)

```cangjie
public operator func ==(other: PhyType): Bool
```

**功能：** 判断两个枚举值是否相等。

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|other|[PhyType](#enum-phytype)|是|-|另一个枚举值。|

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

## enum ScanDuty

```cangjie
public enum ScanDuty <: Equatable<ScanDuty> & ToString {
    | ScanModeLowPower
    | ScanModeBalanced
    | ScanModeLowLatency
    | ...
}
```

**功能：** 扫描模式。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**父类型：**

- Equatable\<ScanDuty>
- ToString

### ScanModeBalanced

```cangjie
ScanModeBalanced
```

**功能：** 表示均衡模式。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### ScanModeLowLatency

```cangjie
ScanModeLowLatency
```

**功能：** 表示低延迟模式。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### ScanModeLowPower

```cangjie
ScanModeLowPower
```

**功能：** 表示低功耗模式，默认值。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### func !=(ScanDuty)

```cangjie
public operator func !=(other: ScanDuty): Bool
```

**功能：** 判断两个枚举值是否不相等。

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|other|[ScanDuty](#enum-scanduty)|是|-|另一个枚举值。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|两个枚举值不相等返回true，否则返回false。|

### func ==(ScanDuty)

```cangjie
public operator func ==(other: ScanDuty): Bool
```

**功能：** 判断两个枚举值是否相等。

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|other|[ScanDuty](#enum-scanduty)|是|-|另一个枚举值。|

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

## enum ScanReportMode

```cangjie
public enum ScanReportMode <: Equatable<ScanReportMode> & ToString {
    | Normal
    | Batch
    | FenceSensitivityLow
    | FenceSensitivityHigh
    | ...
}
```

**功能：** 上报的扫描数据。

- 该模式可通过降低蓝牙芯片上报扫描结果频率，使系统更长时间地保持在休眠状态，从而降低整机功耗。

- 该模式下，扫描到符合过滤条件的BLE广播报文后不会立刻上报，需要缓存一段时间（ScanOptions中的interval字段）后上报。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**父类型：**

- Equatable\<ScanReportMode>
- ToString

### Batch

```cangjie
Batch
```

**功能：** 批量扫描上报模式。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### FenceSensitivityHigh

```cangjie
FenceSensitivityHigh
```

**功能：** 高灵敏度围栏上报模式。

- 围栏模式表示只在广播进入或离开围栏时上报。

- 扫描到的广播信号强度低且广播数量少时，可进入高灵敏度围栏。

- 首次扫描到广播即进入围栏，触发一次上报。

- 一段时间内扫描不到广播即离开围栏，触发一次上报。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### FenceSensitivityLow

```cangjie
FenceSensitivityLow
```

**功能：** 低灵敏度围栏上报模式。

- 围栏模式表示只在广播进入或离开围栏时上报。

- 扫描到的广播信号强度高且广播数量多时，可进入低灵敏度围栏。

- 首次扫描到广播即进入围栏，触发一次上报。

- 一段时间内扫描不到广播即离开围栏，触发一次上报。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### Normal

```cangjie
Normal
```

**功能：** 常规扫描上报模式，扫描到符合过滤条件的BLE广播报文后就会立刻上报。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

### func !=(ScanReportMode)

```cangjie
public operator func !=(other: ScanReportMode): Bool
```

**功能：** 对扫描上报模式进行判不等。

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|other|[ScanReportMode](#enum-scanreportmode)|是|-|扫描结果数据上报模式|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|如果扫描结果数据上报模式不同，返回true，否则返回false。|

### func ==(ScanReportMode)

```cangjie
public operator func ==(other: ScanReportMode): Bool
```

**功能：** 对扫描上报模式进行判等。

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|other|[ScanReportMode](#enum-scanreportmode)|是|-|扫描结果数据上报模式|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|如果扫描结果数据上报模式相同，返回true，否则返回false。|

### func toString()

```cangjie
public func toString(): String
```

**功能：** 获取扫描结果数据上报模式的字符串表示。

**返回值：**

|类型|说明|
|:----|:----|
|String|扫描结果数据上报模式的字符串表示。|
