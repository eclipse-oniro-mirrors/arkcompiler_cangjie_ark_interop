---
name: verifybuild-e2e-validation
description: 当你需要执行 ark_interop 改造后的端到端构建验证时使用：仓颉互操作库编译 -> 兼容 SDK 产物替换 -> VerifyBuild hvigor 打包 -> collectSDKLibs=true 下运行时标记校验。触发词包括："构建验证全流程"、"VerifyBuild 验证"、"替换兼容 SDK 产物"、"collectSDKLibs 验证"、"getCustomBuildMarker 校验"、"仓颉互操作库替换验证"。
---

# VerifyBuild 端到端构建验证技能

## 技能目标

本技能用于将“代码改动 -> 产物替换 -> 应用构建 -> 运行时验证”固化为可复现流程，并输出可审计证据。

当前技能的适用范围：

- 适合 ark_interop / ark_interop_helper 的 .so / .cjo 集成验证
- 适合单一 RuntimeMarker 驱动的快速冒烟验证
- 适合需要备份兼容 SDK 并保留构建证据的场景

当前技能的不适用范围：

- 不适合无法控制应用代码、也无法让应用输出运行时标记的第三方应用
- 不适合性能基线类、多阶段行为推断类验证
- 不适合把应用代码硬编码日志误当成互操作库真实生效证据的场景

## 适用场景

- 你修改了 ark_interop 或 ark_interop_helper，需验证改动已生效。
- 你需要验证 collectSDKLibs=true 场景下的兼容 SDK 装载行为。
- 你需要通过 RuntimeMarker / getCustomBuildMarker 做确定性校验。

## 运行前置条件

- 目标设备已连接且 `hdc list targets` 有可用设备，不能是 offline / unauthorized
- 设备屏幕已解锁；开发者模式下不能依赖程序化自动解锁
- 目标应用已安装，或提供已签名 hap 供脚本自动安装
- `LaunchCommand` 可在设备上成功拉起应用
- 应用或改动代码路径会向 hilog 输出 `RuntimeMarker`

## 输入参数

- RepoRoot：仓库根目录（必填）
- VerifyBuildRoot：验证工程目录（必填）
- CompatibleSdkRoot：兼容 SDK 根目录（必填）
- TargetAbi：`x86_64-linux-ohos` 或 `aarch64-linux-ohos`（默认 `x86_64-linux-ohos`）
- LaunchCommand：用于拉起应用的 `hdc shell` 命令（必填）
- BuildScriptDir：可选，构建脚本目录（相对 RepoRoot）
- RuntimeMarker：可选，运行时标记字符串（默认 `CUSTOM_BUILD`）
- RuntimeCheckTimeoutSec：可选，运行时标记等待超时秒数（默认 30）
- IncludeNativeArtifacts：可选，是否同时替换 native 产物
- CompatibleSdkPath：可选，显式指定兼容 SDK 的 ABI 目录
- DevEcoRootOverride：可选，显式指定 DevEco / Huawei DevEco Studio 根目录
- AppInstallHap：可选，已签名 hap 路径；提供后脚本会在拉起前自动安装

## 推荐执行命令

```powershell
powershell -ExecutionPolicy Bypass -File ".agents/skills/verifybuild-e2e-validation/run-verifybuild-e2e.ps1" `
  -RepoRoot "D:/code/arkcompiler_cangjie_ark_interop" `
  -VerifyBuildRoot "C:/Users/<user>/DevEcoStudioProjects/MyApplication4" `
  -CompatibleSdkRoot "C:/Users/<user>/.cangjie-sdk/6.0/cangjie" `
  -TargetAbi "x86_64-linux-ohos" `
  -RuntimeCheckTimeoutSec 60 `
  -RuntimeMarker "CUSTOM_BUILD" `
  -AppInstallHap "C:/Users/<user>/DevEcoStudioProjects/MyApplication4/entry/build/default/outputs/default/entry-default-signed.hap" `
  -LaunchCommand "aa start -b com.example.myapplication -a EntryAbility"
```

若 C/C++ 层也改动，请追加：

```powershell
-IncludeNativeArtifacts
```

## 脚本行为说明

脚本会按以下顺序执行：

1. 预检输入路径、DevEco/cjpm/hdc 可用性、设备连通性
2. 自动探测 cjpm 与 hvigor，也支持 `DevEcoRootOverride` 覆盖
3. 自动推导 Compatible SDK ABI 路径，也支持 `CompatibleSdkPath` 显式指定
4. 调用 `build.ps1` 生成 release 产物；若不存在则尝试回退到 `cjpm build --target=<ABI> --release`
5. 校验必需产物存在
6. 备份兼容 SDK 目标 ABI 目录
7. 替换 `.so/.cjo`，可选替换 native 产物
8. 在验证工程执行 hvigor 构建并记录 `hvigor_verifybuild.log`
9. 检查 hvigor 日志关键证据
10. 若提供 `AppInstallHap`，先安装已签名 hap
11. 尝试唤屏后使用 hdc 拉起应用
12. 命中运行时标记后输出 `runtime_marker.log` 与 `hilog_full.log`
13. 生成 `e2e_validation_report.txt`

## 必需产物清单

默认要求：

- libohos.ark_interop.so
- ohos.ark_interop.cjo
- libohos.ark_interop_helper.so
- ohos.ark_interop_helper.cjo

当启用 `-IncludeNativeArtifacts` 时额外要求：

- libutf16string.so
- libark_interop.so

## 失败即停

满足任一条件立即 FAIL：

- 必需路径不存在
- cjpm / hvigor / hdc 不可用
- 无可用设备或设备处于 offline / unauthorized
- 目标 ABI 目录缺失
- 构建命令退出码非 0
- 必需产物缺失
- hvigor 日志无关键证据
- 应用安装失败或拉起失败
- 运行时标记未命中

建议按三类快速分层：

- 环境问题：工具链、路径、设备连通性
- 应用问题：签名、安装、LaunchCommand、屏幕锁定、应用自身未输出标记
- 代码问题：构建失败、互操作产物缺失、替换后未生效

## 输出

执行完成后，至少应包含：

- `hvigor_verifybuild.log`
- `runtime_marker.log`
- `hilog_full.log`
- `e2e_validation_report.txt`
- `sdk_backup/<timestamp>` 备份目录

## 三视角审查模板（建议每次执行后填写）

开发者视角：

1. 命令是否可复现，参数是否完整
2. 产物与 ABI 是否一致
3. 错误是否能定位到具体路径或文件
4. 是否存在明确回滚点

架构师视角：

1. 是否满足 collectSDKLibs=true 的设计目标
2. 是否引入 ABI / 版本耦合风险
3. 是否存在跨模块副作用
4. 证据链是否足够支撑 PASS

使用者视角：

1. 是否有隐藏前提
2. 路径是否可在当前机器找到
3. 失败后是否给出明确修复动作
4. 能否区分环境问题与代码回归
5. 是否存在不可逆风险