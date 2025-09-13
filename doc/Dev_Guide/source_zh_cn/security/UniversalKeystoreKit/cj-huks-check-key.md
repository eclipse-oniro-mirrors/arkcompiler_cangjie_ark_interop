# 查询密钥是否存在（仓颉）

HUKS提供了接口供应用查询指定密钥是否存在。

## 开发步骤

1. 指定密钥别名keyAlias，密钥别名最大长度为128字节。

2. 初始化密钥属性集。用于查询时指定[密钥的属性TAG](../../../../API_Reference/source_zh_cn/apis/UniversalKeystoreKit/cj-apis-security_huks.md#class-huksoptions)，当查询单个密钥时，TAG字段可为空。

3. 调用接口[isKeyItemExist](../../../../API_Reference/source_zh_cn/apis/UniversalKeystoreKit/cj-apis-security_huks.md#func-iskeyitemexiststring-huksoptions)，查询密钥是否存在。

## 示例

<!-- compile -->

```cangjie
import kit.PerformanceAnalysisKit.Hilog
import kit.BasicServicesKit.*
import kit.CoreFileKit.*
import kit.AbilityKit.*
import kit.UniversalKeystoreKit.*

/* 1. 确定密钥别名 */
let keyAlias = "test_is_key_item_exist"

/* 2. 判断密钥是否存在，变量a应为false */
var a = isKeyItemExist(keyAlias, HuksOptions())

let options = HuksOptions(
    properties: [
        HuksParam(HuksTag.HuksTagAlgorithm, HuksKeyAlg.HUKS_ALG_AES),
        HuksParam(HuksTag.HuksTagKeySize, HuksKeySize.HUKS_AES_KEY_SIZE_128),
        HuksParam(
            HuksTag.HuksTagPurpose,
            HuksParamValue.Uint32Value(1 | 2)
        )
    ],
    inData: Bytes()
)

/* 3. 生成密钥 */
generateKeyItem(keyAlias, options)
/* 4. 判断密钥是否存在，此时变量a应为true */
a = isKeyItemExist(keyAlias, HuksOptions())
```
