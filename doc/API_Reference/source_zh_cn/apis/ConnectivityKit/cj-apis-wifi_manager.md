# ohos.wifi_manager（WLAN）

该模块主要提供WLAN基础功能、P2P（peer-to-peer）功能和WLAN消息通知的相应服务，让应用可以通过WLAN和其他设备互联互通。

## 导入模块

```cangjie
import kit.ConnectivityKit.*
```

## 权限列表

ohos.permission.GET_WIFI_INFO

ohos.permission.SET_WIFI_INFO

## 使用说明

API示例代码使用说明：

- 若示例代码首行有“// index.cj”注释，表示该示例可在仓颉模板工程的“index.cj”文件中编译运行。
- 若示例需获取[Context](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-context)应用上下文，需在仓颉模板工程中的"main_ability.cj"文件中进行配置。

上述示例工程及配置模板详见[仓颉示例代码说明](../../cj-development-intro.md)。

## func getScanInfoList()

```cangjie
public func getScanInfoList(): Array<WifiScanInfo>
```

**功能：** 获取扫描结果。

**需要权限：** ohos.permission.GET_WIFI_INFO

**系统能力：** SystemCapability.Communication.WiFi.STA

**起始版本：** 22

**返回值：**

|类型|说明|
|:----|:----|
|Array\<[WifiScanInfo](#class-wifiscaninfo)>|返回扫描到的热点列表。如果应用申请了ohos.permission.GET_WIFI_PEERS_MAC权限（仅系统应用可申请），则返回结果中的bssid为真实设备地址，否则为随机设备地址。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../../errorcodes/cj-errorcode-universal.md)和[WIFI错误码](../../errorcodes/cj-errorcode-wifi-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 801 | Capability not supported. |
  | 2501000 | Operation failed. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.ConnectivityKit.*

let scanInfoList = getScanInfoList()
```

## func isWifiActive()

```cangjie
public func isWifiActive(): Bool
```

**功能：** 查询WLAN是否已使能。

**系统能力：** SystemCapability.Communication.WiFi.STA

**起始版本：** 22

**返回值：**

|类型|说明|
|:----|:----|
|Bool|true:已使能，false:未使能。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../../errorcodes/cj-errorcode-universal.md)和[WIFI错误码](../../errorcodes/cj-errorcode-wifi-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 801 | Capability not supported. |
  | 2501000 | Operation failed. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.ConnectivityKit.*

let isWifiActive = isWifiActive()
```

## func off(WifiCallbackType, ?CallbackObject)

```cangjie
public func off(eventType: WifiCallbackType, callback!: ?CallbackObject = None): Unit
```

**功能：** 取消注册WLAN状态改变事件。

**需要权限：** ohos.GET_WIFI_INFO

**系统能力：** SystemCapability.Communication.WiFi.STA

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|eventType|[WifiCallbackType](#enum-wificallbacktype)|是|-|回调事件。|
|callback|?[CallbackObject](../../arkinterop/cj-api-callback_invoke.md#class-callbackobject)|否|None| **命名参数。** 状态改变回调函数。如果callback没有传入参数，将取消注册该事件关联的所有回调函数。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../../errorcodes/cj-errorcode-universal.md)和[WIFI错误码](../../errorcodes/cj-errorcode-wifi-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 801 | Capability not supported. |
  | 2801000 | Operation failed. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.ConnectivityKit.*

let callback = WifiCallback1<Int32>() {
    i => AppLog.info("callback invoked")
}
// Register event
on(WifiScanStateChange, callback)
// Unregister event
off(WifiScanStateChange, callback: callback)
```

## func on(WifiCallbackType, Callback1Argument\<Int32>)

```cangjie
public func on(eventType: WifiCallbackType, callback: Callback1Argument<Int32>): Unit
```

**功能：** 注册WLAN状态改变事件。

**需要权限：** ohos.GET_WIFI_INFO

**系统能力：** SystemCapability.Communication.WiFi.STA

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|eventType|[WifiCallbackType](#enum-wificallbacktype)|是|-|回调事件。|
|callback|[Callback1Argument](../../arkinterop/cj-api-callback_invoke.md#class-callback1argument)\<Int32>|是|-|状态改变回调函数。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../../errorcodes/cj-errorcode-universal.md)和[WIFI错误码](../../errorcodes/cj-errorcode-wifi-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 801 | Capability not supported. |
  | 2801000 | Operation failed. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.ConnectivityKit.*

let callback = WifiCallback1<Int32>() {
    i => AppLog.info("callback invoked")
}
// Register event
on(WifiScanStateChange, callback)
// Unregister event
off(WifiScanStateChange, callback: callback)
```

## func p2pCancelConnect()

```cangjie
public func p2pCancelConnect(): Unit
```

**功能：** 在P2P连接过程中，取消P2P连接。

**需要权限：** ohos.permission.GET_WIFI_INFO

**系统能力：** SystemCapability.Communication.WiFi.P2P

**起始版本：** 22

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../../errorcodes/cj-errorcode-universal.md)和[WIFI错误码](../../errorcodes/cj-errorcode-wifi-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 801 | Capability not supported. |
  | 2801000 | Operation failed. |
  | 2801001 | Wi-Fi STA disabled. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.ConnectivityKit.*

p2pCancelConnect()
```

## func p2pConnect(WifiP2PConfig)

```cangjie
public func p2pConnect(config: WifiP2PConfig): Unit
```

**功能：** 执行P2P连接。

**需要权限：** ohos.permission.GET_WIFI_INFO

**系统能力：** SystemCapability.Communication.WiFi.P2P

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|config|[WifiP2PConfig](#class-wifip2pconfig)|是|-|连接配置信息。如果DeviceAddressType未指定值，则DeviceAddressType默认为随机设备地址类型。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../../errorcodes/cj-errorcode-universal.md)和[WIFI错误码](../../errorcodes/cj-errorcode-wifi-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 801 | Capability not supported. |
  | 2801000 | Operation failed. |
  | 2801001 | Wi-Fi STA disabled. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import std.sync.Timer
import ohos.base.*
import kit.ConnectivityKit.*

let recvP2pConnectionChangeFunc = WifiCallback1<WifiP2pLinkedInfo>({ result =>
    AppLog.info("p2p connection change receive event: ${result}")
    let info = getP2pLinkedInfo()
    AppLog.info(info.toString())
})

onP2pConnectionChange(recvP2pConnectionChangeFunc)

let recvP2pDeviceChangeFunc = WifiCallback1<WifiP2pDevice>({ result =>
    AppLog.info("p2p device change receive event: ${result}")
})
onP2pDeviceChange(recvP2pDeviceChangeFunc)

let recvP2pPeerDeviceChangeFunc = WifiCallback1<Array<WifiP2pDevice>>({ result =>
    AppLog.info("p2p peer device change receive event: ${result}")
    let devices = getP2pPeerDevices()
    AppLog.info("get peer devices: ${devices}")
    for(device in devices) {
        if (device.deviceName == "my_test_device") {
            AppLog.info("p2p connect to test device: ${device.deviceAddress}")
            let config = WifiP2PConfig(device.deviceAddress, -2, "", "", GroupOwnerBand.GO_BAND_AUTO)
            p2pConnect(config)
        }
    }
})
onP2pPeerDeviceChange(recvP2pPeerDeviceChangeFunc)

let recvP2pPersistentGroupChangeFunc = WifiCallback0({ =>
    AppLog.info("p2p persistent group change receive event")
    let group = getCurrentGroup()
    AppLog.info("get current group: ${group}")
})
onP2pPersistentGroupChange(recvP2pPersistentGroupChangeFunc)

Timer.once(Duration.second * 125, { => offP2pConnectionChange(callback: recvP2pConnectionChangeFunc) })
Timer.once(Duration.second * 125, { => offP2pDeviceChange(callback: recvP2pDeviceChangeFunc) })
Timer.once(Duration.second * 125, { => offP2pPeerDeviceChange(callback: recvP2pPeerDeviceChangeFunc) })
Timer.once(Duration.second * 125, { => offP2pPersistentGroupChange(callback: recvP2pPersistentGroupChangeFunc) })

AppLog.info("start discover devices")
startDiscoverDevices()
```

## func startDiscoverDevices()

```cangjie
public func startDiscoverDevices(): Unit
```

**功能：** 开始发现设备。

**需要权限：** ohos.permission.GET_WIFI_INFO

**系统能力：** SystemCapability.Communication.WiFi.P2P

**起始版本：** 22

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../../errorcodes/cj-errorcode-universal.md)和[WIFI错误码](../../errorcodes/cj-errorcode-wifi-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 801 | Capability not supported. |
  | 2801000 | Operation failed. |
  | 2801001 | Wi-Fi STA disabled. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.ConnectivityKit.*
import std.sync.Timer

startDiscoverDevices()
```

## func stopDiscoverDevices()

```cangjie
public func stopDiscoverDevices(): Unit
```

**功能：** 停止发现设备。

**需要权限：** ohos.permission.GET_WIFI_INFO

**系统能力：** SystemCapability.Communication.WiFi.P2P

**起始版本：** 22

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../../errorcodes/cj-errorcode-universal.md)和[WIFI错误码](../../errorcodes/cj-errorcode-wifi-manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 801 | Capability not supported. |
  | 2801000 | Operation failed. |
  | 2801001 | Wi-Fi STA disabled. |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.ConnectivityKit.*
import std.sync.Timer

stopDiscoverDevices()
```

## class WifiInfoElem

```cangjie
public class WifiInfoElem {
    public let eid: UInt32
    public let content: Array<UInt8>
}
```

**功能：** WLAN热点信息。

**系统能力：** SystemCapability.Communication.WiFi.STA

**起始版本：** 22

### let content

```cangjie
public let content: Array<UInt8>
```

**功能：** 元素内容。

**类型：** Array\<UInt8>

**读写能力：** 只读

**系统能力：** SystemCapability.Communication.WiFi.STA

**起始版本：** 22

### let eid

```cangjie
public let eid: UInt32
```

**功能：** 元素ID。

**类型：** UInt32

**读写能力：** 只读

**系统能力：** SystemCapability.Communication.WiFi.STA

**起始版本：** 22

## class WifiP2PConfig

```cangjie
public class WifiP2PConfig {
    public let deviceAddress: String
    public let netId: Int32
    public let passphrase: String
    public let groupName: String
    public let goBand: GroupOwnerBand
    public let deviceAddressType: DeviceAddressType
    public init(
        deviceAddress: String,
        netId: Int32,
        passphrase: String,
        groupName: String,
        goBand: GroupOwnerBand,
        deviceAddressType!: DeviceAddressType = RandomDeviceAddress
    )
}
```

**功能：** 表示P2P配置信息。

**系统能力：** SystemCapability.Communication.WiFi.P2P

**起始版本：** 22

### let deviceAddress

```cangjie
public let deviceAddress: String
```

**功能：** 设备地址。

**类型：** String

**读写能力：** 只读

**系统能力：** SystemCapability.Communication.WiFi.P2P

**起始版本：** 22

### let deviceAddressType

```cangjie
public let deviceAddressType: DeviceAddressType
```

**功能：** 设备地址类型。

**类型：** [DeviceAddressType](#enum-deviceaddresstype)

**读写能力：** 只读

**系统能力：** SystemCapability.Communication.WiFi.P2P

**起始版本：** 22

### let goBand

```cangjie
public let goBand: GroupOwnerBand
```

**功能：** 群组带宽。

**类型：** [GroupOwnerBand](#enum-groupownerband)

**读写能力：** 只读

**系统能力：** SystemCapability.Communication.WiFi.P2P

**起始版本：** 22

### let groupName

```cangjie
public let groupName: String
```

**功能：** 群组名称。

**类型：** String

**读写能力：** 只读

**系统能力：** SystemCapability.Communication.WiFi.P2P

**起始版本：** 22

### let netId

```cangjie
public let netId: Int32
```

**功能：** 网络ID。创建群组时-1表示创建临时组，-2表示创建永久组。

**类型：** Int32

**读写能力：** 只读

**系统能力：** SystemCapability.Communication.WiFi.P2P

**起始版本：** 22

### let passphrase

```cangjie
public let passphrase: String
```

**功能：** 群组密钥。

**类型：** String

**读写能力：** 只读

**系统能力：** SystemCapability.Communication.WiFi.P2P

**起始版本：** 22

### init(String, Int32, String, String, GroupOwnerBand, DeviceAddressType)

```cangjie
public init(
    deviceAddress: String,
    netId: Int32,
    passphrase: String,
    groupName: String,
    goBand: GroupOwnerBand,
    deviceAddressType!: DeviceAddressType = RandomDeviceAddress
)
```

**功能：** 构造WifiP2PConfig实例。

**系统能力：** SystemCapability.Communication.WiFi.P2P

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|deviceAddress|String|是|-|设备地址。|
|netId|Int32|是|-|网络ID。创建群组时-1表示创建临时组，-2表示创建永久组。|
|passphrase|String|是|-|群组密钥。|
|groupName|String|是|-|群组名称。|
|goBand|[GroupOwnerBand](#enum-groupownerband)|是|-|群组带宽。|
|deviceAddressType|[DeviceAddressType](#enum-deviceaddresstype)|否|RandomDeviceAddress| **命名参数。** 设备地址类型。>|

## class WifiScanInfo

```cangjie
public class WifiScanInfo {
    public let ssid: String
    public let bssid: String
    public let bssidType: DeviceAddressType
    public let capabilities: String
    public let securityType: WifiSecurityType
    public let rssi: Int32
    public let band: Int32
    public let frequency: Int32
    public let channelWidth: Int32
    public let centerFrequency0: Int32
    public let centerFrequency1: Int32
    public let infoElems: Array<WifiInfoElem>
    public let timestamp: Int64
    public let supportedWifiCategory: WifiCategory
    public let isHiLinkNetwork: Bool
}
```

**功能：** WLAN热点信息。

**系统能力：** SystemCapability.Communication.WiFi.STA

**起始版本：** 22

### let band

```cangjie
public let band: Int32
```

**功能：**  WLAN接入点的频段，1:2.4GHZ；2:5GHZ。

**类型：** Int32

**读写能力：** 只读

**系统能力：** SystemCapability.Communication.WiFi.STA

**起始版本：** 22

### let bssid

```cangjie
public let bssid: String
```

**功能：** 热点的BSSID，例如：00:11:22:33:44:55。

**类型：** String

**读写能力：** 只读

**系统能力：** SystemCapability.Communication.WiFi.STA

**起始版本：** 22

### let bssidType

```cangjie
public let bssidType: DeviceAddressType
```

**功能：** 热点的BSSID类型。

**类型：** [DeviceAddressType](#enum-deviceaddresstype)

**读写能力：** 只读

**系统能力：** SystemCapability.Communication.WiFi.STA

**起始版本：** 22

### let capabilities

```cangjie
public let capabilities: String
```

**功能：** 热点能力。

**类型：** String

**读写能力：** 只读

**系统能力：** SystemCapability.Communication.WiFi.STA

**起始版本：** 22

### let centerFrequency0

```cangjie
public let centerFrequency0: Int32
```

**功能：** 热点的中心频率。

**类型：** Int32

**读写能力：** 只读

**系统能力：** SystemCapability.Communication.WiFi.STA

**起始版本：** 22

### let centerFrequency1

```cangjie
public let centerFrequency1: Int32
```

**功能：** 热点的中心频率。如果热点使用两个不重叠的WLAN信道，则返回两个中心频率，分别用centerFrequency0和centerFrequency1表示。

**类型：** Int32

**读写能力：** 只读

**系统能力：** SystemCapability.Communication.WiFi.STA

**起始版本：** 22

### let channelWidth

```cangjie
public let channelWidth: Int32
```

**功能：** WLAN接入点的带宽。

**类型：** Int32

**读写能力：** 只读

**系统能力：** SystemCapability.Communication.WiFi.STA

**起始版本：** 22

### let frequency

```cangjie
public let frequency: Int32
```

**功能：** WLAN接入点的频率。

**类型：** Int32

**读写能力：** 只读

**系统能力：** SystemCapability.Communication.WiFi.STA

**起始版本：** 22

### let infoElems

```cangjie
public let infoElems: Array<WifiInfoElem>
```

**功能：** 信息元素。

**类型：** Array\<[WifiInfoElem](#class-wifiinfoelem)>

**读写能力：** 只读

**系统能力：** SystemCapability.Communication.WiFi.STA

**起始版本：** 22

### let isHiLinkNetwork

```cangjie
public let isHiLinkNetwork: Bool
```

**功能：** 热点是否支持hiLink，true:支持，&nbsp;false:不支持。

**类型：** Bool

**读写能力：** 只读

**系统能力：** SystemCapability.Communication.WiFi.STA

**起始版本：** 22

### let rssi

```cangjie
public let rssi: Int32
```

**功能：** 热点的信号强度(dBm)。

**类型：** Int32

**读写能力：** 只读

**系统能力：** SystemCapability.Communication.WiFi.STA

**起始版本：** 22

### let securityType

```cangjie
public let securityType: WifiSecurityType
```

**功能：** WLAN加密类型。

**类型：** [WifiSecurityType](#enum-wifisecuritytype)

**读写能力：** 只读

**系统能力：** SystemCapability.Communication.WiFi.STA

**起始版本：** 22

### let ssid

```cangjie
public let ssid: String
```

**功能：** 热点的SSID，最大长度为32字节，编码格式为UTF-8。

**类型：** String

**读写能力：** 只读

**系统能力：** SystemCapability.Communication.WiFi.STA

**起始版本：** 22

### let supportedWifiCategory

```cangjie
public let supportedWifiCategory: WifiCategory
```

**功能：** 热点支持的最高wifi级别。

**类型：** [WifiCategory](#enum-wificategory)

**读写能力：** 只读

**系统能力：** SystemCapability.Communication.WiFi.STA

**起始版本：** 22

### let timestamp

```cangjie
public let timestamp: Int64
```

**功能：** 时间戳。

**类型：** Int64

**读写能力：** 只读

**系统能力：** SystemCapability.Communication.WiFi.STA

**起始版本：** 22

## enum DeviceAddressType

```cangjie
public enum DeviceAddressType <: Equatable<DeviceAddressType> & ToString {
    | RandomDeviceAddress
    | RealDeviceAddress
    | ...
}
```

**功能：** wifi 设备地址（mac/bssid）类型。

**系统能力：** SystemCapability.Communication.WiFi.Core

**起始版本：** 22

**父类型：**

- Equatable\<DeviceAddressType>
- ToString

### RandomDeviceAddress

```cangjie
RandomDeviceAddress
```

**功能：** 随机设备地址。

**系统能力：** SystemCapability.Communication.WiFi.Core

**起始版本：** 22

### RealDeviceAddress

```cangjie
RealDeviceAddress
```

**功能：** 真实设备地址。

**系统能力：** SystemCapability.Communication.WiFi.Core

**起始版本：** 22

### func !=(DeviceAddressType)

```cangjie
public operator func !=(other: DeviceAddressType): Bool
```

**功能：** 判断两个枚举值是否不相等。

**系统能力：** SystemCapability.Communication.WiFi.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|other|[DeviceAddressType](#enum-deviceaddresstype)|是|-|另一个枚举值。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|两个枚举值不相等返回true，否则返回false。|

### func ==(DeviceAddressType)

```cangjie
public operator func ==(other: DeviceAddressType): Bool
```

**功能：** 判断两个枚举值是否相等。

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|other|[DeviceAddressType](#enum-deviceaddresstype)|是|-|另一个枚举值。|

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

## enum GroupOwnerBand

```cangjie
public enum GroupOwnerBand <: Equatable<GroupOwnerBand> & ToString {
    | GoBandAuto
    | GoBand2GHz
    | GoBand5GHz
    | ...
}
```

**功能：** 表示群组带宽。

**系统能力：** SystemCapability.Communication.WiFi.P2P

**起始版本：** 22

**父类型：**

- Equatable\<GroupOwnerBand>
- ToString

### GoBand2GHz

```cangjie
GoBand2GHz
```

**功能：** 2.4GHZ。

**系统能力：** SystemCapability.Communication.WiFi.P2P

**起始版本：** 22

### GoBand5GHz

```cangjie
GoBand5GHz
```

**功能：** 5GHZ。

**系统能力：** SystemCapability.Communication.WiFi.P2P

**起始版本：** 22

### GoBandAuto

```cangjie
GoBandAuto
```

**功能：** 自动模式。

**系统能力：** SystemCapability.Communication.WiFi.P2P

**起始版本：** 22

### func !=(GroupOwnerBand)

```cangjie
public operator func !=(other: GroupOwnerBand): Bool
```

**功能：** 判断两个枚举值是否不相等。

**系统能力：** SystemCapability.Communication.WiFi.P2P

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|other|[GroupOwnerBand](#enum-groupownerband)|是|-|另一个枚举值。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|两个枚举值不相等返回true，否则返回false。|

### func ==(GroupOwnerBand)

```cangjie
public operator func ==(other: GroupOwnerBand): Bool
```

**功能：** 判断两个枚举值是否相等。

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|other|[GroupOwnerBand](#enum-groupownerband)|是|-|另一个枚举值。|

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

## enum WifiCallbackType

```cangjie
public enum WifiCallbackType <: Equatable<WifiCallbackType> & Hashable & ToString {
    | WifiScanStateChange
    | ...
}
```

**功能：** WLAN回调触发事件类型。

**系统能力：** SystemCapability.Communication.WiFi.STA

**起始版本：** 22

**父类型：**

- Equatable\<WifiCallbackType>
- Hashable
- ToString

### WifiScanStateChange

```cangjie
WifiScanStateChange
```

**功能：** 注册WLAN状态改变事件类型。

**系统能力：** SystemCapability.Communication.WiFi.STA

**起始版本：** 22

### func !=(WifiCallbackType)

```cangjie
public operator func !=(other: WifiCallbackType): Bool
```

**功能：** 判断两个枚举值是否不相等。

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|other|[WifiCallbackType](#enum-wificallbacktype)|是|-|另一个枚举值。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|两个枚举值不相等返回true，否则返回false。|

### func ==(WifiCallbackType)

```cangjie
public operator func ==(other: WifiCallbackType): Bool
```

**功能：** 判断两个枚举值是否相等。

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|other|[WifiCallbackType](#enum-wificallbacktype)|是|-|另一个枚举值。|

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

## enum WifiCategory

```cangjie
public enum WifiCategory <: Equatable<WifiCategory> & ToString {
    | Default
    | Wifi6
    | Wifi6Plus
    | ...
}
```

**功能：** 表示热点支持的最高wifi类别。

**系统能力：** SystemCapability.Communication.WiFi.STA

**起始版本：** 22

**父类型：**

- Equatable\<WifiCategory>
- ToString

### Default

```cangjie
Default
```

**功能：** Default。Wifi6以下的wifi类别。

**系统能力：** SystemCapability.Communication.WiFi.STA

**起始版本：** 22

### Wifi6

```cangjie
Wifi6
```

**功能：** Wifi6。

**系统能力：** SystemCapability.Communication.WiFi.STA

**起始版本：** 22

### Wifi6Plus

```cangjie
Wifi6Plus
```

**功能：** Wifi6+。

**系统能力：** SystemCapability.Communication.WiFi.STA

**起始版本：** 22

### func !=(WifiCategory)

```cangjie
public operator func !=(other: WifiCategory): Bool
```

**功能：** 判断两个枚举值是否不相等。

**系统能力：** SystemCapability.Communication.WiFi.STA

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|other|[WifiCategory](#enum-wificategory)|是|-|另一个枚举值。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|两个枚举值不相等返回true，否则返回false。|

### func ==(WifiCategory)

```cangjie
public operator func ==(other: WifiCategory): Bool
```

**功能：** 判断两个枚举值是否相等。

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|other|[WifiCategory](#enum-wificategory)|是|-|另一个枚举值。|

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

## enum WifiSecurityType

```cangjie
public enum WifiSecurityType <: Equatable<WifiSecurityType> & ToString {
    | WifiSecTypeInvalid
    | WifiSecTypeOpen
    | WifiSecTypeWep
    | WifiSecTypePsk
    | WifiSecTypeSae
    | WifiSecTypeEap
    | WifiSecTypeEapSuiteB
    | WifiSecTypeOwe
    | WifiSecTypeWapiCert
    | WifiSecTypeWapiPsk
    | ...
}
```

**功能：** 表示加密类型。

**系统能力：** SystemCapability.Communication.WiFi.Core

**起始版本：** 22

**父类型：**

- Equatable\<WifiSecurityType>
- ToString

### WifiSecTypeEap

```cangjie
WifiSecTypeEap
```

**功能：** EAP加密类型。

**系统能力：** SystemCapability.Communication.WiFi.Core

**起始版本：** 22

### WifiSecTypeEapSuiteB

```cangjie
WifiSecTypeEapSuiteB
```

**功能：** Suite-B 192位加密类型。

**系统能力：** SystemCapability.Communication.WiFi.Core

**起始版本：** 22

### WifiSecTypeInvalid

```cangjie
WifiSecTypeInvalid
```

**功能：** 无效加密类型。

**系统能力：** SystemCapability.Communication.WiFi.Core

**起始版本：** 22

### WifiSecTypeOpen

```cangjie
WifiSecTypeOpen
```

**功能：** 开放加密类型。

**系统能力：** SystemCapability.Communication.WiFi.Core

**起始版本：** 22

### WifiSecTypeOwe

```cangjie
WifiSecTypeOwe
```

**功能：** 机会性无线加密类型。

**系统能力：** SystemCapability.Communication.WiFi.Core

**起始版本：** 22

### WifiSecTypePsk

```cangjie
WifiSecTypePsk
```

**功能：** Pre-shared key (PSK)加密类型。

**系统能力：** SystemCapability.Communication.WiFi.Core

**起始版本：** 22

### WifiSecTypeSae

```cangjie
WifiSecTypeSae
```

**功能：** Simultaneous Authentication of Equals (SAE)加密类型。

**系统能力：** SystemCapability.Communication.WiFi.Core

**起始版本：** 22

### WifiSecTypeWapiCert

```cangjie
WifiSecTypeWapiCert
```

**功能：** WAPI-Cert加密类型。

**系统能力：** SystemCapability.Communication.WiFi.Core

**起始版本：** 22

### WifiSecTypeWapiPsk

```cangjie
WifiSecTypeWapiPsk
```

**功能：** WAPI-PSK加密类型。

**系统能力：** SystemCapability.Communication.WiFi.Core

**起始版本：** 22

### WifiSecTypeWep

```cangjie
WifiSecTypeWep
```

**功能：** Wired Equivalent Privacy (WEP)加密类型。候选网络配置不支持该加密类型。

**系统能力：** SystemCapability.Communication.WiFi.Core

**起始版本：** 22

### func !=(WifiSecurityType)

```cangjie
public operator func !=(other: WifiSecurityType): Bool
```

**功能：** 判断两个枚举值是否不相等。

**系统能力：** SystemCapability.Communication.WiFi.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|other|[WifiSecurityType](#enum-wifisecuritytype)|是|-|另一个枚举值。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|两个枚举值不相等返回true，否则返回false。|

### func ==(WifiSecurityType)

```cangjie
public operator func ==(other: WifiSecurityType): Bool
```

**功能：** 判断两个枚举值是否相等。

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|other|[WifiSecurityType](#enum-wifisecuritytype)|是|-|另一个枚举值。|

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
