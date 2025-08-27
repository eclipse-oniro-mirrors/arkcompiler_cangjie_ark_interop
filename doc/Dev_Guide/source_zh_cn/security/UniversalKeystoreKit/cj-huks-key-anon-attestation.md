# 匿名密钥证明（仓颉）

在使用本功能时，需确保网络通畅。

## 开发步骤

1. 确定密钥别名keyAlias，密钥别名最大长度为128字节。

2. 初始化参数集。

    [HuksOptions](../../../../API_Reference/source_zh_cn/apis/UniversalKeystoreKit/cj-apis-security_huks.md#class-huksoptions)中的properties字段中的参数必须包含[HUKS_TAG_ATTESTATION_CHALLENGE](../../../../API_Reference/source_zh_cn/apis/UniversalKeystoreKit/cj-apis-security_huks.md#enum-hukstag)属性,可选参数包含[HUKS_TAG_ATTESTATION_ID_VERSION_INFO](../../../../API_Reference/source_zh_cn/apis/UniversalKeystoreKit/cj-apis-security_huks.md#enum-hukstag)，[HUKS_TAG_ATTESTATION_ID_ALIAS](../../../../API_Reference/source_zh_cn/apis/UniversalKeystoreKit/cj-apis-security_huks.md#enum-hukstag)属性。

3. 生成非对称密钥，具体请参见[密钥生成](./cj-huks-key-generation-overview.md)。

4. 将密钥别名与参数集作为参数传入[anonAttestKeyItem](../../../../API_Reference/source_zh_cn/apis/UniversalKeystoreKit/cj-apis-security_huks.md#func-anonattestkeyitemstring-huksoptions)方法中，即可证明密钥。

## 完整示例

<!-- compile -->

```cangjie
/*
 * 以下以anonAttestKey的接口操作验证为例
 */
import kit.PerformanceAnalysisKit.Hilog
import kit.BasicServicesKit.*
import kit.CoreFileKit.*
import kit.AbilityKit.*
import kit.UniversalKeystoreKit.*

func loggerInfo(str: String) {
    Hilog.info(0, "CangjieTest", str)
}
/* 1.确定密钥别名 */
let keyAliasString = "key anon attest"
let aliasString = keyAliasString
let aliasUint8 = StringToUint8Array(keyAliasString)
let securityLevel = StringToUint8Array('sec_level')
let challenge = StringToUint8Array('challenge_data')
let versionInfo = StringToUint8Array('version_info')
var anonAttestCertChain: ?Array<String> = None

class throwObject {
    var isThrow: Bool = false

    init(isThrow: Bool) {
        this.isThrow = isThrow
    }
}

/* 封装生成时的密钥参数集 */
let genKeyProperties: Array<HuksParam> = [
    HuksParam(
        HuksTag.HuksTagAlgorithm,
        HuksKeyAlg.HUKS_ALG_RSA
    ),
    HuksParam(
        HuksTag.HuksTagKeySize,
        HuksKeySize.HUKS_RSA_KEY_SIZE_2048
    ),
    HuksParam(
        HuksTag.HuksTagPurpose,
        HuksKeyPurpose.HUKS_KEY_PURPOSE_VERIFY
    ),
    HuksParam(
        HuksTag.HuksTagDigest,
        HuksKeyDigest.HUKS_DIGEST_SHA256
    ),
    HuksParam(
        HuksTag.HuksTagPadding,
        HuksKeyPadding.HUKS_PADDING_PSS
    ),
    HuksParam(
        HuksTag.HuksTagKeyGenerateType,
        HuksKeyGenerateType.HUKS_KEY_GENERATE_TYPE_DEFAULT
    ),
    HuksParam(
        HuksTag.HuksTagBlockMode,
        HuksCipherMode.HUKS_MODE_ECB
    )
]
let genOptions: HuksOptions = HuksOptions(properties: genKeyProperties, inData: Option<Array<UInt8>>.None.getOrThrow())

/* 2.封装证明密钥的参数集 */
let anonAttestKeyProperties: Array<HuksParam> = [
    HuksParam(
        HuksTag.HuksTagAttestationIdSecLevelInfo,
        HuksParamValue.BytesValue(securityLevel.toArray())
    ),
    HuksParam(
        HuksTag.HuksTagAttestationChallenge,
        HuksParamValue.BytesValue(challenge.toArray())
    ),
    HuksParam(
        HuksTag.HuksTagAttestationIdVersionInfo,
        HuksParamValue.BytesValue(versionInfo.toArray())
    )
]
let huksOptions: HuksOptions = HuksOptions(properties: anonAttestKeyProperties, inData: Option<Array<UInt8>>.None.getOrThrow())

func StringToUint8Array(str: String) {
    return str.toArray()
}

func generateKeyItem(keyAlias: String, huksOptions: HuksOptions, throwObject: throwObject) {
    try {
        generateKeyItem(keyAlias, huksOptions)
    } catch (e: Exception) {
        throwObject.isThrow = true
        throw e
    }
}

/* 3.生成密钥 */
func publicGenKeyFunc(keyAlias: String, huksOptions: HuksOptions) {
    loggerInfo("enter generateKeyItem")
    let throwObject: throwObject = throwObject(false)
    try {
        generateKeyItem(keyAlias, huksOptions, throwObject)
    } catch (e: Exception) {
        loggerInfo("generateKeyItem input arg invalid, ${e}")
    }
}

/* 4.证明密钥 */
func anonAttestKeyItem(keyAlias: String, huksOptions: HuksOptions, throwObject: throwObject) {
    return try {
        anonAttestKeyItem(keyAlias, huksOptions)
    } catch (e: Exception) {
        throwObject.isThrow = true
        throw e
    }
}

func publicAnonAttestKey(keyAlias: String, huksOptions: HuksOptions) {
    loggerInfo("enter anonAttestKeyItem")
    let throwObject: throwObject = throwObject(false)
    try {
        anonAttestCertChain = anonAttestKeyItem(keyAlias, huksOptions, throwObject)
    } catch (e: Exception) {
        loggerInfo("anonAttestKeyItem input arg invalid, ${e}")
    }
}

func anonAttestKeyTest() {
    publicGenKeyFunc(aliasString, genOptions)
    publicAnonAttestKey(aliasString, huksOptions)
    loggerInfo('anon attest certChain data: ' + anonAttestCertChain.getOrThrow().toString())
}
```
