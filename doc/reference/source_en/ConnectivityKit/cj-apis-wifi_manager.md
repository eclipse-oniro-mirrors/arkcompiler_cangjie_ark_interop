# ohos.wifi_manager (WLAN)

This module primarily provides WLAN basic functions, P2P (peer-to-peer) capabilities, and WLAN notification services, enabling applications to interconnect with other devices via WLAN.

## Import Module

```cangjie
import kit.ConnectivityKit.*
```

## Permission List

ohos.permission.GET_WIFI_INFO

ohos.permission.SET_WIFI_INFO

## Usage Instructions

API sample code usage instructions:

- If the first line of sample code contains a "// index.cj" comment, it indicates the sample can be compiled and run in the "index.cj" file of the Cangjie template project.
- If the sample requires obtaining the [Context](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-context) application context, configuration must be done in the "main_ability.cj" file of the Cangjie template project.

For details about the sample project and configuration template, refer to [Cangjie Sample Code Description](../cj-development-intro.md).

## func getScanInfoList()

```cangjie
public func getScanInfoList(): Array<WifiScanInfo>
```

**Description:** Obtains scan results.

**Required Permission:** ohos.permission.GET_WIFI_INFO

**System Capability:** SystemCapability.Communication.WiFi.STA

**Since:** 21

**Return Value:**

