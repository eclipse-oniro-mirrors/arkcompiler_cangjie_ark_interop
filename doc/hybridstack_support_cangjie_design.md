## 需求背景

    在终端手机应用开发部署时，未捕获异常发生时会发生Crash，Crash之后会打印异常的backtrace并生成fault log。
这里涉及两种规格内容，1、异常相关的信息打印包括Error name、Error message、stacktrace等，这种打印信息会同时出现在hilog以及faultlog中，我们称这部分能力为语言层的能力，语言层的异常如果被用户捕获并打印则会出现在hilog中，不会出现在faultlog，因为没有信号crash触发faultlog 2、未捕获异常抛出时会触发信号生成fault log，fault log在语言层的异常stacktrace打印之后会显示一个更详细完整的stacktrace，并且企业应用发布之后，线上几乎只能抓取到faultlog的信息。因此语言层的能力可以支撑用户在开发时调测使用，因为faultlog崩溃的现场并不总是第一现场。而faultlog的能力则可以协助尤其是线上进行定位。
    当前arkts在发生未捕获异常时，语言层只支持打印本语言的调用栈，在faultlog中支持显示arkts、Native的混合栈。
仓颉和ArkTS互操作框架在ArkTS发生异常后，不创建新的ArkTS异常，则也可以保留支持在faultlog中显示出仓颉的栈（ArkTS异常创建时，会记录所有栈帧的PC Array指针，该指针记录在ArkTS的VM上，后续再创建异常则会覆盖该值，faultlog创建时会取该内容解析符号 ，代码参考D:\docker\code\arkcompiler_ets_runtime\ecmascript\napi\dfx_jsnapi.cpp：1234）
    当仓颉发生异常时，用户侧不做任何捕获，但在仓颉异常进入到ArkTS侧时，会捕获原始异常，并封装成一个新的异常来持有一个新创建的ArkTS侧异常并抛出到ArkTS侧，以便ArkTS侧可以捕获仓颉异常（现有实现），因此在跨越边界创建了ArkTS异常，导致faultlog会显示跨越边界时的栈帧，而不是原始的仓颉异常抛出点的栈帧。而且语言层tomString的时候需要对异常栈进行组装才能显示出仓颉和ArkTS，无法显示C（因为仓颉默认不会抓取C的栈帧）。

## 目标
    主要目标，期望做到faultlog中能够顺利显示出仓颉栈帧，无论触发点是仓颉侧抛出的异常还是ArkTS侧抛出的异常。
    次要目标，语言层，期望至少能显示出仓颉和ArkTS的混合栈帧
    可选目标，语言层，能显示出仓颉、ArkTS、Native（C/C++）所有栈帧

## 方案思路

### faultlog层
在目标平台ohos上，仓颉运行时创建仓颉异常时，调用一个互操作框架提供的函数A(名字代号)，该函数会在异常所在帧创建一个ArkTS异常，该异常在跨越互操作边界的时候用来向JS侧抛出

补充约束（原始思路落地口径）：`toJSError` 中取消 `createJSError` 过程，不再在跨边界时创建新的 ArkTS 异常；改为在「仓颉异常对象创建时」通过互操作回调提前创建并缓存 JSError，跨边界只做取回并抛出。

由于ArkTS异常创建时会记录当场的PC指针到VM，只要后续的过程不再创建新的异常，原始的PCArray指针就不会被覆盖。

ArkTS异常可以直接使用原始异常，但是business_exception在现有的实现已经存在，所以为了保证兼容性，仍需要创建，可以在互操作的函数A中识别是互操作框架层创建的business_exception，
这个时候运行时因为business_exception的创建调用了函数A时，不再创建ArkTS异常。因此fault log中可以正常使用ArkTS侧异常的PC Array正常的解析显示。

### 语言层
    
考虑直接在arkui_napi中的D:\docker\code\arkui_napi\interfaces\inner_api\cjffi 提供一个接口B ，来实现类似 DFXJSNApi::GetHybridStackTrace(vm, stackTraceStr);（D:\docker\code\arkui_napi\native_engine\impl\ark\ark_native_engine.cpp：2718）
的相同能力.  在ToString以及单独的getMixedStackTrace接口中调用接口B打印所有语言的栈帧

## 周边配合关系

ets_runtime创建异常，并记录PC指针，触发信号进行faultlog输出，ability_runtime调用arkui_napi，再调用到ets_runtime进行符号解析，最后由ability_runtime添加到faultlog中显示

仓颉运行时创建异常，调用cangjie_ark_interop框架提供的回调函数创建ArkTS异常，ets_runtime创建异常并记录PC指针；互操作在toString或者getMixedStackTrace接口调用时，再调用arkui_napi中cjffi提供的接口进行异常栈解析


## 可优化的空间

语言层和faultlog层各自调用了一遍符号解析的过程，但faultlog本身只在crash出现，因此大部分时候用户仅感知语言层一次调用。但可以优化arkui_napi或者ability_runtime侧代码从而实现如果语言层已经调用并解析过一次，结果缓存下来，在faultlog调用时直接复用缓存的结果。但该优化优先级不高可以一并设计好之后后续实施。