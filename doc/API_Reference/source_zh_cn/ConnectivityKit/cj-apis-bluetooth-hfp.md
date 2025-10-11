# ohos.bluetooth.hfp（蓝牙hfp模块）

hfp模块提供了访问蓝牙呼叫接口的方法。

## 导入模块

```cangjie
import kit.ConnectivityKit.*
```

## 权限列表

ohos.permission.ACCESS_BLUETOOTH

## 使用说明

API示例代码使用说明：

- 若示例代码首行有“// index.cj”注释，表示该示例可在仓颉模板工程的“index.cj”文件中编译运行。
- 若示例需获取[Context](../AbilityKit/cj-apis-app-ability-ui_ability.md#class-context)应用上下文，需在仓颉模板工程中的“main_ability.cj”文件中进行配置。

上述示例工程及配置模板详见[仓颉示例代码说明](../../cj-development-intro.md#仓颉示例代码说明)。

## func createHfpAgProfile()

```cangjie
public func createHfpAgProfile(): HandsFreeAudioGatewayProfile
```

**功能：** 创建hfp profile实例。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**返回值：**

|类型|说明|
|:----|:----|
|[HandsFreeAudioGatewayProfile](#class-handsfreeaudiogatewayprofile)|返回该profile的实例。|

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.BusinessException

try {
    let hdfProfile = createHfpAgProfile()
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

## class HandsFreeAudioGatewayProfile

```cangjie
public class HandsFreeAudioGatewayProfile <: BaseProfile {}
```

**功能：** 使用HandsFreeAudioGatewayProfile方法之前需要创建该类的实例进行操作，通过createHfpAgProfile()方法构造此实例。

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**父类型：**

- [BaseProfile](cj-apis-bluetooth-base_profile.md#interface-baseprofile)

### func getConnectedDevices()

```cangjie
public func getConnectedDevices(): Array<String>
```

**功能：** 获取已连接设备列表。

**需要权限：** ohos.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**父类型：**

- [BaseProfile](cj-apis-bluetooth-base_profile.md#interface-baseprofile)

**返回值：**

|类型|说明|
|:----|:----|
|Array\<String>|返回当前已连接设备的地址。基于信息安全考虑，此处获取的设备地址为随机MAC地址。配对成功后，该地址不会变更；已配对设备取消配对后重新扫描或蓝牙服务下电时，该随机地址会变更。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../../errorcodes/cj-errorcode-universal.md)和[蓝牙服务子系统错误码](../../errorcodes/cj-errorcode-bluetooth_manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
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
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.BusinessException

try {
    let hdfProfile = createHfpAgProfile()
    let retArray = hdfProfile.getConnectedDevices()
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

### func getConnectionState(String)

```cangjie
public func getConnectionState(deviceId: String): ProfileConnectionState
```

**功能：** 获取设备profile的连接状态。

**需要权限：** ohos.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|deviceId|String|是|-|远端设备地址。|

**返回值：**

|类型|说明|
|:----|:----|
|[ProfileConnectionState](cj-apis-bluetooth-constant.md#enum-profileconnectionstate)|返回profile的连接状态。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../../errorcodes/cj-errorcode-universal.md)和[蓝牙服务子系统错误码](../../errorcodes/cj-errorcode-bluetooth_manager.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 801 | Capability not supported. |
  | 2900001 | Service stopped. |
  | 2900003 | Bluetooth disabled. |
  | 2900004 | Profile not supported. |
  | 2900099 | Operation failed. |

- IllegalArgumentException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.<br>2. Incorrect parameter types. 3. Parameter verification failed. | 入参错误。 | 修改入参。 |

**示例：**

<!-- compile only -->
<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.BusinessException

try {
    let hdfProfile = createHfpAgProfile()
    let ret = hdfProfile.getConnectionState("XX:XX:XX:XX:XX:XX")  // 请替换您的 deviceId。
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

### func off(ProfileCallbackType, CallbackObject)

```cangjie
public func off(eventType: ProfileCallbackType, callback: CallbackObject): Unit
```

**功能：** 取消订阅连接状态变化事件。

**需要权限：** ohos.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|eventType|[ProfileCallbackType](./cj-apis-bluetooth-base_profile.md#enum-profilecallbacktype)|是|-|回调事件类型。|
|callback|[CallbackObject](../../arkinterop/cj-api-callback_invoke.md#class-callbackobject)|是|-|回调事件。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 801 | Capability not supported. |

- IllegalArgumentException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.<br>2. Incorrect parameter types. 3. Parameter verification failed. | 入参错误。 | 修改入参。 |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.callback_invoke.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

// 此处定义所需要的依赖项等
class StateChangeCallback <: Callback1Argument<StateChangeParam> {
    public func invoke(err: ?BusinessException, arg: StateChangeParam): Unit {
        let connectionState = arg.state.toString()
        Hilog.info(0, "Bluetooth", "profile connection state has change to ${connectionState}")
    }
}

let changeCallBack = StateChangeCallback()
let hdfProfile = createHfpAgProfile()
try {
    hdfProfile.on(ProfileCallbackType.ConnectionStateChange, changeCallBack)
    hdfProfile.off(ProfileCallbackType.ConnectionStateChange)
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

### func off(ProfileCallbackType)

```cangjie
public func off(eventType: ProfileCallbackType): Unit
```

**功能：** 取消订阅连接状态变化事件。

**需要权限：** ohos.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|eventType|[ProfileCallbackType](./cj-apis-bluetooth-base_profile.md#enum-profilecallbacktype)|是|-|回调事件类型。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 801 | Capability not supported. |

- IllegalArgumentException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.<br>2. Incorrect parameter types. 3. Parameter verification failed. | 入参错误。 | 修改入参。 |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.callback_invoke.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

// 此处定义所需要的依赖项等
class StateChangeCallback <: Callback1Argument<StateChangeParam> {
    public func invoke(err: ?BusinessException, arg: StateChangeParam): Unit {
        let connectionState = arg.state.toString()
        Hilog.info(0, "Bluetooth", "profile connection state has change to ${connectionState}")
    }
}

let changeCallBack = StateChangeCallback()
let hdfProfile = createHfpAgProfile()
try {
    hdfProfile.on(ProfileCallbackType.ConnectionStateChange, changeCallBack)
    hdfProfile.off(ProfileCallbackType.ConnectionStateChange)
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```

### func on(ProfileCallbackType, Callback1Argument\<StateChangeParam>)

```cangjie
public func on(eventType: ProfileCallbackType, callback: Callback1Argument<StateChangeParam>): Unit
```

**功能：** 订阅连接状态变化事件。使用Callback异步回调。

**需要权限：** ohos.ACCESS_BLUETOOTH

**系统能力：** SystemCapability.Communication.Bluetooth.Core

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|eventType|[ProfileCallbackType](./cj-apis-bluetooth-base_profile.md#enum-profilecallbacktype)|是|-|填写CONNECTIONSTATECHANGE，表示连接状态变化事件类型。|
|callback|[Callback1Argument](../../arkinterop/cj-api-callback_invoke.md#class-callback1argument)\<[StateChangeParam](cj-apis-bluetooth-base_profile.md#class-statechangeparam)>|是|-|表示回调函数的入参。|

**异常：**

- BusinessException：对应错误码如下表，详见[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | Permission denied. |
  | 801 | Capability not supported. |

- IllegalArgumentException：

  | 错误信息 | 可能原因 | 处理步骤 |
  | :---- | :--- | :--- |
  | Invalid parameter. Possible causes: 1. Mandatory parameters are left unspecified.<br>2. Incorrect parameter types. 3. Parameter verification failed. | 入参错误。 | 修改入参。 |

**示例：**

<!-- compile -->

```cangjie
// index.cj

import ohos.base.*
import ohos.callback_invoke.*
import ohos.business_exception.*
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

// 此处定义所需要的依赖项等
class StateChangeCallback <: Callback1Argument<StateChangeParam> {
    public func invoke(err: ?BusinessException, arg: StateChangeParam): Unit {
        let connectionState = arg.state.toString()
        Hilog.info(0, "Bluetooth", "profile connection state has change to ${connectionState}")
    }
}

let changeCallBack = StateChangeCallback()
let hdfProfile = createHfpAgProfile()
try {
    hdfProfile.on(ProfileCallbackType.ConnectionStateChange, changeCallBack)
} catch (e: BusinessException) {
    Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
}
```
