# ohos.security.huks

向应用提供密钥库能力，包括密钥管理及密钥的密码学操作等功能。

HUKS所管理的密钥可以由应用导入或者由应用调用HUKS接口生成。

## 导入模块

```cangjie
import kit.UniversalKeystoreKit.*
```

## 使用说明

API示例代码使用说明：

- 若示例代码首行有“// index.cj”注释，表示该示例可在仓颉模板工程的“index.cj”文件中编译运行。
- 若示例需获取[Context](../AbilityKit/cj-apis-ability.md#class-context)应用上下文，需在仓颉模板工程中的“main_ability.cj”文件中进行配置。

上述示例工程及配置模板详见[仓颉示例代码说明](../../cj-development-intro.md#仓颉示例代码说明)。

## func abortSession(HuksHandleId, HuksOptions)

```cangjie

public func abortSession(handle: HuksHandleId, options: HuksOptions): Unit
```

**功能：** abortSession操作密钥接口。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|handle|[HuksHandleId](#class-hukshandleid)|是|-|abortSession操作的handle。|
|options|[HuksOptions](#class-huksoptions)|是|-|abortSession操作的参数集合。|

**异常：**

- BusinessException：对应错误码如下表，详见[HUKS错误码](../../errorcodes/cj-errorcode-huks.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | argument is invalid
 |
  | 801 | api is not supported
 |
  | 12000004 | operating file failed
 |
  | 12000005 | IPC communication failed
 |
  | 12000006 | error occured in crypto engine
 |
  | 12000012 | external error
 |
  | 12000014 | memory is insufficient
 |

## func anonAttestKeyItem(String, HuksOptions)

```cangjie

public func anonAttestKeyItem(keyAlias: String, options: HuksOptions): Array<String>
```

**功能：** 获取匿名化密钥证书。该操作需要联网进行，且耗时较长。

**系统能力：** SystemCapability.Security.Huks.Extension

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|keyAlias|String|是|-|密钥别名，存放待获取证书密钥的别名。|
|options|[HuksOptions](#class-huksoptions)|是|-|用于获取证书时指定所需参数与数据。|

**返回值：**

|类型|说明|
|:----|:----|
|Array\<String>|返回密钥证书链。|

**异常：**

- BusinessException：对应错误码如下表，详见[HUKS错误码](../../errorcodes/cj-errorcode-huks.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | check permission failed
 |
  | 401 | argument is invalid
 |
  | 801 | api is not supported
 |
  | 12000001 | algorithm mode is not supported
 |
  | 12000002 | algorithm param is missing
 |
  | 12000003 | algorithm param is invalid
 |
  | 12000004 | operating file failed
 |
  | 12000005 | IPC communication failed
 |
  | 12000006 | error occured in crypto engine
 |
  | 12000011 | queried entity does not exist
 |
  | 12000012 | external error
 |
  | 12000014 | memory is insufficient
 |

## func attestKeyItem(String, HuksOptions)

```cangjie

public func attestKeyItem(keyAlias: String, options: HuksOptions): Array<String>
```

**功能：** 获取密钥证书。

**需要权限：** ohos.permission.ATTEST_KEY

**系统能力：** SystemCapability.Security.Huks.Extension

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|keyAlias|String|是|-|密钥别名，存放待获取证书的密钥别名。|
|options|[HuksOptions](#class-huksoptions)|是|-|用于获取证书时指定所需参数与数据。|

**返回值：**

|类型|说明|
|:----|:----|
|Array\<String>|返回密钥证书链。|

**异常：**

- BusinessException：对应错误码如下表，详见[HUKS错误码](../../errorcodes/cj-errorcode-huks.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 201 | check permission failed
 |
  | 401 | argument is invalid
 |
  | 801 | api is not supported
 |
  | 12000001 | algorithm mode is not supported
 |
  | 12000002 | algorithm param is missing
 |
  | 12000003 | algorithm param is invalid
 |
  | 12000004 | operating file failed
 |
  | 12000005 | IPC communication failed
 |
  | 12000006 | error occured in crypto engine
 |
  | 12000011 | queried entity does not exist
 |
  | 12000012 | external error
 |
  | 12000014 | memory is insufficient
@permission ohos.permission.ATTEST_KEY
 |

## func deleteKeyItem(String, HuksOptions)

```cangjie

public func deleteKeyItem(keyAlias: String, options: HuksOptions): Unit
```

**功能：** 删除密钥。

**系统能力：** SystemCapability.Security.Huks.Extension

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|keyAlias|String|是|-|密钥别名，应为生成key时传入的别名。|
|options|[HuksOptions](#class-huksoptions)|是|-|用于删除时指定密钥的属性Tag，比如删除的密钥范围（全量/单个），当删除单个时，Tag字段可传空。|

**异常：**

- BusinessException：对应错误码如下表，详见[HUKS错误码](../../errorcodes/cj-errorcode-huks.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | argument is invalid
 |
  | 801 | api is not supported
 |
  | 12000004 | operating file failed
 |
  | 12000005 | IPC communication failed
 |
  | 12000011 | queried entity does not exist
 |
  | 12000012 | external error
 |
  | 12000014 | memory is insufficient
 |

## func exportKeyItem(String, HuksOptions)

```cangjie

public func exportKeyItem(keyAlias: String, _: HuksOptions): Bytes
```

**功能：** 导出密钥。

**系统能力：** SystemCapability.Security.Huks.Extension

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|keyAlias|String|是|-|密钥别名，应与所用密钥生成时使用的别名相同。|
|_|[HuksOptions](#class-huksoptions)|是|-|空对象（此处传空即可）。|

**返回值：**

|类型|说明|
|:----|:----|
|[Bytes](../../../../User_Manual/source_zh_cn/basic_data_type/integer.md#无符号整数类型)|<返回从密钥中导出的公钥。|

**异常：**

- BusinessException：对应错误码如下表，详见[HUKS错误码](../../errorcodes/cj-errorcode-huks.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | argument is invalid
 |
  | 801 | api is not supported
 |
  | 12000001 | algorithm mode is not supported
 |
  | 12000002 | algorithm param is missing
 |
  | 12000003 | algorithm param is invalid
 |
  | 12000004 | operating file failed
 |
  | 12000005 | IPC communication failed
 |
  | 12000006 | error occured in crypto engine
 |
  | 12000011 | queried entity does not exist
 |
  | 12000012 | external error
 |
  | 12000014 | memory is insufficient
 |

## func finishSession(HuksHandleId, HuksOptions, Bytes)

```cangjie

public func finishSession(handle: HuksHandleId, options: HuksOptions, token!: Bytes): Option<Bytes>
```

**功能：** finishSession操作密钥接口。[security_huks.initSession](#func-initsessionstring-huksoptions)、[security_huks.updateSession](#func-updatesessionhukshandle-huksoptions-arrayuint8)、[security_huks.finishSession](#func-finishsessionhukshandle-huksoptions-arrayuint8)为三段式接口，需要一起使用。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|handle|[HuksHandleId](#class-hukshandleid)|是|-|finishSession操作的handle。|
|options|[HuksOptions](#class-huksoptions)|是|-|finishSession的参数集合。|
|token|[Bytes](#class-huksoptions)|是|-|表示USER IAM服务的AuthToken的值。|

**返回值：**

|类型|说明|
|:----|:----|
|[Option](please add link)\<[Bytes](../../../../User_Manual/source_zh_cn/basic_data_type/integer.md#无符号整数类型)>|表示USER IAM服务的AuthToken的值。|

**异常：**

- BusinessException：对应错误码如下表，详见[HUKS错误码](../../errorcodes/cj-errorcode-huks.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes:
1. Mandatory parameters are left unspecified.
2. Incorrect parameter types.
3. Parameter verification failed.
 |
  | 801 | api is not supported
 |
  | 12000001 | algorithm mode is not supported
 |
  | 12000002 | algorithm param is missing
 |
  | 12000003 | algorithm param is invalid
 |
  | 12000004 | operating file failed
 |
  | 12000005 | IPC communication failed
 |
  | 12000006 | error occurred in crypto engine
 |
  | 12000007 | this credential is already invalidated permanently
 |
  | 12000008 | verify auth token failed
 |
  | 12000009 | auth token is already timeout
 |
  | 12000011 | queried entity does not exist
 |
  | 12000012 | Device environment or input parameter abnormal
 |
  | 12000014 | memory is insufficient
 |

## func generateKeyItem(String, HuksOptions)

```cangjie

public func generateKeyItem(keyAlias: String, options: HuksOptions): Unit
```

**功能：** 生成密钥。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|keyAlias|String|是|-|密钥别名。|
|options|[HuksOptions](#class-huksoptions)|是|-|用于存放生成key所需Tag。其中密钥使用的算法、密钥用途、密钥长度为必选参数。|

**异常：**

- BusinessException：对应错误码如下表，详见[HUKS错误码](../../errorcodes/cj-errorcode-huks.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | argument is invalid
 |
  | 801 | api is not supported
 |
  | 12000001 | algorithm mode is not supported
 |
  | 12000002 | algorithm param is missing
 |
  | 12000003 | algorithm param is invalid
 |
  | 12000004 | operating file failed
 |
  | 12000005 | IPC communication failed
 |
  | 12000006 | error occured in crypto engine
 |
  | 12000012 | external error
 |
  | 12000013 | queried credential does not exist
 |
  | 12000014 | memory is insufficient
 |
  | 12000015 | call service failed
 |

## func getKeyItemProperties(String, HuksOptions)

```cangjie

public func getKeyItemProperties(keyAlias: String, _: HuksOptions): Array<HuksParam>
```

**功能：** 获取密钥属性。

**系统能力：** SystemCapability.Security.Huks.Extension

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|keyAlias|String|是|-|密钥别名。|
|_|[HuksOptions](#class-huksoptions)|是|-|空对象（此处传空即可）。|

**返回值：**

|类型|说明|
|:----|:----|
|Array\<[HuksParam](#class-huksparam)>|返回密钥属性。|

**异常：**

- BusinessException：对应错误码如下表，详见[HUKS错误码](../../errorcodes/cj-errorcode-huks.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | argument is invalid
 |
  | 801 | api is not supported
 |
  | 12000001 | algorithm mode is not supported
 |
  | 12000002 | algorithm param is missing
 |
  | 12000003 | algorithm param is invalid
 |
  | 12000004 | operating file failed
 |
  | 12000005 | IPC communication failed
 |
  | 12000006 | error occured in crypto engine
 |
  | 12000011 | queried entity does not exist
 |
  | 12000012 | external error
 |
  | 12000014 | memory is insufficient
 |

## func getSdkVersion()

```cangjie

public func getSdkVersion(): String
```

**功能：** 获取当前系统sdk版本。

**系统能力：** SystemCapability.Security.Huks.Extension

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|String|返回sdk版本。|

## func importKeyItem(String, HuksOptions)

```cangjie

public func importKeyItem(keyAlias: String, options: HuksOptions): Unit
```

**功能：** 导入明文密钥。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|keyAlias|String|是|-|密钥别名。|
|options|[HuksOptions](#class-huksoptions)|是|-|用于导入时所需Tag和需要导入的密钥。其中密钥使用的算法、密钥用途、密钥长度为必选参数。|

**异常：**

- BusinessException：对应错误码如下表，详见[HUKS错误码](../../errorcodes/cj-errorcode-huks.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | argument is invalid
 |
  | 801 | api is not supported
 |
  | 12000001 | algorithm mode is not supported
 |
  | 12000002 | algorithm param is missing
 |
  | 12000003 | algorithm param is invalid
 |
  | 12000004 | operating file failed
 |
  | 12000005 | IPC communication failed
 |
  | 12000006 | error occured in crypto engine
 |
  | 12000011 | queried entity does not exist
 |
  | 12000012 | external error
 |
  | 12000013 | queried credential does not exist
 |
  | 12000014 | memory is insufficient
 |
  | 12000015 | call service failed
 |

## func importWrappedKeyItem(String, String, HuksOptions)

```cangjie

public func importWrappedKeyItem(keyAlias: String, wrappingKeyAlias: String, options: HuksOptions): Unit
```

**功能：** 导入加密密钥。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|keyAlias|String|是|-|密钥别名，存放待导入密钥的别名。|
|wrappingKeyAlias|String|是|-|密钥别名，对应密钥用于解密加密的密钥数据。|
|options|[HuksOptions](#class-huksoptions)|是|-|用于导入时所需Tag和需要导入的加密的密钥数据。其中密钥使用的算法、密钥用途、密钥长度为必选参数。|

**异常：**

- BusinessException：对应错误码如下表，详见[HUKS错误码](../../errorcodes/cj-errorcode-huks.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | argument is invalid
 |
  | 801 | api is not supported
 |
  | 12000001 | algorithm mode is not supported
 |
  | 12000002 | algorithm param is missing
 |
  | 12000003 | algorithm param is invalid
 |
  | 12000004 | operating file failed
 |
  | 12000005 | IPC communication failed
 |
  | 12000006 | error occured in crypto engine
 |
  | 12000011 | queried entity does not exist
 |
  | 12000012 | external error
 |
  | 12000013 | queried credential does not exist
 |
  | 12000014 | memory is insufficient
 |
  | 12000015 | call service failed
 |

## func initSession(String, HuksOptions)

```cangjie

public func initSession(keyAlias: String, options: HuksOptions): HuksSessionHandle
```

**功能：** initSession操作密钥接口。[security_huks.initSession](#func-initsessionstring-huksoptions)、[security_huks.updateSession](#func-updatesessionhukshandle-huksoptions)、[security_huks.finishSession](#func-finishsessionhukshandle-huksoptions)为三段式接口，需要一起使用。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|keyAlias|String|是|-|initSession操作密钥的别名。|
|options|[HuksOptions](#class-huksoptions)|是|-|initSession操作的参数集合。|

**返回值：**

|类型|说明|
|:----|:----|
|[HuksSessionHandle](#class-hukssessionhandle)|返回密钥huks Handle。|

**异常：**

- BusinessException：对应错误码如下表，详见[HUKS错误码](../../errorcodes/cj-errorcode-huks.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | argument is invalid
 |
  | 801 | api is not supported
 |
  | 12000001 | algorithm mode is not supported
 |
  | 12000002 | algorithm param is missing
 |
  | 12000003 | algorithm param is invalid
 |
  | 12000004 | operating file failed
 |
  | 12000005 | IPC communication failed
 |
  | 12000006 | error occured in crypto engine
 |
  | 12000010 | the number of sessions has reached limit
 |
  | 12000011 | queried entity does not exist
 |
  | 12000012 | external error
 |
  | 12000014 | memory is insufficient
 |

## func isKeyItemExist(String, HuksOptions)

```cangjie

public func isKeyItemExist(keyAlias: String, options: HuksOptions): Bool
```

**功能：** 判断密钥是否存在。

**系统能力：** SystemCapability.Security.Huks.Extension

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|keyAlias|String|是|-|待查找的密钥的别名。|
|options|[HuksOptions](#class-huksoptions)|是|-|用于查询时指定密钥的属性Tag，比如查询的密钥范围（全量/单个），当查询单个时，Tag字段可传空。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|表示密钥是否存在。|

**异常：**

- BusinessException：对应错误码如下表，详见[HUKS错误码](../../errorcodes/cj-errorcode-huks.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | argument is invalid
 |
  | 801 | api is not supported
 |
  | 12000002 | algorithm param is missing
 |
  | 12000003 | algorithm param is invalid
 |
  | 12000004 | operating file failed
 |
  | 12000005 | IPC communication failed
 |
  | 12000006 | error occured in crypto engine
 |
  | 12000012 | external error
 |
  | 12000014 | memory is insufficient
 |

## func updateSession(HuksHandleId, HuksOptions, Bytes)

```cangjie

public func updateSession(handle: HuksHandleId, options: HuksOptions, token!: Bytes): Option<Bytes>
```

**功能：** updateSession操作密钥接口。[security_huks.initSession](#func-initsessionstring-huksoptions)、[security_huks.updateSession](#func-updatesessionhukshandle-huksoptions-arrayuint8)、[security_huks.finishSession](#func-finishsessionhukshandle-huksoptions-arrayuint8)为三段式接口，需要一起使用。

**系统能力：** SystemCapability.Security.Huks.Extension

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|handle|[HuksHandleId](#class-hukshandleid)|是|-|updateSession操作的handle。|
|options|[HuksOptions](#class-huksoptions)|是|-|updateSession的参数集合。|
|token|[Bytes](../../../../User_Manual/source_zh_cn/basic_data_type/integer.md#无符号整数类型)|是|-|表示USER IAM服务的AuthToken的值。|

**返回值：**

|类型|说明|
|:----|:----|
|[Bytes](../../../../User_Manual/source_zh_cn/basic_data_type/integer.md#无符号整数类型)|输出密钥更新结果。|

**异常：**

- BusinessException：对应错误码如下表，详见[HUKS错误码](../../errorcodes/cj-errorcode-huks.md)和[通用错误码](../../errorcodes/cj-errorcode-universal.md)。

  | 错误码ID | 错误信息 |
  | :---- | :--- |
  | 401 | Parameter error. Possible causes:
1. Mandatory parameters are left unspecified.
2. Incorrect parameter types.
3. Parameter verification failed.
 |
  | 801 | api is not supported
 |
  | 12000001 | algorithm mode is not supported
 |
  | 12000002 | algorithm param is missing
 |
  | 12000003 | algorithm param is invalid
 |
  | 12000004 | operating file failed
 |
  | 12000005 | IPC communication failed
 |
  | 12000006 | error occurred in crypto engine
 |
  | 12000007 | this credential is already invalidated permanently
 |
  | 12000008 | verify auth token failed
 |
  | 12000009 | auth token is already timeout
 |
  | 12000011 | queried entity does not exist
 |
  | 12000012 | Device environment or input parameter abnormal
 |
  | 12000014 | memory is insufficient
 |

## class HuksAuthAccessType

```cangjie
public class HuksAuthAccessType {
    public static const HUKS_AUTH_ACCESS_INVALID_CLEAR_PASSWORD: HuksParamValue = HuksParamValue.Uint32Value(1 << 0)
    public static const HUKS_AUTH_ACCESS_INVALID_NEW_BIO_ENROLL: HuksParamValue = HuksParamValue.Uint32Value(1 << 1)
}
```

**功能：** 表示安全访问控制类型。

**系统能力：** SystemCapability.Security.Huks.Extension

**起始版本：** 21

### static const HUKS_AUTH_ACCESS_INVALID_CLEAR_PASSWORD

```cangjie
public static const HUKS_AUTH_ACCESS_INVALID_CLEAR_PASSWORD: HuksParamValue = HuksParamValue.Uint32Value(1 << 0)
```

**功能：** 表示安全访问控制类型为该密钥总是有效。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Extension

**起始版本：** 21

### static const HUKS_AUTH_ACCESS_INVALID_NEW_BIO_ENROLL

```cangjie
public static const HUKS_AUTH_ACCESS_INVALID_NEW_BIO_ENROLL: HuksParamValue = HuksParamValue.Uint32Value(1 << 1)
```

**功能：** 表示安全访问控制类型为清除密码后密钥无效。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Extension

**起始版本：** 21

## class HuksAuthStorageLevel

```cangjie
public class HuksAuthStorageLevel {
    public static const HUKS_AUTH_STORAGE_LEVEL_DE: HuksParamValue = HuksParamValue.Uint32Value(0)
    public static const HUKS_AUTH_STORAGE_LEVEL_CE: HuksParamValue = HuksParamValue.Uint32Value(1)
    public static const HUKS_AUTH_STORAGE_LEVEL_ECE: HuksParamValue = HuksParamValue.Uint32Value(2)
}
```

**功能：** 表示生成或导入密钥时，指定该密钥的存储安全等级。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_AUTH_STORAGE_LEVEL_CE

```cangjie
public static const HUKS_AUTH_STORAGE_LEVEL_CE: HuksParamValue = HuksParamValue.Uint32Value(1)
```

**功能：** 表示密钥仅在首次解锁后可访问。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_AUTH_STORAGE_LEVEL_DE

```cangjie
public static const HUKS_AUTH_STORAGE_LEVEL_DE: HuksParamValue = HuksParamValue.Uint32Value(0)
```

**功能：** 表示密钥仅在开机后可访问。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_AUTH_STORAGE_LEVEL_ECE

```cangjie
public static const HUKS_AUTH_STORAGE_LEVEL_ECE: HuksParamValue = HuksParamValue.Uint32Value(2)
```

**功能：** 表示密钥仅在解锁状态时可访问。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

## class HuksChallengePosition

```cangjie
public class HuksChallengePosition {
    public static const HUKS_CHALLENGE_POS_0: HuksParamValue = HuksParamValue.Uint32Value(0)
    public static const HUKS_CHALLENGE_POS_1: HuksParamValue = HuksParamValue.Uint32Value(1)
    public static const HUKS_CHALLENGE_POS_2: HuksParamValue = HuksParamValue.Uint32Value(2)
    public static const HUKS_CHALLENGE_POS_3: HuksParamValue = HuksParamValue.Uint32Value(3)
}
```

**功能：** 表示challenge类型为用户自定义类型时，生成的challenge有效长度仅为8字节连续的数据，且仅支持4种位置 。

**系统能力：** SystemCapability.Security.Huks.Extension

**起始版本：** 21

### static const HUKS_CHALLENGE_POS_0

```cangjie
public static const HUKS_CHALLENGE_POS_0: HuksParamValue = HuksParamValue.Uint32Value(0)
```

**功能：** 表示0~7字节为当前密钥的有效challenge。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Extension

**起始版本：** 21

### static const HUKS_CHALLENGE_POS_1

```cangjie
public static const HUKS_CHALLENGE_POS_1: HuksParamValue = HuksParamValue.Uint32Value(1)
```

**功能：** 表示8~15字节为当前密钥的有效challenge。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Extension

**起始版本：** 21

### static const HUKS_CHALLENGE_POS_2

```cangjie
public static const HUKS_CHALLENGE_POS_2: HuksParamValue = HuksParamValue.Uint32Value(2)
```

**功能：** 表示16~23字节为当前密钥的有效challenge。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Extension

**起始版本：** 21

### static const HUKS_CHALLENGE_POS_3

```cangjie
public static const HUKS_CHALLENGE_POS_3: HuksParamValue = HuksParamValue.Uint32Value(3)
```

**功能：** 表示24~31字节为当前密钥的有效challenge。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Extension

**起始版本：** 21

## class HuksChallengeType

```cangjie
public class HuksChallengeType {
    public static const HUKS_CHALLENGE_TYPE_NORMAL: HuksParamValue = HuksParamValue.Uint32Value(0)
    public static const HUKS_CHALLENGE_TYPE_CUSTOM: HuksParamValue = HuksParamValue.Uint32Value(1)
    public static const HUKS_CHALLENGE_TYPE_NONE: HuksParamValue = HuksParamValue.Uint32Value(2)
}
```

**功能：** 表示密钥使用时生成challenge的类型。

**系统能力：** SystemCapability.Security.Huks.Extension

**起始版本：** 21

### static const HUKS_CHALLENGE_TYPE_CUSTOM

```cangjie
public static const HUKS_CHALLENGE_TYPE_CUSTOM: HuksParamValue = HuksParamValue.Uint32Value(1)
```

**功能：** 表示challenge为用户自定义类型。支持使用多个密钥仅一次认证。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Extension

**起始版本：** 21

### static const HUKS_CHALLENGE_TYPE_NONE

```cangjie
public static const HUKS_CHALLENGE_TYPE_NONE: HuksParamValue = HuksParamValue.Uint32Value(2)
```

**功能：** 表示免challenge类型。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Extension

**起始版本：** 21

### static const HUKS_CHALLENGE_TYPE_NORMAL

```cangjie
public static const HUKS_CHALLENGE_TYPE_NORMAL: HuksParamValue = HuksParamValue.Uint32Value(0)
```

**功能：** 表示challenge为普通类型，默认32字节。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Extension

**起始版本：** 21

## class HuksCipherMode

```cangjie
public class HuksCipherMode {
    public static const HUKS_MODE_ECB: HuksParamValue = HuksParamValue.Uint32Value(1)
    public static const HUKS_MODE_CBC: HuksParamValue = HuksParamValue.Uint32Value(2)
    public static const HUKS_MODE_CTR: HuksParamValue = HuksParamValue.Uint32Value(3)
    public static const HUKS_MODE_OFB: HuksParamValue = HuksParamValue.Uint32Value(4)
    public static const HUKS_MODE_CCM: HuksParamValue = HuksParamValue.Uint32Value(31)
    public static const HUKS_MODE_GCM: HuksParamValue = HuksParamValue.Uint32Value(32)
}
```

**功能：** 表示加密模式。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_MODE_CBC

```cangjie
public static const HUKS_MODE_CBC: HuksParamValue = HuksParamValue.Uint32Value(2)
```

**功能：** 表示使用CBC加密模式。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_MODE_CCM

```cangjie
public static const HUKS_MODE_CCM: HuksParamValue = HuksParamValue.Uint32Value(31)
```

**功能：** 表示使用CCM加密模式。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_MODE_CTR

```cangjie
public static const HUKS_MODE_CTR: HuksParamValue = HuksParamValue.Uint32Value(3)
```

**功能：** 表示使用CTR加密模式。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_MODE_ECB

```cangjie
public static const HUKS_MODE_ECB: HuksParamValue = HuksParamValue.Uint32Value(1)
```

**功能：** 表示使用ECB加密模式。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_MODE_GCM

```cangjie
public static const HUKS_MODE_GCM: HuksParamValue = HuksParamValue.Uint32Value(32)
```

**功能：** 表示使用GCM加密模式。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_MODE_OFB

```cangjie
public static const HUKS_MODE_OFB: HuksParamValue = HuksParamValue.Uint32Value(4)
```

**功能：** 表示使用OFB加密模式。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

## class HuksHandleId

```cangjie
public class HuksHandleId {}
```

**功能：** <font color="red" face="bold">please add description</font>

**系统能力：** SystemCapability.Security.Huks.Extension

**起始版本：** 21

## class HuksImportKeyType

```cangjie
public class HuksImportKeyType {
    public static const HUKS_KEY_TYPE_PUBLIC_KEY: HuksParamValue = HuksParamValue.Uint32Value(0)
    public static const HUKS_KEY_TYPE_PRIVATE_KEY: HuksParamValue = HuksParamValue.Uint32Value(1)
    public static const HUKS_KEY_TYPE_KEY_PAIR: HuksParamValue = HuksParamValue.Uint32Value(2)
}
```

**功能：** 表示导入密钥的密钥类型，默认为导入公钥，导入对称密钥时不需要该字段。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_KEY_TYPE_KEY_PAIR

```cangjie
public static const HUKS_KEY_TYPE_KEY_PAIR: HuksParamValue = HuksParamValue.Uint32Value(2)
```

**功能：** 表示导入的密钥类型为公私钥对。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_KEY_TYPE_PRIVATE_KEY

```cangjie
public static const HUKS_KEY_TYPE_PRIVATE_KEY: HuksParamValue = HuksParamValue.Uint32Value(1)
```

**功能：** 表示导入的密钥类型为私钥。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_KEY_TYPE_PUBLIC_KEY

```cangjie
public static const HUKS_KEY_TYPE_PUBLIC_KEY: HuksParamValue = HuksParamValue.Uint32Value(0)
```

**功能：** 表示导入的密钥类型为公钥。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

## class HuksKeyAlg

```cangjie
public class HuksKeyAlg {
    public static const HUKS_ALG_RSA: HuksParamValue = HuksParamValue.Uint32Value(1)
    public static const HUKS_ALG_ECC: HuksParamValue = HuksParamValue.Uint32Value(2)
    public static const HUKS_ALG_DSA: HuksParamValue = HuksParamValue.Uint32Value(3)
    public static const HUKS_ALG_AES: HuksParamValue = HuksParamValue.Uint32Value(20)
    public static const HUKS_ALG_HMAC: HuksParamValue = HuksParamValue.Uint32Value(50)
    public static const HUKS_ALG_HKDF: HuksParamValue = HuksParamValue.Uint32Value(51)
    public static const HUKS_ALG_PBKDF2: HuksParamValue = HuksParamValue.Uint32Value(52)
    public static const HUKS_ALG_ECDH: HuksParamValue = HuksParamValue.Uint32Value(100)
    public static const HUKS_ALG_X25519: HuksParamValue = HuksParamValue.Uint32Value(101)
    public static const HUKS_ALG_ED25519: HuksParamValue = HuksParamValue.Uint32Value(102)
    public static const HUKS_ALG_DH: HuksParamValue = HuksParamValue.Uint32Value(103)
    public static const HUKS_ALG_SM2: HuksParamValue = HuksParamValue.Uint32Value(150)
    public static const HUKS_ALG_SM3: HuksParamValue = HuksParamValue.Uint32Value(151)
    public static const HUKS_ALG_SM4: HuksParamValue = HuksParamValue.Uint32Value(152)
}
```

**功能：** 表示密钥使用的算法。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_ALG_AES

```cangjie
public static const HUKS_ALG_AES: HuksParamValue = HuksParamValue.Uint32Value(20)
```

**功能：** 表示使用AES算法。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_ALG_DH

```cangjie
public static const HUKS_ALG_DH: HuksParamValue = HuksParamValue.Uint32Value(103)
```

**功能：** 表示使用DH算法。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_ALG_DSA

```cangjie
public static const HUKS_ALG_DSA: HuksParamValue = HuksParamValue.Uint32Value(3)
```

**功能：** 表示使用DSA算法。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_ALG_ECC

```cangjie
public static const HUKS_ALG_ECC: HuksParamValue = HuksParamValue.Uint32Value(2)
```

**功能：** 表示使用ECC算法。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_ALG_ECDH

```cangjie
public static const HUKS_ALG_ECDH: HuksParamValue = HuksParamValue.Uint32Value(100)
```

**功能：** 表示使用ECDH算法。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_ALG_ED25519

```cangjie
public static const HUKS_ALG_ED25519: HuksParamValue = HuksParamValue.Uint32Value(102)
```

**功能：** 表示使用ED25519算法。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_ALG_HKDF

```cangjie
public static const HUKS_ALG_HKDF: HuksParamValue = HuksParamValue.Uint32Value(51)
```

**功能：** 表示使用HKDF算法。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_ALG_HMAC

```cangjie
public static const HUKS_ALG_HMAC: HuksParamValue = HuksParamValue.Uint32Value(50)
```

**功能：** 表示使用HMAC算法。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_ALG_PBKDF2

```cangjie
public static const HUKS_ALG_PBKDF2: HuksParamValue = HuksParamValue.Uint32Value(52)
```

**功能：** 表示使用PBKDF2算法。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_ALG_RSA

```cangjie
public static const HUKS_ALG_RSA: HuksParamValue = HuksParamValue.Uint32Value(1)
```

**功能：** 表示使用RSA算法。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_ALG_SM2

```cangjie
public static const HUKS_ALG_SM2: HuksParamValue = HuksParamValue.Uint32Value(150)
```

**功能：** 表示使用SM2算法。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_ALG_SM3

```cangjie
public static const HUKS_ALG_SM3: HuksParamValue = HuksParamValue.Uint32Value(151)
```

**功能：** 表示使用SM3算法。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_ALG_SM4

```cangjie
public static const HUKS_ALG_SM4: HuksParamValue = HuksParamValue.Uint32Value(152)
```

**功能：** 表示使用SM4算法。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_ALG_X25519

```cangjie
public static const HUKS_ALG_X25519: HuksParamValue = HuksParamValue.Uint32Value(101)
```

**功能：** 表示使用X25519算法。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

## class HuksKeyDigest

```cangjie
public class HuksKeyDigest {
    public static const HUKS_DIGEST_NONE: HuksParamValue = HuksParamValue.Uint32Value(0)
    public static const HUKS_DIGEST_MD5: HuksParamValue = HuksParamValue.Uint32Value(1)
    public static const HUKS_DIGEST_SM3: HuksParamValue = HuksParamValue.Uint32Value(2)
    public static const HUKS_DIGEST_SHA1: HuksParamValue = HuksParamValue.Uint32Value(10)
    public static const HUKS_DIGEST_SHA224: HuksParamValue = HuksParamValue.Uint32Value(11)
    public static const HUKS_DIGEST_SHA256: HuksParamValue = HuksParamValue.Uint32Value(12)
    public static const HUKS_DIGEST_SHA384: HuksParamValue = HuksParamValue.Uint32Value(13)
    public static const HUKS_DIGEST_SHA512: HuksParamValue = HuksParamValue.Uint32Value(14)
}
```

**功能：** 表示摘要算法。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_DIGEST_MD5

```cangjie
public static const HUKS_DIGEST_MD5: HuksParamValue = HuksParamValue.Uint32Value(1)
```

**功能：** 表示MD5摘要算法。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_DIGEST_NONE

```cangjie
public static const HUKS_DIGEST_NONE: HuksParamValue = HuksParamValue.Uint32Value(0)
```

**功能：** 表示无摘要算法。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_DIGEST_SHA1

```cangjie
public static const HUKS_DIGEST_SHA1: HuksParamValue = HuksParamValue.Uint32Value(10)
```

**功能：** 表示SHA1摘要算法。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_DIGEST_SHA224

```cangjie
public static const HUKS_DIGEST_SHA224: HuksParamValue = HuksParamValue.Uint32Value(11)
```

**功能：** 表示SHA224摘要算法。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_DIGEST_SHA256

```cangjie
public static const HUKS_DIGEST_SHA256: HuksParamValue = HuksParamValue.Uint32Value(12)
```

**功能：** 表示SHA256摘要算法。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_DIGEST_SHA384

```cangjie
public static const HUKS_DIGEST_SHA384: HuksParamValue = HuksParamValue.Uint32Value(13)
```

**功能：** 表示SHA384摘要算法。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_DIGEST_SHA512

```cangjie
public static const HUKS_DIGEST_SHA512: HuksParamValue = HuksParamValue.Uint32Value(14)
```

**功能：** 表示SHA512摘要算法。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_DIGEST_SM3

```cangjie
public static const HUKS_DIGEST_SM3: HuksParamValue = HuksParamValue.Uint32Value(2)
```

**功能：** 表示SM3摘要算法。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

## class HuksKeyFlag

```cangjie
public class HuksKeyFlag {
    public static const HUKS_KEY_FLAG_IMPORT_KEY: HuksParamValue = HuksParamValue.Uint32Value(1)
    public static const HUKS_KEY_FLAG_GENERATE_KEY: HuksParamValue = HuksParamValue.Uint32Value(2)
    public static const HUKS_KEY_FLAG_AGREE_KEY: HuksParamValue = HuksParamValue.Uint32Value(3)
    public static const HUKS_KEY_FLAG_DERIVE_KEY: HuksParamValue = HuksParamValue.Uint32Value(4)
}
```

**功能：** 表示密钥的产生方式。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_KEY_FLAG_AGREE_KEY

```cangjie
public static const HUKS_KEY_FLAG_AGREE_KEY: HuksParamValue = HuksParamValue.Uint32Value(3)
```

**功能：** 表示通过生成密钥协商接口生成的密钥。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_KEY_FLAG_DERIVE_KEY

```cangjie
public static const HUKS_KEY_FLAG_DERIVE_KEY: HuksParamValue = HuksParamValue.Uint32Value(4)
```

**功能：** 表示通过生成密钥派生接口生成的密钥。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_KEY_FLAG_GENERATE_KEY

```cangjie
public static const HUKS_KEY_FLAG_GENERATE_KEY: HuksParamValue = HuksParamValue.Uint32Value(2)
```

**功能：** 表示通过生成密钥接口生成的密钥。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_KEY_FLAG_IMPORT_KEY

```cangjie
public static const HUKS_KEY_FLAG_IMPORT_KEY: HuksParamValue = HuksParamValue.Uint32Value(1)
```

**功能：** 表示通过导入公钥接口导入的密钥。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

## class HuksKeyGenerateType

```cangjie
public class HuksKeyGenerateType {
    public static const HUKS_KEY_GENERATE_TYPE_DEFAULT: HuksParamValue = HuksParamValue.Uint32Value(0)
    public static const HUKS_KEY_GENERATE_TYPE_DERIVE: HuksParamValue = HuksParamValue.Uint32Value(1)
    public static const HUKS_KEY_GENERATE_TYPE_AGREE: HuksParamValue = HuksParamValue.Uint32Value(2)
}
```

**功能：** 表示生成密钥的类型。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_KEY_GENERATE_TYPE_AGREE

```cangjie
public static const HUKS_KEY_GENERATE_TYPE_AGREE: HuksParamValue = HuksParamValue.Uint32Value(2)
```

**功能：** 协商生成的密钥。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_KEY_GENERATE_TYPE_DEFAULT

```cangjie
public static const HUKS_KEY_GENERATE_TYPE_DEFAULT: HuksParamValue = HuksParamValue.Uint32Value(0)
```

**功能：** 默认生成的密钥。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_KEY_GENERATE_TYPE_DERIVE

```cangjie
public static const HUKS_KEY_GENERATE_TYPE_DERIVE: HuksParamValue = HuksParamValue.Uint32Value(1)
```

**功能：** 派生生成的密钥。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

## class HuksKeyPadding

```cangjie
public class HuksKeyPadding {
    public static const HUKS_PADDING_NONE: HuksParamValue = HuksParamValue.Uint32Value(0)
    public static const HUKS_PADDING_OAEP: HuksParamValue = HuksParamValue.Uint32Value(1)
    public static const HUKS_PADDING_PSS: HuksParamValue = HuksParamValue.Uint32Value(2)
    public static const HUKS_PADDING_PKCS1_V1_5: HuksParamValue = HuksParamValue.Uint32Value(3)
    public static const HUKS_PADDING_PKCS5: HuksParamValue = HuksParamValue.Uint32Value(4)
    public static const HUKS_PADDING_PKCS7: HuksParamValue = HuksParamValue.Uint32Value(5)
}
```

**功能：** 表示补齐算法。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_PADDING_NONE

```cangjie
public static const HUKS_PADDING_NONE: HuksParamValue = HuksParamValue.Uint32Value(0)
```

**功能：** 表示不使用补齐算法。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_PADDING_OAEP

```cangjie
public static const HUKS_PADDING_OAEP: HuksParamValue = HuksParamValue.Uint32Value(1)
```

**功能：** 表示使用OAEP补齐算法。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_PADDING_PKCS1_V1_5

```cangjie
public static const HUKS_PADDING_PKCS1_V1_5: HuksParamValue = HuksParamValue.Uint32Value(3)
```

**功能：** 表示使用PKCS1_V1_5补齐算法。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_PADDING_PKCS5

```cangjie
public static const HUKS_PADDING_PKCS5: HuksParamValue = HuksParamValue.Uint32Value(4)
```

**功能：** 表示使用PKCS5补齐算法。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_PADDING_PKCS7

```cangjie
public static const HUKS_PADDING_PKCS7: HuksParamValue = HuksParamValue.Uint32Value(5)
```

**功能：** 表示使用PKCS7补齐算法。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_PADDING_PSS

```cangjie
public static const HUKS_PADDING_PSS: HuksParamValue = HuksParamValue.Uint32Value(2)
```

**功能：** 表示使用PSS补齐算法。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

## class HuksKeyPurpose

```cangjie
public class HuksKeyPurpose {
    public static const HUKS_KEY_PURPOSE_ENCRYPT: HuksParamValue = HuksParamValue.Uint32Value(1)
    public static const HUKS_KEY_PURPOSE_DECRYPT: HuksParamValue = HuksParamValue.Uint32Value(2)
    public static const HUKS_KEY_PURPOSE_SIGN: HuksParamValue = HuksParamValue.Uint32Value(4)
    public static const HUKS_KEY_PURPOSE_VERIFY: HuksParamValue = HuksParamValue.Uint32Value(8)
    public static const HUKS_KEY_PURPOSE_DERIVE: HuksParamValue = HuksParamValue.Uint32Value(16)
    public static const HUKS_KEY_PURPOSE_WRAP: HuksParamValue = HuksParamValue.Uint32Value(32)
    public static const HUKS_KEY_PURPOSE_UNWRAP: HuksParamValue = HuksParamValue.Uint32Value(64)
    public static const HUKS_KEY_PURPOSE_MAC: HuksParamValue = HuksParamValue.Uint32Value(128)
    public static const HUKS_KEY_PURPOSE_AGREE: HuksParamValue = HuksParamValue.Uint32Value(256)
}
```

**功能：** 表示密钥用途。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_KEY_PURPOSE_AGREE

```cangjie
public static const HUKS_KEY_PURPOSE_AGREE: HuksParamValue = HuksParamValue.Uint32Value(256)
```

**功能：** 表示密钥用于进行密钥协商。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_KEY_PURPOSE_DECRYPT

```cangjie
public static const HUKS_KEY_PURPOSE_DECRYPT: HuksParamValue = HuksParamValue.Uint32Value(2)
```

**功能：** 表示密钥用于对密文进行解密操作。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_KEY_PURPOSE_DERIVE

```cangjie
public static const HUKS_KEY_PURPOSE_DERIVE: HuksParamValue = HuksParamValue.Uint32Value(16)
```

**功能：** 表示密钥用于派生密钥。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_KEY_PURPOSE_ENCRYPT

```cangjie
public static const HUKS_KEY_PURPOSE_ENCRYPT: HuksParamValue = HuksParamValue.Uint32Value(1)
```

**功能：** 表示密钥用于对明文进行加密操作。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_KEY_PURPOSE_MAC

```cangjie
public static const HUKS_KEY_PURPOSE_MAC: HuksParamValue = HuksParamValue.Uint32Value(128)
```

**功能：** 表示密钥用于生成mac消息验证码。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_KEY_PURPOSE_SIGN

```cangjie
public static const HUKS_KEY_PURPOSE_SIGN: HuksParamValue = HuksParamValue.Uint32Value(4)
```

**功能：** 表示密钥加密导入。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_KEY_PURPOSE_UNWRAP

```cangjie
public static const HUKS_KEY_PURPOSE_UNWRAP: HuksParamValue = HuksParamValue.Uint32Value(64)
```

**功能：** 表示密钥加密导入。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_KEY_PURPOSE_VERIFY

```cangjie
public static const HUKS_KEY_PURPOSE_VERIFY: HuksParamValue = HuksParamValue.Uint32Value(8)
```

**功能：** 表示密钥用于验证签名后的数据。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_KEY_PURPOSE_WRAP

```cangjie
public static const HUKS_KEY_PURPOSE_WRAP: HuksParamValue = HuksParamValue.Uint32Value(32)
```

**功能：** 表示密钥用于加密导出。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

## class HuksKeySize

```cangjie
public class HuksKeySize {
    public static const HUKS_RSA_KEY_SIZE_512: HuksParamValue = HuksParamValue.Uint32Value(512)
    public static const HUKS_RSA_KEY_SIZE_768: HuksParamValue = HuksParamValue.Uint32Value(768)
    public static const HUKS_RSA_KEY_SIZE_1024: HuksParamValue = HuksParamValue.Uint32Value(1024)
    public static const HUKS_RSA_KEY_SIZE_2048: HuksParamValue = HuksParamValue.Uint32Value(2048)
    public static const HUKS_RSA_KEY_SIZE_3072: HuksParamValue = HuksParamValue.Uint32Value(3072)
    public static const HUKS_RSA_KEY_SIZE_4096: HuksParamValue = HuksParamValue.Uint32Value(4096)
    public static const HUKS_ECC_KEY_SIZE_224: HuksParamValue = HuksParamValue.Uint32Value(224)
    public static const HUKS_ECC_KEY_SIZE_256: HuksParamValue = HuksParamValue.Uint32Value(256)
    public static const HUKS_ECC_KEY_SIZE_384: HuksParamValue = HuksParamValue.Uint32Value(384)
    public static const HUKS_ECC_KEY_SIZE_521: HuksParamValue = HuksParamValue.Uint32Value(521)
    public static const HUKS_AES_KEY_SIZE_128: HuksParamValue = HuksParamValue.Uint32Value(128)
    public static const HUKS_AES_KEY_SIZE_192: HuksParamValue = HuksParamValue.Uint32Value(192)
    public static const HUKS_AES_KEY_SIZE_256: HuksParamValue = HuksParamValue.Uint32Value(256)
    public static const HUKS_AES_KEY_SIZE_512: HuksParamValue = HuksParamValue.Uint32Value(512)
    public static const HUKS_CURVE25519_KEY_SIZE_256: HuksParamValue = HuksParamValue.Uint32Value(256)
    public static const HUKS_DH_KEY_SIZE_2048: HuksParamValue = HuksParamValue.Uint32Value(2048)
    public static const HUKS_DH_KEY_SIZE_3072: HuksParamValue = HuksParamValue.Uint32Value(3072)
    public static const HUKS_DH_KEY_SIZE_4096: HuksParamValue = HuksParamValue.Uint32Value(4096)
    public static const HUKS_SM2_KEY_SIZE_256: HuksParamValue = HuksParamValue.Uint32Value(256)
    public static const HUKS_SM4_KEY_SIZE_128: HuksParamValue = HuksParamValue.Uint32Value(128)
}
```

**功能：** 表示密钥长度。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_AES_KEY_SIZE_128

```cangjie
public static const HUKS_AES_KEY_SIZE_128: HuksParamValue = HuksParamValue.Uint32Value(128)
```

**功能：** 表示3DES算法的密钥长度为128bit。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_AES_KEY_SIZE_192

```cangjie
public static const HUKS_AES_KEY_SIZE_192: HuksParamValue = HuksParamValue.Uint32Value(192)
```

**功能：** 表示3DES算法的密钥长度为192bit。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_AES_KEY_SIZE_256

```cangjie
public static const HUKS_AES_KEY_SIZE_256: HuksParamValue = HuksParamValue.Uint32Value(256)
```

**功能：** 表示使用AES算法的密钥长度为256bit。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_AES_KEY_SIZE_512

```cangjie
public static const HUKS_AES_KEY_SIZE_512: HuksParamValue = HuksParamValue.Uint32Value(512)
```

**功能：** 表示使用AES算法的密钥长度为512bit。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_CURVE25519_KEY_SIZE_256

```cangjie
public static const HUKS_CURVE25519_KEY_SIZE_256: HuksParamValue = HuksParamValue.Uint32Value(256)
```

**功能：** 表示使用CURVE25519算法的密钥长度为256bit。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_DH_KEY_SIZE_2048

```cangjie
public static const HUKS_DH_KEY_SIZE_2048: HuksParamValue = HuksParamValue.Uint32Value(2048)
```

**功能：** 表示使用DH算法的密钥长度为2048bit。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_DH_KEY_SIZE_3072

```cangjie
public static const HUKS_DH_KEY_SIZE_3072: HuksParamValue = HuksParamValue.Uint32Value(3072)
```

**功能：** 表示使用DH算法的密钥长度为3072bit。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_DH_KEY_SIZE_4096

```cangjie
public static const HUKS_DH_KEY_SIZE_4096: HuksParamValue = HuksParamValue.Uint32Value(4096)
```

**功能：** 表示使用DH算法的密钥长度为4096bit。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_ECC_KEY_SIZE_224

```cangjie
public static const HUKS_ECC_KEY_SIZE_224: HuksParamValue = HuksParamValue.Uint32Value(224)
```

**功能：** 表示使用ECC算法的密钥长度为224bit。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_ECC_KEY_SIZE_256

```cangjie
public static const HUKS_ECC_KEY_SIZE_256: HuksParamValue = HuksParamValue.Uint32Value(256)
```

**功能：** 表示使用ECC算法的密钥长度为256bit。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_ECC_KEY_SIZE_384

```cangjie
public static const HUKS_ECC_KEY_SIZE_384: HuksParamValue = HuksParamValue.Uint32Value(384)
```

**功能：** 表示使用ECC算法的密钥长度为384bit。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_ECC_KEY_SIZE_521

```cangjie
public static const HUKS_ECC_KEY_SIZE_521: HuksParamValue = HuksParamValue.Uint32Value(521)
```

**功能：** 表示使用ECC算法的密钥长度为521bit。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_RSA_KEY_SIZE_1024

```cangjie
public static const HUKS_RSA_KEY_SIZE_1024: HuksParamValue = HuksParamValue.Uint32Value(1024)
```

**功能：** 表示使用RSA算法的密钥长度为1024bit。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_RSA_KEY_SIZE_2048

```cangjie
public static const HUKS_RSA_KEY_SIZE_2048: HuksParamValue = HuksParamValue.Uint32Value(2048)
```

**功能：** 表示使用RSA算法的密钥长度为2048bit。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_RSA_KEY_SIZE_3072

```cangjie
public static const HUKS_RSA_KEY_SIZE_3072: HuksParamValue = HuksParamValue.Uint32Value(3072)
```

**功能：** 表示使用RSA算法的密钥长度为3072bit。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_RSA_KEY_SIZE_4096

```cangjie
public static const HUKS_RSA_KEY_SIZE_4096: HuksParamValue = HuksParamValue.Uint32Value(4096)
```

**功能：** 表示使用RSA算法的密钥长度为4096bit。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_RSA_KEY_SIZE_512

```cangjie
public static const HUKS_RSA_KEY_SIZE_512: HuksParamValue = HuksParamValue.Uint32Value(512)
```

**功能：** 表示使用RSA算法的密钥长度为512bit。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_RSA_KEY_SIZE_768

```cangjie
public static const HUKS_RSA_KEY_SIZE_768: HuksParamValue = HuksParamValue.Uint32Value(768)
```

**功能：** 表示使用RSA算法的密钥长度为768bit。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_SM2_KEY_SIZE_256

```cangjie
public static const HUKS_SM2_KEY_SIZE_256: HuksParamValue = HuksParamValue.Uint32Value(256)
```

**功能：** 表示SM2算法的密钥长度为256bit。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_SM4_KEY_SIZE_128

```cangjie
public static const HUKS_SM4_KEY_SIZE_128: HuksParamValue = HuksParamValue.Uint32Value(128)
```

**功能：** 表示SM4算法的密钥长度为128bit。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

## class HuksKeyStorageType

```cangjie
public class HuksKeyStorageType {
    public static const HUKS_STORAGE_ONLY_USED_IN_HUKS: HuksParamValue = HuksParamValue.Uint32Value(2)
    public static const HUKS_STORAGE_KEY_EXPORT_ALLOWED: HuksParamValue = HuksParamValue.Uint32Value(3)
}
```

**功能：** 表示密钥存储方式。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_STORAGE_KEY_EXPORT_ALLOWED

```cangjie
public static const HUKS_STORAGE_KEY_EXPORT_ALLOWED: HuksParamValue = HuksParamValue.Uint32Value(3)
```

**功能：** 表示主密钥派生的密钥直接导出给业务方，HUKS不对其进行托管服务。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_STORAGE_ONLY_USED_IN_HUKS

```cangjie
public static const HUKS_STORAGE_ONLY_USED_IN_HUKS: HuksParamValue = HuksParamValue.Uint32Value(2)
```

**功能：** 表示主密钥派生的密钥存储于huks中，由HUKS进行托管。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

## class HuksOptions

```cangjie
public class HuksOptions {
    public var properties: Array<HuksParam>
    public var inData: Bytes


    public init(properties!: Array<HuksParam> = Array<HuksParam>(), inData!: Bytes = Bytes())
}
```

**功能：** 调用接口使用的options。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### var inData

```cangjie
public var inData: Bytes
```

**功能：** 输入数据。

**类型：** [Bytes](../../../../User_Manual/source_zh_cn/basic_data_type/integer.md#无符号整数类型)

**读写能力：** 可读写

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### var properties

```cangjie
public var properties: Array<HuksParam>
```

**功能：** 属性，用于存HuksParam的数组。

**类型：** Array\<[HuksParam](#class-huksparam)>

**读写能力：** 可读写

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### init(Array\<HuksParam>, Bytes)

```cangjie

public init(properties!: Array<HuksParam> = Array<HuksParam>(), inData!: Bytes = Bytes())
```

**功能：** 构造调用接口使用的options实例。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|properties|Array\<[HuksParam](#class-huksparam)>|否|Array<HuksParam>()|属性，用于存HuksParam的数组。|
|inData|[Bytes](../../../../User_Manual/source_zh_cn/basic_data_type/integer.md#无符号整数类型)|否|Bytes()|输入数据。|

## class HuksParam

```cangjie
public class HuksParam {
    public var tag: HuksTag
    public var value: HuksParamValue


    public init(tag: HuksTag, value: HuksParamValue)
}
```

**功能：** [HuksOptions](#class-huksoptions)中properties数组中的元素。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### var tag

```cangjie
public var tag: HuksTag
```

**功能：** 标签。

**类型：** [HuksTag](#enum-hukstag)

**读写能力：** 可读写

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### var value

```cangjie
public var value: HuksParamValue
```

**功能：** 标签对应值。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**读写能力：** 可读写

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### init(HuksTag, HuksParamValue)

```cangjie

public init(tag: HuksTag, value: HuksParamValue)
```

**功能：** 构造[HuksOptions](#class-huksoptions)中properties数组中的元素实例。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|tag|[HuksTag](#enum-hukstag)|是|-|标签。|
|value|[HuksParamValue](#enum-huksparamvalue)|是|-|标签对应值。|

## class HuksRsaPssSaltLenType

```cangjie
public class HuksRsaPssSaltLenType {
    public static const HUKS_RSA_PSS_SALT_LEN_DIGEST: HuksParamValue = HuksParamValue.Uint32Value(0)
    public static const HUKS_RSA_PSS_SALT_LEN_MAX: HuksParamValue = HuksParamValue.Uint32Value(1)
}
```

**功能：** 表示Rsa在签名或者验签且padding为pss时，需指定的salt_len类型。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_RSA_PSS_SALT_LEN_DIGEST

```cangjie
public static const HUKS_RSA_PSS_SALT_LEN_DIGEST: HuksParamValue = HuksParamValue.Uint32Value(0)
```

**功能：** 表示以摘要长度设置salt_len。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_RSA_PSS_SALT_LEN_MAX

```cangjie
public static const HUKS_RSA_PSS_SALT_LEN_MAX: HuksParamValue = HuksParamValue.Uint32Value(1)
```

**功能：** 表示以最大长度设置salt_len。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

## class HuksSecureSignType

```cangjie
public class HuksSecureSignType {
    public static const HUKS_SECURE_SIGN_WITH_AUTHINFO: HuksParamValue = HuksParamValue.Uint32Value(1)
}
```

**功能：** 表示生成或导入密钥时，指定该密钥的签名类型。

**系统能力：** SystemCapability.Security.Huks.Extension

**起始版本：** 21

### static const HUKS_SECURE_SIGN_WITH_AUTHINFO

```cangjie
public static const HUKS_SECURE_SIGN_WITH_AUTHINFO: HuksParamValue = HuksParamValue.Uint32Value(1)
```

**功能：** 表示签名类型为携带认证信息。生成或导入密钥时指定该字段，则在使用密钥进行签名时，对待签名的数据添加认证信息后进行签名。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Extension

**起始版本：** 21

## class HuksSendType

```cangjie
public class HuksSendType {
    public static const HUKS_SEND_TYPE_ASYNC: HuksParamValue = HuksParamValue.Uint32Value(0)
    public static const HUKS_SEND_TYPE_SYNC: HuksParamValue = HuksParamValue.Uint32Value(1)
}
```

**功能：** 表示发送Tag的方式。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_SEND_TYPE_ASYNC

```cangjie
public static const HUKS_SEND_TYPE_ASYNC: HuksParamValue = HuksParamValue.Uint32Value(0)
```

**功能：** 表示异步发送Tag。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_SEND_TYPE_SYNC

```cangjie
public static const HUKS_SEND_TYPE_SYNC: HuksParamValue = HuksParamValue.Uint32Value(1)
```

**功能：** 表示同步发送Tag。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

## class HuksSessionHandle

```cangjie
public class HuksSessionHandle {
    public var handle: HuksHandleId
    public var challenge: Bytes
}
```

**功能：** huks Handle结构体。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### var challenge

```cangjie
public var challenge: Bytes
```

**功能：** 表示[initSession](#func-initsessionstring-huksoptions)操作之后获取到的challenge信息。

**类型：** [Bytes](../../../../User_Manual/source_zh_cn/basic_data_type/integer.md#无符号整数类型)

**读写能力：** 可读写

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### var handle

```cangjie
public var handle: HuksHandleId
```

**功能：** 表示handle值。

**类型：** [HuksHandleId](#class-hukshandleid)

**读写能力：** 可读写

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

## class HuksTagType

```cangjie
public class HuksTagType {
    public static const HUKS_TAG_TYPE_INVALID: UInt32 = 0 << 28
    public static const HUKS_TAG_TYPE_INT: UInt32 = 1 << 28
    public static const HUKS_TAG_TYPE_UINT: UInt32 = 2 << 28
    public static const HUKS_TAG_TYPE_ULONG: UInt32 = 3 << 28
    public static const HUKS_TAG_TYPE_BOOL: UInt32 = 4 << 28
    public static const HUKS_TAG_TYPE_BYTES: UInt32 = 5 << 28
}
```

**功能：** 表示Tag的数据类型。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_TAG_TYPE_BOOL

```cangjie
public static const HUKS_TAG_TYPE_BOOL: UInt32 = 4 << 28
```

**功能：** 表示该Tag的数据类型为boolean。

**类型：** UInt32

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_TAG_TYPE_BYTES

```cangjie
public static const HUKS_TAG_TYPE_BYTES: UInt32 = 5 << 28
```

**功能：** 表示该Tag的数据类型为Uint8Array。

**类型：** UInt32

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_TAG_TYPE_INT

```cangjie
public static const HUKS_TAG_TYPE_INT: UInt32 = 1 << 28
```

**功能：** 表示该Tag的数据类型为UInt32。

**类型：** UInt32

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_TAG_TYPE_INVALID

```cangjie
public static const HUKS_TAG_TYPE_INVALID: UInt32 = 0 << 28
```

**功能：** 表示非法的Tag类型。

**类型：** UInt32

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_TAG_TYPE_UINT

```cangjie
public static const HUKS_TAG_TYPE_UINT: UInt32 = 2 << 28
```

**功能：** 表示该Tag的数据类型为UInt32。

**类型：** UInt32

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_TAG_TYPE_ULONG

```cangjie
public static const HUKS_TAG_TYPE_ULONG: UInt32 = 3 << 28
```

**功能：** 表示该Tag的数据类型为bigint。

**类型：** UInt32

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

## class HuksUnwrapSuite

```cangjie
public class HuksUnwrapSuite {
    public static const HUKS_UNWRAP_SUITE_X25519_AES_256_GCM_NOPADDING: HuksParamValue = HuksParamValue.Uint32Value(1)
    public static const HUKS_UNWRAP_SUITE_ECDH_AES_256_GCM_NOPADDING: HuksParamValue = HuksParamValue.Uint32Value(2)
}
```

**功能：** 表示导入加密密钥的算法套件。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_UNWRAP_SUITE_ECDH_AES_256_GCM_NOPADDING

```cangjie
public static const HUKS_UNWRAP_SUITE_ECDH_AES_256_GCM_NOPADDING: HuksParamValue = HuksParamValue.Uint32Value(2)
```

**功能：** 导入加密密钥时，ECDH密钥协商后使用AES-256 GCM加密。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### static const HUKS_UNWRAP_SUITE_X25519_AES_256_GCM_NOPADDING

```cangjie
public static const HUKS_UNWRAP_SUITE_X25519_AES_256_GCM_NOPADDING: HuksParamValue = HuksParamValue.Uint32Value(1)
```

**功能：** 导入加密密钥时，X25519密钥协商后使用AES-256 GCM加密。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

## class HuksUserAuthType

```cangjie
public class HuksUserAuthType {
    public static const HUKS_USER_AUTH_TYPE_FINGERPRINT: HuksParamValue = HuksParamValue.Uint32Value(1 << 0)
    public static const HUKS_USER_AUTH_TYPE_FACE: HuksParamValue = HuksParamValue.Uint32Value(1 << 1)
    public static const HUKS_USER_AUTH_TYPE_PIN: HuksParamValue = HuksParamValue.Uint32Value(1 << 2)
}
```

**功能：** 表示用户认证类型。

**系统能力：** SystemCapability.Security.Huks.Extension

**起始版本：** 21

### static const HUKS_USER_AUTH_TYPE_FACE

```cangjie
public static const HUKS_USER_AUTH_TYPE_FACE: HuksParamValue = HuksParamValue.Uint32Value(1 << 1)
```

**功能：** 表示用户认证类型为人脸。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Extension

**起始版本：** 21

### static const HUKS_USER_AUTH_TYPE_FINGERPRINT

```cangjie
public static const HUKS_USER_AUTH_TYPE_FINGERPRINT: HuksParamValue = HuksParamValue.Uint32Value(1 << 0)
```

**功能：** 表示用户认证类型为指纹。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Extension

**起始版本：** 21

### static const HUKS_USER_AUTH_TYPE_PIN

```cangjie
public static const HUKS_USER_AUTH_TYPE_PIN: HuksParamValue = HuksParamValue.Uint32Value(1 << 2)
```

**功能：** 表示用户认证类型为PIN码。

**类型：** [HuksParamValue](#enum-huksparamvalue)

**系统能力：** SystemCapability.Security.Huks.Extension

**起始版本：** 21

## enum HuksParamValue

```cangjie
public enum HuksParamValue {
    | BooleanValue(Bool)
    | Int32Value(Int32)
    | Uint32Value(UInt32)
    | Uint64Value(UInt64)
    | BytesValue(Bytes)
    | ...
}
```

**功能：** 用于表示HuksParam中value的值，支持Bool、Int32、UInt32、UInt64、Array\<UInt8>格式。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### BooleanValue(Bool)

```cangjie
BooleanValue(Bool)
```

**功能：** 该字段用于传入Bool类型的value值。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### BytesValue(Bytes)

```cangjie
BytesValue(Bytes)
```

**功能：** 该字段用于传入Bytes类型的value值。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### Int32Value(Int32)

```cangjie
Int32Value(Int32)
```

**功能：** 该字段用于传入Int32类型的value值。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### Uint32Value(UInt32)

```cangjie
Uint32Value(UInt32)
```

**功能：** 该字段用于传入UInt32类型的value值。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### Uint64Value(UInt64)

```cangjie
Uint64Value(UInt64)
```

**功能：** 该字段用于传入UInt64类型的value值。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

## enum HuksTag

```cangjie
public enum HuksTag {
    | HuksTagInvalid
    | HuksTagAlgorithm
    | HuksTagPurpose
    | HuksTagKeySize
    | HuksTagDigest
    | HuksTagPadding
    | HuksTagBlockMode
    | HuksTagKeyType
    | HuksTagAssociatedData
    | HuksTagNonce
    | HuksTagIv
    | HuksTagInfo
    | HuksTagSalt
    | HuksTagPwd
    | HuksTagIteration
    | HuksTagKeyGenerateType
    | HuksTagDeriveMainKey
    | HuksTagDeriveFactor
    | HuksTagDeriveAlg
    | HuksTagAgreeAlg
    | HuksTagAgreePublicKeyIsKeyAlias
    | HuksTagAgreePrivateKeyAlias
    | HuksTagAgreePublicKey
    | HuksTagKeyAlias
    | HuksTagDeriveKeySize
    | HuksTagImportKeyType
    | HuksTagUnwrapAlgorithmSuite
    | HuksTagDerivedAgreedKeyStorageFlag
    | HuksTagRsaPssSaltLenType
    | HuksTagActiveDatetime
    | HuksTagOriginationExpireDatetime
    | HuksTagUsageExpireDatetime
    | HuksTagCreationDatetime
    | HuksTagAllUsers
    | HuksTagUserId
    | HuksTagNoAuthRequired
    | HuksTagUserAuthType
    | HuksTagAuthTimeout
    | HuksTagAuthToken
    | HuksTagKeyAuthAccessType
    | HuksTagKeySecureSignType
    | HuksTagChallengeType
    | HuksTagChallengePos
    | HuksTagKeyAuthPurpose
    | HuksTagAttestationChallenge
    | HuksTagAttestationApplicationId
    | HuksTagAttestationIdBrand
    | HuksTagAttestationIdDevice
    | HuksTagAttestationIdProduct
    | HuksTagAttestationIdSerial
    | HuksTagAttestationIdImei
    | HuksTagAttestationIdMeid
    | HuksTagAttestationIdManufacturer
    | HuksTagAttestationIdModel
    | HuksTagAttestationIdAlias
    | HuksTagAttestationIdSocid
    | HuksTagAttestationIdUdid
    | HuksTagAttestationIdSecLevelInfo
    | HuksTagAttestationIdVersionInfo
    | HuksTagAttestationBase64
    | HuksTagIsKeyAlias
    | HuksTagKeyStorageFlag
    | HuksTagIsAllowedWrap
    | HuksTagKeyWrapType
    | HuksTagKeyAuthId
    | HuksTagKeyRole
    | HuksTagKeyFlag
    | HuksTagIsAsynchronized
    | HuksTagSecureKeyAlias
    | HuksTagSecureKeyUuid
    | HuksTagKeyDomain
    | HuksTagProcessName
    | HuksTagPackageName
    | HuksTagAccessTime
    | HuksTagUsesTime
    | HuksTagCryptoCtx
    | HuksTagKey
    | HuksTagKeyVersion
    | HuksTagPayloadLen
    | HuksTagAeTag
    | HuksTagIsKeyHandle
    | HuksTagOsVersion
    | HuksTagOsPatchlevel
    | HuksTagSymmetricKeyData
    | HuksTagAsymmetricPublicKeyData
    | HuksTagAsymmetricPrivateKeyData
    | ...
}
```

**功能：** 表示调用参数的Tag。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagAccessTime

```cangjie
HuksTagAccessTime
```

**功能：** 原为预留字段，已废弃。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagActiveDatetime

```cangjie
HuksTagActiveDatetime
```

**功能：** 原为证书业务预留字段，当前证书管理已独立，此字段废弃，不再预留。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagAeTag

```cangjie
HuksTagAeTag
```

**功能：** 用于传入GCM模式中的AEAD数据的字段。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagAgreeAlg

```cangjie
HuksTagAgreeAlg
```

**功能：** 表示密钥协商时的算法类型。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagAgreePrivateKeyAlias

```cangjie
HuksTagAgreePrivateKeyAlias
```

**功能：** 表示密钥协商时的私钥别名。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagAgreePublicKey

```cangjie
HuksTagAgreePublicKey
```

**功能：** 表示密钥协商时的公钥。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagAgreePublicKeyIsKeyAlias

```cangjie
HuksTagAgreePublicKeyIsKeyAlias
```

**功能：** 表示密钥协商时的公钥别名。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagAlgorithm

```cangjie
HuksTagAlgorithm
```

**功能：** 表示算法的Tag。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagAllUsers

```cangjie
HuksTagAllUsers
```

**功能：** SystemCapability.Security.Huks.Extension

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagAssociatedData

```cangjie
HuksTagAssociatedData
```

**功能：** 表示附加身份验证数据的Tag。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagAsymmetricPrivateKeyData

```cangjie
HuksTagAsymmetricPrivateKeyData
```

**功能：** SystemCapability.Security.Huks.Extension

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagAsymmetricPublicKeyData

```cangjie
HuksTagAsymmetricPublicKeyData
```

**功能：** 预留。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagAttestationApplicationId

```cangjie
HuksTagAttestationApplicationId
```

**功能：** 表示attestation时拥有该密钥的application的ID。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagAttestationBase64

```cangjie
HuksTagAttestationBase64
```

**功能：** 预留。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagAttestationChallenge

```cangjie
HuksTagAttestationChallenge
```

**功能：** 表示attestation时的挑战值。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagAttestationIdAlias

```cangjie
HuksTagAttestationIdAlias
```

**功能：** 表示attestation时的密钥别名。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagAttestationIdBrand

```cangjie
HuksTagAttestationIdBrand
```

**功能：** 表示设备的品牌。已废弃。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagAttestationIdDevice

```cangjie
HuksTagAttestationIdDevice
```

**功能：** 表示设备的设备ID。已废弃。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagAttestationIdImei

```cangjie
HuksTagAttestationIdImei
```

**功能：** 表示设备的IMEI号。已废弃。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagAttestationIdManufacturer

```cangjie
HuksTagAttestationIdManufacturer
```

**功能：** 表示设备的制造商。已废弃。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagAttestationIdMeid

```cangjie
HuksTagAttestationIdMeid
```

**功能：** 表示设备的MEID号。已废弃。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagAttestationIdModel

```cangjie
HuksTagAttestationIdModel
```

**功能：** 表示设备的型号。已废弃。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagAttestationIdProduct

```cangjie
HuksTagAttestationIdProduct
```

**功能：** 表示设备的产品名。已废弃。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagAttestationIdSecLevelInfo

```cangjie
HuksTagAttestationIdSecLevelInfo
```

**功能：** 表示attestation时的安全凭据。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagAttestationIdSerial

```cangjie
HuksTagAttestationIdSerial
```

**功能：** 表示设备的SN号。已废弃。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagAttestationIdSocid

```cangjie
HuksTagAttestationIdSocid
```

**功能：** 表示设备的SOCID。已废弃。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagAttestationIdUdid

```cangjie
HuksTagAttestationIdUdid
```

**功能：** 表示设备的UDID。已废弃。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagAttestationIdVersionInfo

```cangjie
HuksTagAttestationIdVersionInfo
```

**功能：** 表示attestation时的版本号。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagAuthTimeout

```cangjie
HuksTagAuthTimeout
```

**功能：** 表示authtoken单次有效期。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagAuthToken

```cangjie
HuksTagAuthToken
```

**功能：** 用于传入authToken的字段。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagBlockMode

```cangjie
HuksTagBlockMode
```

**功能：** 表示加密模式的Tag。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagChallengePos

```cangjie
HuksTagChallengePos
```

**功能：** 表示challenge类型为用户自定义类型时，huks产生的challenge有效长度仅为8字节连续的数据。从[HuksChallengePosition](#class-hukschallengeposition)中选择。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagChallengeType

```cangjie
HuksTagChallengeType
```

**功能：** 表示密钥使用时生成的challenge类型。从[HuksChallengeType](#class-hukschallengetype)中选择。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagCreationDatetime

```cangjie
HuksTagCreationDatetime
```

**功能：** 原为证书业务预留字段，当前证书管理已独立，此字段废弃，不再预留。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagCryptoCtx

```cangjie
HuksTagCryptoCtx
```

**功能：** 原为预留字段，已废弃。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagDeriveAlg

```cangjie
HuksTagDeriveAlg
```

**功能：** 表示密钥派生时的算法类型。已废弃。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagDeriveFactor

```cangjie
HuksTagDeriveFactor
```

**功能：** 表示密钥派生时的派生因子。已废弃。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagDeriveKeySize

```cangjie
HuksTagDeriveKeySize
```

**功能：** 表示派生密钥的大小。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagDeriveMainKey

```cangjie
HuksTagDeriveMainKey
```

**功能：** 表示密钥派生时的主密钥。已废弃。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagDerivedAgreedKeyStorageFlag

```cangjie
HuksTagDerivedAgreedKeyStorageFlag
```

**功能：** 表示派生密钥/协商密钥的存储类型。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagDigest

```cangjie
HuksTagDigest
```

**功能：** 表示摘要算法的Tag。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagImportKeyType

```cangjie
HuksTagImportKeyType
```

**功能：** 表示导入的密钥类型。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagInfo

```cangjie
HuksTagInfo
```

**功能：** 表示密钥派生时的info。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagInvalid

```cangjie
HuksTagInvalid
```

**功能：** 表示非法的Tag。已废弃。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagIsAllowedWrap

```cangjie
HuksTagIsAllowedWrap
```

**功能：** 预留。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagIsAsynchronized

```cangjie
HuksTagIsAsynchronized
```

**功能：** 预留。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagIsKeyAlias

```cangjie
HuksTagIsKeyAlias
```

**功能：** 表示是否使用生成key时传入的别名的Tag。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagIsKeyHandle

```cangjie
HuksTagIsKeyHandle
```

**功能：** 原为预留字段，已废弃。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagIteration

```cangjie
HuksTagIteration
```

**功能：** 表示密钥派生时的迭代次数。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagIv

```cangjie
HuksTagIv
```

**功能：** 表示密钥初始化的向量。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagKey

```cangjie
HuksTagKey
```

**功能：** 预留。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagKeyAlias

```cangjie
HuksTagKeyAlias
```

**功能：** 表示密钥别名。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagKeyAuthAccessType

```cangjie
HuksTagKeyAuthAccessType
```

**功能：** 表示安全访问控制类型。从[HuksAuthAccessType](#class-huksauthaccesstype)中选择，需要和用户认证类型同时设置。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagKeyAuthId

```cangjie
HuksTagKeyAuthId
```

**功能：** 预留。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagKeyAuthPurpose

```cangjie
HuksTagKeyAuthPurpose
```

**功能：** 表示密钥认证用途的tag。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagKeyDomain

```cangjie
HuksTagKeyDomain
```

**功能：** 预留。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagKeyFlag

```cangjie
HuksTagKeyFlag
```

**功能：** 表示密钥标志的Tag。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagKeyGenerateType

```cangjie
HuksTagKeyGenerateType
```

**功能：** 表示生成密钥类型的Tag。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagKeyRole

```cangjie
HuksTagKeyRole
```

**功能：** 预留。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagKeySecureSignType

```cangjie
HuksTagKeySecureSignType
```

**功能：** 表示生成或导入密钥时，指定该密钥的签名类型。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagKeySize

```cangjie
HuksTagKeySize
```

**功能：** 表示密钥长度的Tag。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagKeyStorageFlag

```cangjie
HuksTagKeyStorageFlag
```

**功能：** 表示密钥存储方式的Tag。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagKeyType

```cangjie
HuksTagKeyType
```

**功能：** 表示密钥类型的Tag。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagKeyVersion

```cangjie
HuksTagKeyVersion
```

**功能：** 表示密钥版本的Tag。已废弃。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagKeyWrapType

```cangjie
HuksTagKeyWrapType
```

**功能：** 预留。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagNoAuthRequired

```cangjie
HuksTagNoAuthRequired
```

**功能：** 预留。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagNonce

```cangjie
HuksTagNonce
```

**功能：** 表示密钥加解密的NONCE字段。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagOriginationExpireDatetime

```cangjie
HuksTagOriginationExpireDatetime
```

**功能：** 原为证书业务预留字段，当前证书管理已独立，此字段废弃，不再预留。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagOsPatchlevel

```cangjie
HuksTagOsPatchlevel
```

**功能：** 表示操作系统补丁级别的Tag。已废弃。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagOsVersion

```cangjie
HuksTagOsVersion
```

**功能：** 表示操作系统版本的Tag。已废弃。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagPackageName

```cangjie
HuksTagPackageName
```

**功能：** 原为预留字段，已废弃。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagPadding

```cangjie
HuksTagPadding
```

**功能：** 表示补齐算法的Tag。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagPayloadLen

```cangjie
HuksTagPayloadLen
```

**功能：** 原为预留字段，已废弃。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagProcessName

```cangjie
HuksTagProcessName
```

**功能：** 表示进程名称的Tag。已废弃。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagPurpose

```cangjie
HuksTagPurpose
```

**功能：** 表示密钥用途的Tag。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagPwd

```cangjie
HuksTagPwd
```

**功能：** 表示密钥派生时的password。已废弃。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagRsaPssSaltLenType

```cangjie
HuksTagRsaPssSaltLenType
```

**功能：** 表示rsa_pss_salt_length的类型。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagSalt

```cangjie
HuksTagSalt
```

**功能：** 表示密钥派生时的盐值。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagSecureKeyAlias

```cangjie
HuksTagSecureKeyAlias
```

**功能：** 原为预留字段，已废弃。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagSecureKeyUuid

```cangjie
HuksTagSecureKeyUuid
```

**功能：** 原为预留字段，已废弃。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagSymmetricKeyData

```cangjie
HuksTagSymmetricKeyData
```

**功能：** 预留。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagUnwrapAlgorithmSuite

```cangjie
HuksTagUnwrapAlgorithmSuite
```

**功能：** 表示导入加密密钥的套件。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagUsageExpireDatetime

```cangjie
HuksTagUsageExpireDatetime
```

**功能：** 原为证书业务预留字段，当前证书管理已独立，此字段废弃，不再预留。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagUserAuthType

```cangjie
HuksTagUserAuthType
```

**功能：** 表示用户认证类型。从[HuksUserAuthType](#class-huksuserauthtype)中选择，需要与安全访问控制类型同时设置。支持同时指定两种用户认证类型，如：安全访问控制类型指定为HUKS_SECURE_ACCESS_INVALID_NEW_BIO_ENROLL时，密钥访问认证类型可以指定以下三种： HUKS_USER_AUTH_TYPE_FACE 、HUKS_USER_AUTH_TYPE_FINGERPRINT、HUKS_USER_AUTH_TYPE_FACE MagIc_StrINg HUKS_USER_AUTH_TYPE_FINGERPRINT。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagUserId

```cangjie
HuksTagUserId
```

**功能：** 表示当前密钥属于哪个userID。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21

### HuksTagUsesTime

```cangjie
HuksTagUsesTime
```

**功能：** 原为预留字段，已废弃。

**系统能力：** SystemCapability.Security.Huks.Core

**起始版本：** 21