| Type | Description |
| :---- | :---- |
| Array\<[WifiScanInfo](#class-wifiscaninfo)> | Returns the list of scanned hotspots. If the application has requested the ohos.permission.GET_WIFI_PEERS_MAC permission (only system applications can request), the bssid in the returned results will be the real device address; otherwise, it will be a randomized device address. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [Universal Error Codes](../cj-errorcode-universal.md) and [WIFI Error Codes](./cj-errorcode-wifi-manager.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 801 | Capability not supported. |
  | 2501000 | Operation failed. |

## func isWifiActive()

```cangjie
public func isWifiActive(): Bool
```

**Description:** Checks whether WLAN is enabled.

**System Capability:** SystemCapability.Communication.WiFi.STA

**Since:** 21

**Return Value:**

| Type | Description |
| :---- | :---- |
| Bool | true: enabled, false: disabled. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [Universal Error Codes](../cj-errorcode-universal.md) and [WIFI Error Codes](./cj-errorcode-wifi-manager.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 801 | Capability not supported. |
  | 2501000 | Operation failed. |

## func off(WifiCallbackType, ?CallbackObject)

```cangjie
public func off(eventType: WifiCallbackType, callback!: ?CallbackObject = None): Unit
```

**Description:** Unregisters WLAN state change events.

**Required Permission:** ohos.GET_WIFI_INFO

**System Capability:** SystemCapability.Communication.WiFi.STA

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
| :--- | :--- | :--- | :--- | :--- |
| eventType | [WifiCallbackType](#enum-wificallbacktype) | Yes | - | Callback event. |
| callback | ?[CallbackObject](../arkinterop/cj-api-callback_invoke.md#class-callbackobject) | No | None | **Named parameter.** State change callback function. If no callback parameter is provided, all callback functions associated with the event will be unregistered. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [Universal Error Codes](../cj-errorcode-universal.md) and [WIFI Error Codes](./cj-errorcode-wifi-manager.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 801 | Capability not supported. |
  | 2801000 | Operation failed. |

## func on(WifiCallbackType, Callback1Argument\<Int32>)

```cangjie
public func on(eventType: WifiCallbackType, callback: Callback1Argument<Int32>): Unit
```

**Description:** Registers WLAN state change events.

**Required Permission:** ohos.GET_WIFI_INFO

**System Capability:** SystemCapability.Communication.WiFi.STA

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
| :--- | :--- | :--- | :--- | :--- |
| eventType | [WifiCallbackType](#enum-wificallbacktype) | Yes | - | Callback event. |
| callback | [Callback1Argument](../arkinterop/cj-api-callback_invoke.md#class-callback1argument)\<Int32> | Yes | - | State change callback function. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [Universal Error Codes](../cj-errorcode-universal.md) and [WIFI Error Codes](./cj-errorcode-wifi-manager.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 801 | Capability not supported. |
  | 2801000 | Operation failed. |

## func p2pCancelConnect()

```cangjie
public func p2pCancelConnect(): Unit
```

**Description:** Cancels P2P connection during the connection process.

**Required Permission:** ohos.permission.GET_WIFI_INFO

**System Capability:** SystemCapability.Communication.WiFi.P2P

**Since:** 21

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [Universal Error Codes](../cj-errorcode-universal.md) and [WIFI Error Codes](./cj-errorcode-wifi-manager.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 801 | Capability not supported. |
  | 2801000 | Operation failed. |
  | 2801001 | Wi-Fi STA disabled. |

## func p2pConnect(WifiP2PConfig)

```cangjie
public func p2pConnect(config: WifiP2PConfig): Unit
```

**Description:** Executes P2P connection.

**Required Permission:** ohos.permission.GET_WIFI_INFO

**System Capability:** SystemCapability.Communication.WiFi.P2P

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
| :--- | :--- | :--- | :--- | :--- |
| config | [WifiP2PConfig](#class-wifip2pconfig) | Yes | - | Connection configuration information. If DeviceAddressType is not specified, it defaults to random device address type. |

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [Universal Error Codes](../cj-errorcode-universal.md) and [WIFI Error Codes](./cj-errorcode-wifi-manager.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 801 | Capability not supported. |
  | 2801000 | Operation failed. |
  | 2801001 | Wi-Fi STA disabled. |

## func startDiscoverDevices()

```cangjie
public func startDiscoverDevices(): Unit
```

**Description:** Starts device discovery.

**Required Permission:** ohos.permission.GET_WIFI_INFO

**System Capability:** SystemCapability.Communication.WiFi.P2P

**Since:** 21

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [Universal Error Codes](../cj-errorcode-universal.md) and [WIFI Error Codes](./cj-errorcode-wifi-manager.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 801 | Capability not supported. |
  | 2801000 | Operation failed. |
  | 2801001 | Wi-Fi STA disabled. |

## func stopDiscoverDevices()

```cangjie
public func stopDiscoverDevices(): Unit
```

**Description:** Stops device discovery.

**Required Permission:** ohos.permission.GET_WIFI_INFO

**System Capability:** SystemCapability.Communication.WiFi.P2P

**Since:** 21

**Exceptions:**

- BusinessException: Corresponding error codes are listed below. For details, see [Universal Error Codes](../cj-errorcode-universal.md) and [WIFI Error Codes](./cj-errorcode-wifi-manager.md).

  | Error Code ID | Error Message |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 801 | Capability not supported. |
  | 2801000 | Operation failed. |
  | 2801001 | Wi-Fi STA disabled. |

## class WifiInfoElem

```cangjie
public class WifiInfoElem {
    public var eid: UInt32
    public var content: Array<UInt8>
}
```

**Description:** WLAN hotspot information.

**System Capability:** SystemCapability.Communication.WiFi.STA

**Since:** 21

### var content

```cangjie
public var content: Array<UInt8>
```

**Description:** Element content.

**Type:** Array\<UInt8>

**System Capability:** SystemCapability.Communication.WiFi.STA

**Since:** 21

### var eid

```cangjie
public var eid: UInt32
```

**Description:** Element ID.

**Type:** UInt32

**System Capability:** SystemCapability.Communication.WiFi.STA

**Since:** 21

## class WifiP2PConfig

```cangjie
public class WifiP2PConfig {
    public var deviceAddress: String
    public var netId: Int32
    public var passphrase: String
    public var groupName: String
    public var goBand: GroupOwnerBand
    public var deviceAddressType: DeviceAddressType
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

**Description:** Represents P2P configuration information.

**System Capability:** SystemCapability.Communication.WiFi.P2P

**Since:** 21

### var deviceAddress

```cangjie
public var deviceAddress: String
```

**Description:** Device address.

**Type:** String

**System Capability:** SystemCapability.Communication.WiFi.P2P

**Since:** 21

### var deviceAddressType

```cangjie
public var deviceAddressType: DeviceAddressType
```

**Description:** Device address type.

**Type:** [DeviceAddressType](#enum-deviceaddresstype)

**System Capability:** SystemCapability.Communication.WiFi.P2P

**Since:** 21

### var goBand

```cangjie
public var goBand: GroupOwnerBand
```

**Description:** Group bandwidth.

**Type:** [GroupOwnerBand](#enum-groupownerband)

**System Capability:** SystemCapability.Communication.WiFi.P2P

**Since:** 21

### var groupName

```cangjie
public var groupName: String
```

**Description:** Group name.

**Type:** String

**System Capability:** SystemCapability.Communication.WiFi.P2P

**Since:** 21

### var netId

```cangjie
public var netId: Int32
```

**Description:** Network ID. When creating a group, -1 indicates creating a temporary group, and -2 indicates creating a persistent group.

**Type:** Int32

**System Capability:** SystemCapability.Communication.WiFi.P2P

**Since:** 21

### var passphrase

```cangjie
public var passphrase: String
```

**Description:** Group passphrase.

**Type:** String

**System Capability:** SystemCapability.Communication.WiFi.P2P

**Since:** 21

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

**Description:** Constructs a WifiP2PConfig instance.

**System Capability:** SystemCapability.Communication.WiFi.P2P

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default Value | Description |
| :--- | :--- | :--- | :--- | :--- |
| deviceAddress | String | Yes | - | Device address. |
| netId | Int32 | Yes | - | Network ID. When creating a group, -1 indicates creating a temporary group, and -2 indicates creating a persistent group. |
| passphrase | String | Yes | - | Group passphrase. |
| groupName | String | Yes | - | Group name. |
| goBand | [GroupOwnerBand](#enum-groupownerband) | Yes | - | Group bandwidth. |
| deviceAddressType | [DeviceAddressType](#enum-deviceaddresstype) | No | RandomDeviceAddress | **Named parameter.** Device address type. |## class WifiScanInfo

```cangjie
public class WifiScanInfo {
    public var ssid: String
    public var bssid: String
    public var bssidType: DeviceAddressType
    public var capabilities: String
    public var securityType: WifiSecurityType
    public var rssi: Int32
    public var band: Int32
    public var frequency: Int32
    public var channelWidth: Int32
    public var centerFrequency0: Int32
    public var centerFrequency1: Int32
    public var infoElems: Array<WifiInfoElem>
    public var timestamp: Int64
    public var supportedWifiCategory: WifiCategory
    public var isHiLinkNetwork: Bool
}
```

**Description:** WLAN hotspot information.

**System Capability:** SystemCapability.Communication.WiFi.STA

**Since:** 21

### var band

```cangjie
public var band: Int32
```

**Description:** Frequency band of the WLAN access point, where 1: 2.4GHz; 2: 5GHz.

**Type:** Int32

**System Capability:** SystemCapability.Communication.WiFi.STA

**Since:** 21

### var bssid

```cangjie
public var bssid: String
```

**Description:** BSSID of the hotspot, e.g., 00:11:22:33:44:55.

**Type:** String

**System Capability:** SystemCapability.Communication.WiFi.STA

**Since:** 21

### var bssidType

```cangjie
public var bssidType: DeviceAddressType
```

**Description:** BSSID type of the hotspot.

**Type:** [DeviceAddressType](#enum-deviceaddresstype)

**System Capability:** SystemCapability.Communication.WiFi.STA

**Since:** 21

### var capabilities

```cangjie
public var capabilities: String
```

**Description:** Hotspot capabilities.

**Type:** String

**System Capability:** SystemCapability.Communication.WiFi.STA

**Since:** 21

### var centerFrequency0

```cangjie
public var centerFrequency0: Int32
```

**Description:** Center frequency of the hotspot.

**Type:** Int32

**System Capability:** SystemCapability.Communication.WiFi.STA

**Since:** 21

### var centerFrequency1

```cangjie
public var centerFrequency1: Int32
```

**Description:** Center frequency of the hotspot. If the hotspot uses two non-overlapping WLAN channels, two center frequencies are returned, represented by centerFrequency0 and centerFrequency1 respectively.

**Type:** Int32

**System Capability:** SystemCapability.Communication.WiFi.STA

**Since:** 21

### var channelWidth

```cangjie
public var channelWidth: Int32
```

**Description:** Bandwidth of the WLAN access point.

**Type:** Int32

**System Capability:** SystemCapability.Communication.WiFi.STA

**Since:** 21

### var frequency

```cangjie
public var frequency: Int32
```

**Description:** Frequency of the WLAN access point.

**Type:** Int32

**System Capability:** SystemCapability.Communication.WiFi.STA

**Since:** 21

### var infoElems

```cangjie
public var infoElems: Array<WifiInfoElem>
```

**Description:** Information elements.

**Type:** Array\<[WifiInfoElem](#class-wifiinfoelem)>

**System Capability:** SystemCapability.Communication.WiFi.STA

**Since:** 21

### var isHiLinkNetwork

```cangjie
public var isHiLinkNetwork: Bool
```

**Description:** Whether the hotspot supports HiLink, where true: supported, &nbsp;false: not supported.

**Type:** Bool

**System Capability:** SystemCapability.Communication.WiFi.STA

**Since:** 21

### var rssi

```cangjie
public var rssi: Int32
```

**Description:** Signal strength of the hotspot (dBm).

**Type:** Int32

**System Capability:** SystemCapability.Communication.WiFi.STA

**Since:** 21

### var securityType

```cangjie
public var securityType: WifiSecurityType
```

**Description:** WLAN encryption type.

**Type:** [WifiSecurityType](#enum-wifisecuritytype)

**System Capability:** SystemCapability.Communication.WiFi.STA

**Since:** 21

### var ssid

```cangjie
public var ssid: String
```

**Description:** SSID of the hotspot, with a maximum length of 32 bytes, encoded in UTF-8.

**Type:** String

**System Capability:** SystemCapability.Communication.WiFi.STA

**Since:** 21

### var supportedWifiCategory

```cangjie
public var supportedWifiCategory: WifiCategory
```

**Description:** Highest WiFi category supported by the hotspot.

**Type:** [WifiCategory](#enum-wificategory)

**System Capability:** SystemCapability.Communication.WiFi.STA

**Since:** 21

### var timestamp

```cangjie
public var timestamp: Int64
```

**Description:** Timestamp.

**Type:** Int64

**System Capability:** SystemCapability.Communication.WiFi.STA

**Since:** 21

## enum DeviceAddressType

```cangjie
public enum DeviceAddressType <: Equatable<DeviceAddressType> & ToString {
    | RandomDeviceAddress
    | RealDeviceAddress
    | ...
}
```

**Description:** WiFi device address (MAC/BSSID) type.

**System Capability:** SystemCapability.Communication.WiFi.Core

**Since:** 21

**Parent Types:**

- Equatable\<DeviceAddressType>
- ToString

### RandomDeviceAddress

```cangjie
RandomDeviceAddress
```

**Description:** Random device address.

**System Capability:** SystemCapability.Communication.WiFi.Core

**Since:** 21

### RealDeviceAddress

```cangjie
RealDeviceAddress
```

**Description:** Real device address.

**System Capability:** SystemCapability.Communication.WiFi.Core

**Since:** 21

### func !=(DeviceAddressType)

```cangjie
public operator func !=(other: DeviceAddressType): Bool
```

**Description:** Determines whether two enum values are not equal.

**System Capability:** SystemCapability.Communication.WiFi.Core

**Since:** 21

**Parameters:**

|Parameter|Type|Required|Default|Description|
|:---|:---|:---|:---|:---|
|other|[DeviceAddressType](#enum-deviceaddresstype)|Yes|-|Another enum value.|

**Returns:**

|Type|Description|
|:----|:----|
|Bool|Returns true if the two enum values are not equal, otherwise returns false.|

### func ==(DeviceAddressType)

```cangjie
public operator func ==(other: DeviceAddressType): Bool
```

**Description:** Determines whether two enum values are equal.

**Parameters:**

|Parameter|Type|Required|Default|Description|
|:---|:---|:---|:---|:---|
|other|[DeviceAddressType](#enum-deviceaddresstype)|Yes|-|Another enum value.|

**Returns:**

|Type|Description|
|:----|:----|
|Bool|Returns true if the two enum values are equal, otherwise returns false.|

### func toString()

```cangjie
public func toString(): String
```

**Description:** Gets the value of the enum.

**Returns:**

|Type|Description|
|:----|:----|
|String|Description of the enum.|

## enum GroupOwnerBand

```cangjie
public enum GroupOwnerBand <: Equatable<GroupOwnerBand> & ToString {
    | GoBandAuto
    | GoBand2GHz
    | GoBand5GHz
    | ...
}
```

**Description:** Represents group bandwidth.

**System Capability:** SystemCapability.Communication.WiFi.P2P

**Since:** 21

**Parent Types:**

- Equatable\<GroupOwnerBand>
- ToString

### GoBand2GHz

```cangjie
GoBand2GHz
```

**Description:** 2.4GHz.

**System Capability:** SystemCapability.Communication.WiFi.P2P

**Since:** 21

### GoBand5GHz

```cangjie
GoBand5GHz
```

**Description:** 5GHz.

**System Capability:** SystemCapability.Communication.WiFi.P2P

**Since:** 21

### GoBandAuto

```cangjie
GoBandAuto
```

**Description:** Auto mode.

**System Capability:** SystemCapability.Communication.WiFi.P2P

**Since:** 21

### func !=(GroupOwnerBand)

```cangjie
public operator func !=(other: GroupOwnerBand): Bool
```

**Description:** Determines whether two enum values are not equal.

**System Capability:** SystemCapability.Communication.WiFi.P2P

**Since:** 21

**Parameters:**

|Parameter|Type|Required|Default|Description|
|:---|:---|:---|:---|:---|
|other|[GroupOwnerBand](#enum-groupownerband)|Yes|-|Another enum value.|

**Returns:**

|Type|Description|
|:----|:----|
|Bool|Returns true if the two enum values are not equal, otherwise returns false.|

### func ==(GroupOwnerBand)

```cangjie
public operator func ==(other: GroupOwnerBand): Bool
```

**Description:** Determines whether two enum values are equal.

**Parameters:**

|Parameter|Type|Required|Default|Description|
|:---|:---|:---|:---|:---|
|other|[GroupOwnerBand](#enum-groupownerband)|Yes|-|Another enum value.|

**Returns:**

|Type|Description|
|:----|:----|
|Bool|Returns true if the two enum values are equal, otherwise returns false.|

### func toString()

```cangjie
public func toString(): String
```

**Description:** Gets the value of the enum.

**Returns:**

|Type|Description|
|:----|:----|
|String|Description of the enum.|

```## enum WifiCallbackType

```cangjie
public enum WifiCallbackType <: Equatable<WifiCallbackType> & Hashable & ToString {
    | WifiScanStateChange
    | ...
}
```

**Description:** WLAN callback trigger event types.

**System Capability:** SystemCapability.Communication.WiFi.STA

**Since:** 21

**Parent Types:**

- Equatable\<WifiCallbackType>
- Hashable
- ToString

### WifiScanStateChange

```cangjie
WifiScanStateChange
```

**Description:** Registers the WLAN state change event type.

**System Capability:** SystemCapability.Communication.WiFi.STA

**Since:** 21

### func !=(WifiCallbackType)

```cangjie
public operator func !=(other: WifiCallbackType): Bool
```

**Description:** Determines whether two enum values are unequal.

**Parameters:**

|Parameter|Type|Mandatory|Default Value|Description|
|:---|:---|:---|:---|:---|
|other|[WifiCallbackType](#enum-wificallbacktype)|Yes|-|Another enum value.|

**Return Value:**

|Type|Description|
|:----|:----|
|Bool|Returns true if the two enum values are unequal, otherwise returns false.|

### func ==(WifiCallbackType)

```cangjie
public operator func ==(other: WifiCallbackType): Bool
```

**Description:** Determines whether two enum values are equal.

**Parameters:**

|Parameter|Type|Mandatory|Default Value|Description|
|:---|:---|:---|:---|:---|
|other|[WifiCallbackType](#enum-wificallbacktype)|Yes|-|Another enum value.|

**Return Value:**

|Type|Description|
|:----|:----|
|Bool|Returns true if the two enum values are equal, otherwise returns false.|

### func hashCode()

```cangjie
public func hashCode(): Int64
```

**Description:** Obtains the hash value of the input data.

**Return Value:**

|Type|Description|
|:----|:----|
|Int64|The hash value of the data.|

### func toString()

```cangjie
public func toString(): String
```

**Description:** Obtains the value of the enum.

**Return Value:**

|Type|Description|
|:----|:----|
|String|The description of the enum.|

## enum WifiCategory

```cangjie
public enum WifiCategory <: Equatable<WifiCategory> & ToString {
    | Default
    | Wifi6
    | Wifi6Plus
    | ...
}
```

**Description:** Indicates the highest WiFi category supported by the hotspot.

**System Capability:** SystemCapability.Communication.WiFi.STA

**Since:** 21

**Parent Types:**

- Equatable\<WifiCategory>
- ToString

### Default

```cangjie
Default
```

**Description:** Default. WiFi categories below WiFi6.

**System Capability:** SystemCapability.Communication.WiFi.STA

**Since:** 21

### Wifi6

```cangjie
Wifi6
```

**Description:** WiFi6.

**System Capability:** SystemCapability.Communication.WiFi.STA

**Since:** 21

### Wifi6Plus

```cangjie
Wifi6Plus
```

**Description:** WiFi6+.

**System Capability:** SystemCapability.Communication.WiFi.STA

**Since:** 21

### func !=(WifiCategory)

```cangjie
public operator func !=(other: WifiCategory): Bool
```

**Description:** Determines whether two enum values are unequal.

**System Capability:** SystemCapability.Communication.WiFi.STA

**Since:** 21

**Parameters:**

|Parameter|Type|Mandatory|Default Value|Description|
|:---|:---|:---|:---|:---|
|other|[WifiCategory](#enum-wificategory)|Yes|-|Another enum value.|

**Return Value:**

|Type|Description|
|:----|:----|
|Bool|Returns true if the two enum values are unequal, otherwise returns false.|

### func ==(WifiCategory)

```cangjie
public operator func ==(other: WifiCategory): Bool
```

**Description:** Determines whether two enum values are equal.

**Parameters:**

|Parameter|Type|Mandatory|Default Value|Description|
|:---|:---|:---|:---|:---|
|other|[WifiCategory](#enum-wificategory)|Yes|-|Another enum value.|

**Return Value:**

|Type|Description|
|:----|:----|
|Bool|Returns true if the two enum values are equal, otherwise returns false.|

### func toString()

```cangjie
public func toString(): String
```

**Description:** Obtains the value of the enum.

**Return Value:**

|Type|Description|
|:----|:----|
|String|The description of the enum.|

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

**Description:** Indicates encryption types.

**System Capability:** SystemCapability.Communication.WiFi.Core

**Since:** 21

**Parent Types:**

- Equatable\<WifiSecurityType>
- ToString

### WifiSecTypeEap

```cangjie
WifiSecTypeEap
```

**Description:** EAP encryption type.

**System Capability:** SystemCapability.Communication.WiFi.Core

**Since:** 21

### WifiSecTypeEapSuiteB

```cangjie
WifiSecTypeEapSuiteB
```

**Description:** Suite-B 192-bit encryption type.

**System Capability:** SystemCapability.Communication.WiFi.Core

**Since:** 21

### WifiSecTypeInvalid

```cangjie
WifiSecTypeInvalid
```

**Description:** Invalid encryption type.

**System Capability:** SystemCapability.Communication.WiFi.Core

**Since:** 21

### WifiSecTypeOpen

```cangjie
WifiSecTypeOpen
```

**Description:** Open encryption type.

**System Capability:** SystemCapability.Communication.WiFi.Core

**Since:** 21

### WifiSecTypeOwe

```cangjie
WifiSecTypeOwe
```

**Description:** Opportunistic Wireless Encryption (OWE) type.

**System Capability:** SystemCapability.Communication.WiFi.Core

**Since:** 21

### WifiSecTypePsk

```cangjie
WifiSecTypePsk
```

**Description:** Pre-shared key (PSK) encryption type.

**System Capability:** SystemCapability.Communication.WiFi.Core

**Since:** 21

### WifiSecTypeSae

```cangjie
WifiSecTypeSae
```

**Description:** Simultaneous Authentication of Equals (SAE) encryption type.

**System Capability:** SystemCapability.Communication.WiFi.Core

**Since:** 21

### WifiSecTypeWapiCert

```cangjie
WifiSecTypeWapiCert
```

**Description:** WAPI-Cert encryption type.

**System Capability:** SystemCapability.Communication.WiFi.Core

**Since:** 21

### WifiSecTypeWapiPsk

```cangjie
WifiSecTypeWapiPsk
```

**Description:** WAPI-PSK encryption type.

**System Capability:** SystemCapability.Communication.WiFi.Core

**Since:** 21

### WifiSecTypeWep

```cangjie
WifiSecTypeWep
```

**Description:** Wired Equivalent Privacy (WEP) encryption type. This encryption type is not supported by candidate network configurations.

**System Capability:** SystemCapability.Communication.WiFi.Core

**Since:** 21

### func !=(WifiSecurityType)

```cangjie
public operator func !=(other: WifiSecurityType): Bool
```

**Description:** Determines whether two enum values are unequal.

**System Capability:** SystemCapability.Communication.WiFi.Core

**Since:** 21

**Parameters:**

|Parameter|Type|Mandatory|Default Value|Description|
|:---|:---|:---|:---|:---|
|other|[WifiSecurityType](#enum-wifisecuritytype)|Yes|-|Another enum value.|

**Return Value:**

|Type|Description|
|:----|:----|
|Bool|Returns true if the two enum values are unequal, otherwise returns false.|

### func ==(WifiSecurityType)

```cangjie
public operator func ==(other: WifiSecurityType): Bool
```

**Description:** Determines whether two enum values are equal.

**Parameters:**

|Parameter|Type|Mandatory|Default Value|Description|
|:---|:---|:---|:---|:---|
|other|[WifiSecurityType](#enum-wifisecuritytype)|Yes|-|Another enum value.|

**Return Value:**

|Type|Description|
|:----|:----|
|Bool|Returns true if the two enum values are equal, otherwise returns false.|

### func toString()

```cangjie
public func toString(): String
```

**Description:** Obtains the value of the enum.

**Return Value:**

|Type|Description|
|:----|:----|
|String|The description of the enum.|### func toString()

```cangjie
public func toString(): String
```

**Function:** Gets the value of the enumeration.

**Return Value:**

|Type|Description|
|:----|:----|
|String|The description of the enumeration.|