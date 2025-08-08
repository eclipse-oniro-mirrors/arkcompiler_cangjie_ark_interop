# ohos.bluetooth.baseProfile（蓝牙baseProfile模块）

baseProfile模块提供了基础的Profile类型和相关方法。

## 导入模块

```cangjie
import kit.ConnectivityKit.*
```

## 权限列表

ohos.permission.ACCESS_BLUETOOTH

## 使用说明

API示例代码使用说明：

- 若示例代码首行有“// index.cj”注释，表示该示例可在仓颉模板工程的“index.cj”文件中编译运行。
- 若示例需获取[Context](../AbilityKit/cj-apis-ability.md#class-context)应用上下文，需在仓颉模板工程中的“main_ability.cj”文件中进行配置。

上述示例工程及配置模板详见[仓颉示例代码说明](../../cj-development-intro.md#仓颉示例代码说明)。

## interface BaseProfile

```cangjie
public interface BaseProfile {
    func getConnectedDevices(): Array<String>
    func getConnectionState(deviceId: String): ProfileConnectionState
    func on(`type`: ProfileCallbackType, callback: Callback1Argument<StateChangeParam>): Unit
    func off(`type`: ProfileCallbackType, callback: CallbackObject): Unit
    func off(`type`: ProfileCallbackType): Unit
}
```

**功能：** Profile 基础类型。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 21

### func getConnectedDevices()

```cangjie
func getConnectedDevices(): Array<String>
```

**功能：** 获取已连接设备列表。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Array\<String>|返回当前已连接设备的地址。基于信息安全考虑，此处获取的设备地址为随机MAC地址。配对成功后，该地址不会变更；已配对设备取消配对后重新扫描或蓝牙服务下电时，该随机地址会变更。|

**异常：**

- BusinessException：对应错误码的详细介绍请参见[通用错误码](../../errorcodes/cj-errorcode-universal.md)和[蓝牙服务子系统错误码](../../errorcodes/cj-errorcode-bluetooth_manager.md)。

  |错误码ID|错误信息|
  |:---|:---|
  |201|Permission denied.|
  |801|Capability not supported.|
  |2900001|Service stopped.|
  |2900003|Bluetooth disabled.|
  |2900004|Profile not supported.|
  |2900099|Operation failed.|

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.ConnectivityKit.*
import ohos.hilog.Hilog

try {
    let a2dpSrc = createA2dpSrcProfile()
    let retArray = a2dpSrc.getConnectedDevices()
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

### func getConnectionState(String)

```cangjie
func getConnectionState(deviceId: String): ProfileConnectionState
```

**功能：** 获取设备Profile的连接状态。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 21

**参数：**

|参数名|类型|必填|说明|
|:---|:---|:---|:---|
|deviceId|String|是|远端设备地址。|

**返回值：**

|类型|说明|
|:----|:----|
|[ProfileConnectionState](cj-apis-bluetooth-constant.md#enum-profileconnectionstate)|返回Profile的连接状态。|

**异常：**

- BusinessException：对应错误码的详细介绍请参见[通用错误码](../../errorcodes/cj-errorcode-universal.md)和[蓝牙服务子系统错误码](../../errorcodes/cj-errorcode-bluetooth_manager.md)。

  |错误码ID|错误信息|
  |:---|:---|
  |201|Permission denied.|
  |401|Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified. 2. Incorrect parameter types. 3. Parameter verification failed.|
  |801|Capability not supported.|
  |2900001|Service stopped.|
  |2900003|Bluetooth disabled.|
  |2900004|Profile not supported.|
  |2900099|Operation failed.|

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.ConnectivityKit.*
import ohos.hilog.Hilog

try {
    let a2dpSrc = createA2dpSrcProfile()
    let retArray = a2dpSrc.getConnectionState("XX:XX:XX:XX:XX:XX")
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

### func off(ProfileCallbackType, CallbackObject)

```cangjie
func off(`type`: ProfileCallbackType, callback: CallbackObject): Unit
```

**功能：** 取消所有订阅连接状态变化事件。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 21

**参数：**

|参数名|类型|必填|说明|
|:---|:---|:---|:---|
|\`type`|[ProfileCallbackType](#enum-profilecallbacktype)|是|回调事件类型。|
|callback|[CallbackObject](../BasicServicesKit/cj-apis-base.md#class-callbackobject)|是|回调事件。|

**异常：**

- BusinessException：对应错误码的详细介绍请参见[通用错误码](../../errorcodes/cj-errorcode-universal.md)和[蓝牙服务子系统错误码](../../errorcodes/cj-errorcode-bluetooth_manager.md)。

  |错误码ID|错误信息|
  |:---|:---|
  |201|Permission denied.|
  |401|Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified. 2. Incorrect parameter types. 3. Parameter verification failed.|
  |801|Capability not supported.|

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.ConnectivityKit.*
import ohos.hilog.Hilog

// 此处定义所需要的依赖项等
class StateChangeCallback <: Callback1Argument<StateChangeParam> {
    public func invoke(arg: StateChangeParam): Unit {
        let connectionState = arg.state.toString()
        Hilog.info(0, "Bluetooth", "profile connection state has change to ${connectionState}")
    }
}

let changeCallBack = StateChangeCallback()
let a2dp = createA2dpSrcProfile()
try {
    a2dp.on(ProfileCallbackType.CONNECTION_STATE_CHANGE, changeCallBack)
    a2dp.off(ProfileCallbackType.CONNECTION_STATE_CHANGE, changeCallBack)
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

### func off(ProfileCallbackType)

```cangjie
func off(`type`: ProfileCallbackType): Unit
```

**功能：** 取消所有订阅连接状态变化事件。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 21

**参数：**

|参数名|类型|必填|说明|
|:---|:---|:---|:---|
|\`type`|[ProfileCallbackType](#enum-profilecallbacktype)|是|回调事件类型。|

**异常：**

- BusinessException：对应错误码的详细介绍请参见[通用错误码](../../errorcodes/cj-errorcode-universal.md)和[蓝牙服务子系统错误码](../../errorcodes/cj-errorcode-bluetooth_manager.md)。

  |错误码ID|错误信息|
  |:---|:---|
  |201|Permission denied.|
  |401|Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified. 2. Incorrect parameter types. 3. Parameter verification failed.|
  |801|Capability not supported.|

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.ConnectivityKit.*
import ohos.hilog.Hilog

// 此处定义所需要的依赖项等
class StateChangeCallback <: Callback1Argument<StateChangeParam> {
    public func invoke(arg: StateChangeParam): Unit {
        let connectionState = arg.state.toString()
        Hilog.info(0, "Bluetooth", "profile connection state has change to ${connectionState}")
    }
}

let changeCallBack = StateChangeCallback()
let a2dp = createA2dpSrcProfile()
try {
    a2dp.on(ProfileCallbackType.CONNECTION_STATE_CHANGE, changeCallBack)
    a2dp.off(ProfileCallbackType.CONNECTION_STATE_CHANGE)
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

### func on(ProfileCallbackType, Callback1Argument\<StateChangeParam>)

```cangjie
func on(`type`: ProfileCallbackType, callback: Callback1Argument<StateChangeParam>): Unit
```

**功能：** 订阅连接状态变化事件。使用Callback异步回调。

**需要权限：** ohos.permission.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 21

**参数：**

|参数名|类型|必填|说明|
|:---|:---|:---|:---|
|\`type`|[ProfileCallbackType](#enum-profilecallbacktype)|是|传入`CONNECTIONSTATECHANGE`，表示连接状态变化事件类型。|
|callback|[Callback1Argument](../BasicServicesKit/cj-apis-base.md#class-callback1argument)\<[StateChangeParam](#class-statechangeparam)>|是|表示回调函数的入参。|

**异常：**

- BusinessException：对应错误码的详细介绍请参见[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  |错误码ID|错误信息|
  |:---|:---|
  |201|Permission denied.|
  |401|Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified. 2. Incorrect parameter types. 3. Parameter verification failed.|
  |801|Capability not supported.|

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.ConnectivityKit.*
import ohos.hilog.Hilog

// 此处定义所需要的依赖项等
class StateChangeCallback <: Callback1Argument<StateChangeParam> {
    public func invoke(arg: StateChangeParam): Unit {
        let connectionState = arg.state.toString()
        Hilog.info(0, "Bluetooth", "profile connection state has change to ${connectionState}")
    }
}

let changeCallBack = StateChangeCallback()
let a2dp = createA2dpSrcProfile()
try {
    a2dp.on(ProfileCallbackType.CONNECTION_STATE_CHANGE, changeCallBack)
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

## class StateChangeParam

```cangjie
public class StateChangeParam {}
```

**功能：** 描述profile状态改变参数。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 21

### let cause

```cangjie
public let cause: DisconnectCause
```

**功能：** 表示连接失败的原因。

**类型：** [DisconnectCause](#enum-disconnectcause)

**读写能力：** 只读

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 21

### let deviceId

```cangjie
public let deviceId: String
```

**功能：** 表示蓝牙设备地址。

**类型：** String

**读写能力：** 只读

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 21

### let state

```cangjie
public let state: ProfileConnectionState
```

**功能：** 表示蓝牙设备的profile连接状态。

**类型：** [ProfileConnectionState](cj-apis-bluetooth-constant.md#enum-profileconnectionstate)

**读写能力：** 只读

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 21

## enum DisconnectCause

```cangjie
public enum DisconnectCause <: Equatable<DisconnectCause> & ToString {
    | USER_DISCONNECT
    | CONNECT_FROM_KEYBOARD
    | CONNECT_FROM_MOUSE
    | CONNECT_FROM_CAR
    | TOO_MANY_CONNECTED_DEVICES
    | CONNECT_FAIL_INTERNAL
    | ...
}
```

**功能：** 连接失败原因。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 21

**父类型：**

- Equatable\<DisconnectCause>
- ToString

### CONNECT_FAIL_INTERNAL

```cangjie
CONNECT_FAIL_INTERNAL
```

**功能：** 内部错误。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 21

### CONNECT_FROM_CAR

```cangjie
CONNECT_FROM_CAR
```

**功能：** 应该从车机侧发起连接。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 21

### CONNECT_FROM_KEYBOARD

```cangjie
CONNECT_FROM_KEYBOARD
```

**功能：** 应该从键盘侧发起连接。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 21

### CONNECT_FROM_MOUSE

```cangjie
CONNECT_FROM_MOUSE
```

**功能：** 应该从鼠标侧发起连接。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 21

### TOO_MANY_CONNECTED_DEVICES

```cangjie
TOO_MANY_CONNECTED_DEVICES
```

**功能：** 当前连接数超过上限。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 21

### USER_DISCONNECT

```cangjie
USER_DISCONNECT
```

**功能：** 用户主动断开连接。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 21

### func !=(DisconnectCause)

```cangjie
public operator func !=(other: DisconnectCause): Bool 
```

**功能：** 对连接失败原因进行判不等。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 21

**参数：**

|参数名|类型|必填|说明|
|:---|:---|:---|:---|
|other|[DisconnectCause](#enum-disconnectcause)|是|连接失败原因。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|如果连接失败原因不同，返回true，否则返回false。|

### func ==(DisconnectCause)

```cangjie
public operator func ==(other: DisconnectCause): Bool 
```

**功能：** 对连接失败原因进行判等。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 21

**参数：**

|参数名|类型|必填|说明|
|:---|:---|:---|:---|
|other|[DisconnectCause](#enum-disconnectcause)|是|连接失败原因。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|如果连接失败原因相同，返回true，否则返回false。|

### func toString()

```cangjie
public func toString(): String 
```

**功能：** 返回连接失败原因的字符串表示。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|String|连接失败原因的字符串表示。|

## enum ProfileCallbackType

```cangjie
public enum ProfileCallbackType <: Equatable<ProfileCallbackType> & Hashable & ToString {
    | CONNECTION_STATE_CHANGE
    | ...
}
```

**功能：** bluetooth baseprofile 回调事件。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 21

**父类型：**

- Equatable\<ProfileCallbackType>
- Hashable
- ToString

### CONNECTION_STATE_CHANGE

```cangjie
CONNECTION_STATE_CHANGE
```

**功能：** 表示连接状态变化事件类型。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 21

### func !=(ProfileCallbackType)

```cangjie
public operator func !=(other: ProfileCallbackType): Bool 
```

**功能：** 对bluetooth baseprofile 回调事件进行判不等。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 21

**参数：**

|参数名|类型|必填|说明|
|:---|:---|:---|:---|
|other|[ProfileCallbackType](#enum-profilecallbacktype)|是|bluetooth baseprofile 回调事件。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|如果bluetooth baseprofile 回调事件不同，返回true，否则返回false。|

### func ==(ProfileCallbackType)

```cangjie
public operator func ==(other: ProfileCallbackType): Bool 
```

**功能：** 对bluetooth baseprofile 回调事件进行判等。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 21

**参数：**

|参数名|类型|必填|说明|
|:---|:---|:---|:---|
|other|[ProfileCallbackType](#enum-profilecallbacktype)|是|bluetooth baseprofile 回调事件。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|如果bluetooth baseprofile 回调事件相同，返回true，否则返回false。|

### func hashCode()

```cangjie
public func hashCode(): Int64 
```

**功能：** 获取回调事件的哈希值。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Int64|回调事件的哈希值。|

### func toString()

```cangjie
public func toString(): String 
```

**功能：** 获取回调事件类型的字符串表示。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|String|回调事件类型的字符串表示。|
