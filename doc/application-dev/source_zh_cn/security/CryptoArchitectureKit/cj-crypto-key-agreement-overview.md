# 密钥协商介绍及算法规格

在非安全通道环境中，在不共享任何秘密的情况下，协商出一个安全的共享密钥，可以使用密钥协商算法。

接下来将介绍系统目前支持的算法及其对应的规格。

## ECDH

ECDH（Elliptic Curve Diffie–Hellman key exchange），算法库框架提供了多种椭圆曲线的ECDH能力。

当创建密钥协商时，需要使用表中“字符串参数”一列，指定密钥协商算法规格。

| 非对称密钥算法 | 字符串参数 | API版本 |
| :-------- | :-------- | :-------- |
| ECC | ECC224 | 12+ |
| ECC | ECC256 | 12+ |
| ECC | ECC384 | 12+ |
| ECC | ECC521 | 12+ |
| ECC | ECC_BrainPoolP160r1 | 12+ |
| ECC | ECC_BrainPoolP160t1 | 12+ |
| ECC | ECC_BrainPoolP192r1 | 12+ |
| ECC | ECC_BrainPoolP192t1 | 12+ |
| ECC | ECC_BrainPoolP224r1 | 12+ |
| ECC | ECC_BrainPoolP224t1 | 12+ |
| ECC | ECC_BrainPoolP256r1 | 12+ |
| ECC | ECC_BrainPoolP256t1 | 12+ |
| ECC | ECC_BrainPoolP320r1 | 12+ |
| ECC | ECC_BrainPoolP320t1 | 12+ |
| ECC | ECC_BrainPoolP384r1 | 12+ |
| ECC | ECC_BrainPoolP384t1 | 12+ |
| ECC | ECC_BrainPoolP512r1 | 12+ |
| ECC | ECC_BrainPoolP512t1 | 12+ |
| ECC | ECC_Secp256k1 | 12+ |
| ECC | ECC | 12+ |

如表中最后一行所示，为了兼容由密钥参数生成的密钥，ECDH密钥协商参数输入密钥类型时支持不指定长度和曲线，密钥协商运算取决于实际输入的密钥。

## X25519

算法库框架提供了X25519密钥协商的能力。

当创建密钥协商时，需要使用表中“字符串参数”一列，指定密钥协商算法规格。

| 非对称密钥算法 | 字符串参数 | API版本 |
| :-------- | :-------- | :-------- |
| X25519 | X25519 | 12+ |

## DH

DH（Diffie–Hellman key exchange），算法库框架提供了DH密钥协商的能力。

当创建密钥协商时，需要使用表中“字符串参数”一列，指定密钥协商算法规格。

| 非对称密钥算法 | 字符串参数 | API版本 |
| :-------- | :-------- | :-------- |
| DH | DH_modp1536 | 12+ |
| DH | DH_modp2048 | 12+ |
| DH | DH_modp3072 | 12+ |
| DH | DH_modp4096 | 12+ |
| DH | DH_modp6144 | 12+ |
| DH | DH_modp8192 | 12+ |
| DH | DH_ffdhe2048 | 12+ |
| DH | DH_ffdhe3072 | 12+ |
| DH | DH_ffdhe4096 | 12+ |
| DH | DH_ffdhe6144 | 12+ |
| DH | DH_ffdhe8192 | 12+ |
| DH | DH | 12+ |

如表中最后一行所示，为了兼容由密钥参数生成的密钥，DH密钥协商参数输入密钥类型时支持不指定知名安全素数群，密钥协商运算取决于实际输入的密钥，且这种情况支持非知名组密钥协商。
