# 密钥导出（仓颉）

当业务需要获取持久化存储的非对称密钥的公钥时使用，当前支持ECC/RSA/ED25519/X25519/SM2的公钥导出。

> **说明：**
>
> 轻量级设备仅支持RSA公钥导出。

## 开发步骤

1. 指定密钥别名keyAlias，密钥别名最大长度为128字节。

2. 调用接口[exportKeyItem](../../../../reference/source_zh_cn/UniversalKeystoreKit/cj-apis-security_huks.md#func-exportkeyitemstring-huksoptions)，传入参数keyAlias和options。options为预留参数，当前可传入空。

3. 返回值为Bytes类型，以标准的X.509规范的DER格式封装，具体请参见[公钥材料格式](./cj-huks-concepts.md#公钥材料格式)。

## 示例

<!-- compile -->

```cangjie
import kit.PerformanceAnalysisKit.Hilog
import kit.BasicServicesKit.*
import kit.CoreFileKit.*
import kit.AbilityKit.*
import kit.UniversalKeystoreKit.*

func loggerInfo(str: String) {
    Hilog.info(0, "CangjieTest", str)
}

/* 1. 设置密钥别名 */
let keyAlias = "keyAlias"

/* 2. options对象传空 */
let emptyOptions: HuksOptions = HuksOptions(properties: [], inData: Bytes())

try {
    /* 3. 导出公钥 */
    let b = exportKeyItem(keyAlias, emptyOptions)
    loggerInfo("exportKeyItem success")
} catch (e: Exception) {
    loggerInfo("exportKeyItem input arg invalid")
}

```
