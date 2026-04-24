---
name: cjpm-build
description: 当你需要构建当前项目时使用。编译有两种选择，cjpm和gn，本技能针对cjpm。触发词包括："cjpm构建"、"编译"、"编译ark_interop"。
---

# CJPM 构建改造验证技能

## 技能目标

使用 cjpm 构建当前工程并编译出产物

## 适用场景

- 修改了文件代码需要编译出产物进行验证

## 前置依赖

- 环境变量 ProjectRoot：仓库根目录（必填）
- 环境变量 SDK_HOME： 包含cangjie/api/lib/linux_ohos_aarch64_cjnative/ohos的 鸿蒙仓颉sdk目录地址
- cjc、cjpm工具链环境

## 推荐步骤

- 检查SDK_HOME是否存在，是否能找到libohos.hilog.cjo，cjc -v、cjpm -v是否可用,如果可用继续下一步，不可用则停止反馈问题或者寻求其他办法配置可用
- 将.agents/skills/cjpm-build/extra_libs/src 下的内容复制拷贝到ohos相同目录结构下的位置
```shell
cp -r ${ProjectRoot}/.agents/skills/cjpm-build/extra_libs/src/ohos ${ProjectRoot}/
```
- 在项目的ohos目录下执行cjpm build --target=aarch64-linux-ohos 2>&1 >log.txt
```shell
cd  ${ProjectRoot}/ohos && cjpm build --target=aarch64-linux-ohos 2>&1 >log.txt
```
- 检查log.txt是否存在错误，target目录是否已经存在最新时间戳编译产物

## 校验规则

构建成功后必须存在以下产物（目录：ohos/target/<TargetAbi>/<BuildType>/ohos）：

- libohos.ark_interop.so
- ohos.ark_interop.cjo
- libohos.business_exception.so
- ohos.business_exception.cjo

缺少任一文件即判定失败。

