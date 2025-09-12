# ohos.ark_interop

ArkTS 应用的开发语言包括 ArkTS、typescript、javascript，ArkTS 互操作库是为仓颉语言提供与 ArkTS 语言互操作能力。

## 导入模块

```cangjie
import ohos.ark_interop.*
```

## interface JSInteropByte

```cangjie
sealed interface JSInteropByte {}
```

**功能：** 该接口用于为可用于声明式互操作宏的Array的泛型约束实现。声明式互操作宏框架场景使用，开发者不需要使用此API。

如下类型扩展了此接口：

* Byte
* 
**起始版本：** 21

## interface JSInteropType

```cangjie
public interface JSInteropType<T> {
    static func fromJSValue(context: JSContext, input: JSValue): T
    func toJSValue(context: JSContext): JSValue
    static func toArkTsType(): String
}
```

**功能：** 该接口用于为可用于声明式互操作宏的类型实现扩展方法。声明式互操作宏框架场景使用，开发者不需要使用此API。

如下类型扩展了此接口：

* 被@Interop[ArkTS]修饰的用户自定义class

* 被@Interop[ArkTS]修饰的用户自定义interface

**起始版本：** 21

### static func fromJSValue(JSContext, JSValue)

```cangjie
static func fromJSValue(context: JSContext, input: JSValue): T
```

**功能：** 将 JSValue 类型数据转换为相应的仓颉类型。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|
|input|[JSValue](#struct-jsvalue)|是|-|ArkTS 统一类型。|

**返回值：**

|类型|说明|
|:----|:----|
|T|仓颉类型。|

### static func toArkTsType()

```cangjie
static func toArkTsType(): String
```

**功能：** 获取仓颉类型对应的ArkTS类型名称。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|String|转换后 ArkTS 类型名。|

### func toJSValue(JSContext)

```cangjie
func toJSValue(context: JSContext): JSValue
```

**功能：** 将仓颉类型数据转换为JSValue。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS 统一类型。|

## interface JSKeyable

```cangjie
sealed interface JSKeyable <: ToString & ToJSValue {
}
```

**功能：** 可用于作为 JSObject 键的接口。该接口为 String 类型实现了扩展方法。声明式互操作宏框架场景使用，开发者不需要使用此API。

**起始版本：** 21

**父类型：**

* ToString
* ToJSValue

## interface ToJSValue

```cangjie
interface ToJSValue {
    func toJSValue(context: JSContext): JSValue
}
```

**功能：** 可用于实现ToJSValue的接口

**起始版本：** 21

### func toJSValue(JSContext)

```cangjie
func toJSValue(context: JSContext): JSValue
```

**功能：** 将仓颉类型数据转换为JSValue。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS 统一类型。|

## extend Int8 <: JSInteropType<Int8>

**功能：** 该接口可用为内置类型 Int8 实现扩展方法。

**起始版本：** 21

### static func fromJSValue(JSContext, JSValue)

```cangjie
static func fromJSValue(context: JSContext, input: JSValue): Int8
```

**功能：** 将 JSValue 类型数据转换为相应的 Int8 类型。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|
|input|[JSValue](#struct-jsvalue)|是|-|ArkTS 统一类型。|

**返回值：** Int8

|类型|说明|
|:----|:----|
|Int8|仓颉类型。|

### static func toArkTsType()

```cangjie
static func toArkTsType(): String
```

**功能：** 获取仓颉 Int8 类型对应的ArkTS类型名称。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|String|转换后 ArkTS 类型名。|

### func toJSValue(JSContext)

```cangjie
func toJSValue(context: JSContext): JSValue
```

**功能：** 将仓颉 Int8 类型数据转换为JSValue。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS 统一类型。|

## extend Int16 <: JSInteropType<Int16>

**功能：** 该接口可用为内置类型 Int16 实现扩展方法。

**起始版本：** 21

### static func fromJSValue(JSContext, JSValue)

```cangjie
static func fromJSValue(context: JSContext, input: JSValue): Int16
```

**功能：** 将 JSValue 类型数据转换为相应的 Int16 类型。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|
|input|[JSValue](#struct-jsvalue)|是|-|ArkTS 统一类型。|

**返回值：**

|类型|说明|
|:----|:----|
|Int16|仓颉类型。|

### static func toArkTsType()

```cangjie
static func toArkTsType(): String
```

**功能：** 获取仓颉 Int16 类型对应的ArkTS类型名称。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|String|转换后 ArkTS 类型名。|

### func toJSValue(JSContext)

```cangjie
func toJSValue(context: JSContext): JSValue
```

**功能：** 将仓颉 Int16 类型数据转换为JSValue。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS 统一类型。|

## extend Int32 <: JSInteropType<Int32>

**功能：** 该接口可用为内置类型 Int32 实现扩展方法。

**起始版本：** 21

### static func fromJSValue(JSContext, JSValue)

```cangjie
static func fromJSValue(context: JSContext, input: JSValue): Int32
```

**功能：** 将 JSValue 类型数据转换为相应的 Int32 类型。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|
|input|[JSValue](#struct-jsvalue)|是|-|ArkTS 统一类型。|

**返回值：**

|类型|说明|
|:----|:----|
|Int32|仓颉类型。|

### static func toArkTsType()

```cangjie
static func toArkTsType(): String
```

**功能：** 获取仓颉 Int32 类型对应的ArkTS类型名称。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|String|转换后 ArkTS 类型名。|

### func toJSValue(JSContext)

```cangjie
func toJSValue(context: JSContext): JSValue
```

**功能：** 将仓颉 Int32 类型数据转换为JSValue。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS 统一类型。|

## extend Int64 <: JSInteropType<Int64>

**功能：** 该接口可用为内置类型 Int64 实现扩展方法。

**起始版本：** 21

### static func fromJSValue(JSContext, JSValue)

```cangjie
static func fromJSValue(context: JSContext, input: JSValue): Int64
```

**功能：** 将 JSValue 类型数据转换为相应的 Int64 类型。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|
|input|[JSValue](#struct-jsvalue)|是|-|ArkTS 统一类型。|

**返回值：**

|类型|说明|
|:----|:----|
|Int64|仓颉类型。|

### static func toArkTsType()

```cangjie
static func toArkTsType(): String
```

**功能：** 获取仓颉 Int64 类型对应的ArkTS类型名称。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|String|转换后 ArkTS 类型名。|

### func toJSValue(JSContext)

```cangjie
func toJSValue(context: JSContext): JSValue
```

**功能：** 将仓颉 Int64 类型数据转换为JSValue。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS 统一类型。|

## extend UInt8 <: JSInteropType<UInt8>

**功能：** 该接口可用为内置类型 UInt8 实现扩展方法。

**起始版本：** 21

### static func fromJSValue(JSContext, JSValue)

```cangjie
static func fromJSValue(context: JSContext, input: JSValue): UInt8
```

**功能：** 将 JSValue 类型数据转换为相应的 UInt8 类型。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|
|input|[JSValue](#struct-jsvalue)|是|-|ArkTS 统一类型。|

**返回值：**

|类型|说明|
|:----|:----|
|UInt8|仓颉类型。|

### static func toArkTsType()

```cangjie
static func toArkTsType(): String
```

**功能：** 获取仓颉 UInt8 类型对应的ArkTS类型名称。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|String|转换后 ArkTS 类型名。|

### func toJSValue(JSContext)

```cangjie
func toJSValue(context: JSContext): JSValue
```

**功能：** 将仓颉 UInt8 类型数据转换为JSValue。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS 统一类型。|

## extend UInt16 <: JSInteropType<UInt16>

**功能：** 该接口可用为内置类型 UInt16 实现扩展方法。

**起始版本：** 21

### static func fromJSValue(JSContext, JSValue)

```cangjie
static func fromJSValue(context: JSContext, input: JSValue): UInt16
```

**功能：** 将 JSValue 类型数据转换为相应的 UInt16 类型。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|
|input|[JSValue](#struct-jsvalue)|是|-|ArkTS 统一类型。|

**返回值：**

|类型|说明|
|:----|:----|
|UInt16|仓颉类型。|

### static func toArkTsType()

```cangjie
static func toArkTsType(): String
```

**功能：** 获取仓颉 UInt16 类型对应的ArkTS类型名称。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|String|转换后 ArkTS 类型名。|

### func toJSValue(JSContext)

```cangjie
func toJSValue(context: JSContext): JSValue
```

**功能：** 将仓颉 UInt16 类型数据转换为JSValue。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS 统一类型。|

## extend UInt32 <: JSInteropType<UInt32>

**功能：** 该接口可用为内置类型 UInt32 实现扩展方法。

**起始版本：** 21

### static func fromJSValue(JSContext, JSValue)

```cangjie
static func fromJSValue(context: JSContext, input: JSValue): UInt32
```

**功能：** 将 JSValue 类型数据转换为相应的 UInt32 类型。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|
|input|[JSValue](#struct-jsvalue)|是|-|ArkTS 统一类型。|

**返回值：**

|类型|说明|
|:----|:----|
|UInt32|仓颉类型。|

### static func toArkTsType()

```cangjie
static func toArkTsType(): String
```

**功能：** 获取仓颉 UInt32 类型对应的ArkTS类型名称。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|String|转换后 ArkTS 类型名。|

### func toJSValue(JSContext)

```cangjie
func toJSValue(context: JSContext): JSValue
```

**功能：** 将仓颉 UInt32 类型数据转换为JSValue。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS 统一类型。|

## extend UInt64 <: JSInteropType<UInt64>

**功能：** 该接口可用为内置类型 UInt64 实现扩展方法。

**起始版本：** 21

### static func fromJSValue(JSContext, JSValue)

```cangjie
static func fromJSValue(context: JSContext, input: JSValue): UInt64
```

**功能：** 将 JSValue 类型数据转换为相应的 UInt64 类型。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|
|input|[JSValue](#struct-jsvalue)|是|-|ArkTS 统一类型。|

**返回值：**

|类型|说明|
|:----|:----|
|UInt64|仓颉类型。|

### static func toArkTsType()

```cangjie
static func toArkTsType(): String
```

**功能：** 获取仓颉 UInt64 类型对应的ArkTS类型名称。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|String|转换后 ArkTS 类型名。|

### func toJSValue(JSContext)

```cangjie
func toJSValue(context: JSContext): JSValue
```

**功能：** 将仓颉 UInt64 类型数据转换为JSValue。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS 统一类型。|

## extend Float16 <: JSInteropType<Float16>

**功能：** 该接口可用为内置类型 Float16 实现扩展方法。

**起始版本：** 21

### static func fromJSValue(JSContext, JSValue)

```cangjie
static func fromJSValue(context: JSContext, input: JSValue): Float16
```

**功能：** 将 JSValue 类型数据转换为相应的 Float16 类型。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|
|input|[JSValue](#struct-jsvalue)|是|-|ArkTS 统一类型。|

**返回值：**

|类型|说明|
|:----|:----|
|Float16|仓颉类型。|

### static func toArkTsType()

```cangjie
static func toArkTsType(): String
```

**功能：** 获取仓颉 Float16 类型对应的ArkTS类型名称。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|String|转换后 ArkTS 类型名。|

### func toJSValue(JSContext)

```cangjie
func toJSValue(context: JSContext): JSValue
```

**功能：** 将仓颉 Float16 类型数据转换为JSValue。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS 统一类型。|

## extend Float32 <: JSInteropType<Float32>

**功能：** 该接口可用为内置类型 Float32 实现扩展方法。

**起始版本：** 21

### static func fromJSValue(JSContext, JSValue)

```cangjie
static func fromJSValue(context: JSContext, input: JSValue): Float32
```

**功能：** 将 JSValue 类型数据转换为相应的 Float32 类型。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|
|input|[JSValue](#struct-jsvalue)|是|-|ArkTS 统一类型。|

**返回值：**

|类型|说明|
|:----|:----|
|Float32|仓颉类型。|

### static func toArkTsType()

```cangjie
static func toArkTsType(): String
```

**功能：** 获取仓颉 Float32 类型对应的ArkTS类型名称。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|String|转换后 ArkTS 类型名。|

### func toJSValue(JSContext)

```cangjie
func toJSValue(context: JSContext): JSValue
```

**功能：** 将仓颉 Float32 类型数据转换为JSValue。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS 统一类型。|

## extend Float64 <: JSInteropType<Float64>

**功能：** 该接口可用为内置类型 Float64 实现扩展方法。

**起始版本：** 21

### static func fromJSValue(JSContext, JSValue)

```cangjie
static func fromJSValue(context: JSContext, input: JSValue): Float64
```

**功能：** 将 JSValue 类型数据转换为相应的 Float64 类型。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|
|input|[JSValue](#struct-jsvalue)|是|-|ArkTS 统一类型。|

**返回值：**

|类型|说明|
|:----|:----|
|Float64|仓颉类型。|

### static func toArkTsType()

```cangjie
static func toArkTsType(): String
```

**功能：** 获取仓颉 Float64 类型对应的ArkTS类型名称。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|String|转换后 ArkTS 类型名。|

### func toJSValue(JSContext)

```cangjie
func toJSValue(context: JSContext): JSValue
```

**功能：** 将仓颉 Float64 类型数据转换为JSValue。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS 统一类型。|

## extend Bool <: JSInteropType<Bool>

**功能：** 该接口可用为内置类型 Bool 实现扩展方法。

**起始版本：** 21

### static func fromJSValue(JSContext, JSValue)

```cangjie
static func fromJSValue(context: JSContext, input: JSValue): Bool
```

**功能：** 将 JSValue 类型数据转换为相应的 Bool 类型。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|
|input|[JSValue](#struct-jsvalue)|是|-|ArkTS 统一类型。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|仓颉类型。|

### static func toArkTsType()

```cangjie
static func toArkTsType(): String
```

**功能：** 获取仓颉 Bool 类型对应的ArkTS类型名称。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|String|转换后 ArkTS 类型名。|

### func toJSValue(JSContext)

```cangjie
func toJSValue(context: JSContext): JSValue
```

**功能：** 将仓颉 Bool 类型数据转换为JSValue。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS 统一类型。|

## extend String <: JSInteropType<String>

**功能：** 该接口可用为内置类型 String 实现扩展方法。

**起始版本：** 21

### static func fromJSValue(JSContext, JSValue)

```cangjie
static func fromJSValue(_: JSContext, input: JSValue): String
```

**功能：** 将 JSValue 类型数据转换为相应的 String 类型。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|_|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|
|input|[JSValue](#struct-jsvalue)|是|-|ArkTS 统一类型。|

**返回值：**

|类型|说明|
|:----|:----|
|String|仓颉类型。|

### static func toArkTsType()

```cangjie
static func toArkTsType(): String
```

**功能：** 获取仓颉 String 类型对应的ArkTS类型名称。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|String|转换后 ArkTS 类型名。|

## extend String <: JSKeyable

**功能：** 该接口可用为内置类型 String 实现扩展方法。

**起始版本：** 21

### func toJSValue(JSContext)

```cangjie
func toJSValue(context: JSContext): JSValue
```

**功能：** 将仓颉 String 类型数据转换为JSValue。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS 统一类型。|

## extend Unit <: JSInteropType<Unit>

**功能：** 该接口可用为内置类型 Unit 实现扩展方法。

**起始版本：** 21

### static func fromJSValue(JSContext, JSValue)

```cangjie
static func fromJSValue(context: JSContext, input: JSValue): Unit
```

**功能：** 将 JSValue 类型数据转换为相应的 Bool 类型。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|
|input|[JSValue](#struct-jsvalue)|是|-|ArkTS 统一类型。|

**返回值：**

|类型|说明|
|:----|:----|
|Unit|仓颉类型。|

### static func toArkTsType()

```cangjie
static func toArkTsType(): String
```

**功能：** 获取仓颉 Unit 类型对应的ArkTS类型名称。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|String|转换后 ArkTS 类型名。|

### func toJSValue(JSContext)

```cangjie
func toJSValue(context: JSContext): JSValue
```

**功能：** 将仓颉 Unit 类型数据转换为JSValue。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS 统一类型。|

## extend<T> Option<T> <: JSInteropType<Option<T>> where T <: JSInteropType<T>

**功能：** 该接口可用为类型 Option<T> 实现扩展方法。

**起始版本：** 21

### static func fromJSValue(JSContext, JSValue)

```cangjie
static func fromJSValue(context: JSContext, input: JSValue): Option<T>
```

**功能：** 将 JSValue 类型数据转换为相应的 Option<T> 类型。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|
|input|[JSValue](#struct-jsvalue)|是|-|ArkTS 统一类型。|

**返回值：**

|类型|说明|
|:----|:----|
|Option<T>|仓颉 Option 类型。|

### static func toArkTsType()

```cangjie
static func toArkTsType(): String
```

**功能：** 获取仓颉 Option<T> 类型对应的ArkTS类型名称。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|String|转换后 ArkTS 类型名。|

### func toJSValue(JSContext)

```cangjie
func toJSValue(context: JSContext): JSValue
```

**功能：** 将仓颉 Option<T> 类型数据转换为JSValue。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS 统一类型。|

## extend<T> Array<T> <: JSInteropType<Array<T>> where T <: JSInteropByte

**功能：** 该接口可用为类型 Array<T> 实现扩展方法。

**起始版本：** 21

### static func fromJSValue(JSContext, JSValue)

```cangjie
static func fromJSValue(_: JSContext, input: JSValue): Array<T>
```

**功能：** 将 JSValue 类型数据转换为相应的 Array<T> 类型。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|_|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|
|input|[JSValue](#struct-jsvalue)|是|-|ArkTS 统一类型。|

**返回值：**

|类型|说明|
|:----|:----|
|Array<T>|仓颉 Option 类型。|

### static func toArkTsType()

```cangjie
static func toArkTsType(): String
```

**功能：** 获取仓颉 Array<T> 类型对应的ArkTS类型名称。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|String|转换后 ArkTS 类型名。|

### func toJSValue(JSContext)

```cangjie
func toJSValue(context: JSContext): JSValue
```

**功能：** 将仓颉 Array<T> 类型数据转换为JSValue。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS 统一类型。|

## class JSArray

```cangjie
public class JSArray <: JSHeapObject {}
```

**功能：** 一个ArkTS数组的安全引用。支持获取长度，读写元素功能。

**起始版本：** 21

**父类型：**

* [JSHeapObject](#class-jsheapobject)

### prop size

```cangjie
public prop size: Int64
```

**功能：** 获取元素数量。

**起始版本：** 21

**类型：** Int64

**读写能力：** 只读

### func \[](Int64)

```cangjie
public operator func[](index: Int64): JSValue
```

**功能：** 往 ArkTS 数组写入一个元素。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|index|Int64|是|-|入参索引，安全范围：[0, 入参数量)。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS 统一类型。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let jsArr = callInfo[0].asArray(context)
    let firstElement = jsArr[0]
    return firstElement
}
```

### func \[](Int64, JSValue)

```cangjie
public operator func[](index: Int64, value!: JSValue): Unit
```

**功能：** 往 ArkTS 数组写入一个元素。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|index|Int64|是|-|写入索引。|
|value|[JSValue](#struct-jsvalue)|是|-| **命名参数。** 写入值。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let jsArr = callInfo[0].asArray(context)
    let setValue = context.number(1.0).toJSValue()
    jsArr[0] = setValue
    return setValue
}
```

### func \[](Int64, JSHeapObject)

```cangjie
public operator func[](index: Int64, value!: JSHeapObject): Unit
```

**功能：** 往 ArkTS 数组写入一个元素。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|index|Int64|是|-|写入索引。|
|value|[JSHeapObject](#class-jsheapobject)|是|-| **命名参数。** 写入值。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let jsArr = callInfo[0].asArray(context)
    let setValue = context.string("abc")
    jsArr[0] = setValue
    return setValue.toJSValue()
}
```

## class JSArrayBuffer

```cangjie
public class JSArrayBuffer <: JSHeapObject {}
```

**功能：** JSArrayBuffer 对象用来表示通用的原始二进制数据缓冲区。通过创建 JS ArrayBuffer 对象，可以获取对象字节长度，转换为仓颉数组。

**起始版本：** 21

**父类型：**

* [JSHeapObject](#class-jsheapobject)

### prop byteLength

```cangjie
public prop byteLength: Int32
```

**功能：** ArrayBuffer 的字节数。

**起始版本：** 21

**类型：** Int32

**读写能力：** 只读

### func readBytes()

```cangjie
public func readBytes(): Array<Byte>
```

**功能：** 读取二进制数据，转换为仓颉数组。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Array\<Byte>|仓颉数组。|

### func toArrayBufferJSValue()

```cangjie
public func toArrayBufferJSValue(): JSValue
```

**功能：** 返回 ArkTS 的 ArrayBuffer 的 JSValue 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS统一类型。|

### func toFloat32Array()

```cangjie
public func toFloat32Array(): Array<Float32>
```

**功能：** 转换为仓颉数组 Array\<Float32>。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Array\<Float32>|仓颉数组。|

### func toFloat32ArrayJSValue()

```cangjie
public func toFloat32ArrayJSValue(): JSValue
```

**功能：** 返回 ArkTS 的 Float32Array 的 JSValue 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS统一类型。|

### func toFloat64Array()

```cangjie
public func toFloat64Array(): Array<Float64>
```

**功能：** 转换为仓颉数组 Array\<Float64>。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Array\<Float64>|仓颉数组。|

### func toFloat64ArrayJSValue()

```cangjie
public func toFloat64ArrayJSValue(): JSValue
```

**功能：** 返回 ArkTS 的 Float64Array 的 JSValue 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS统一类型。|

### func toInt16Array()

```cangjie
public func toInt16Array(): Array<Int16>
```

**功能：** 转换为仓颉数组 Array\<Int16>。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Array\<Int16>|仓颉数组。|

### func toInt16ArrayJSValue()

```cangjie
public func toInt16ArrayJSValue(): JSValue
```

**功能：** 返回 ArkTS 的 Int16Array 的 JSValue 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS统一类型。|

### func toInt32Array()

```cangjie
public func toInt32Array(): Array<Int32>
```

**功能：** 转换为仓颉数组 Array\<Int32>。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Array\<Int32>|仓颉数组。|

### func toInt32ArrayJSValue()

```cangjie
public func toInt32ArrayJSValue(): JSValue
```

**功能：** 返回 ArkTS 的 Int32Array 的 JSValue 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS统一类型。|

### func toInt64Array()

```cangjie
public func toInt64Array(): Array<Int64>
```

**功能：** 转换为仓颉数组 Array\<Int64>。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Array\<Int64>|仓颉数组。|

### func toInt64ArrayJSValue()

```cangjie
public func toInt64ArrayJSValue(): JSValue
```

**功能：** 返回 ArkTS 的 BigInt64Array 的 JSValue 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS统一类型。|

### func toInt8Array()

```cangjie
public func toInt8Array(): Array<Int8>
```

**功能：** 转换为仓颉数组 Array\<Int8>。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Array\<Int8>|仓颉数组。|

### func toInt8ArrayJSValue()

```cangjie
public func toInt8ArrayJSValue(): JSValue
```

**功能：** 返回 ArkTS 的 Int8Array 的 JSValue 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS统一类型。|

### func toUInt16Array()

```cangjie
public func toUInt16Array(): Array<UInt16>
```

**功能：** 转换为仓颉数组 Array\<UInt16>。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Array\<UInt16>|仓颉数组。|

### func toUInt16ArrayJSValue()

```cangjie
public func toUInt16ArrayJSValue(): JSValue
```

**功能：** 返回 ArkTS 的 Uint16Array 的 JSValue 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS统一类型。|

### func toUInt32Array()

```cangjie
public func toUInt32Array(): Array<UInt32>
```

**功能：** 转换为仓颉数组 Array\<UInt32>。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Array\<UInt32>|仓颉数组。|

### func toUInt32ArrayJSValue()

```cangjie
public func toUInt32ArrayJSValue(): JSValue
```

**功能：** 返回 ArkTS 的 Uint32Array 的 JSValue 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS统一类型。|

### func toUInt64Array()

```cangjie
public func toUInt64Array(): Array<UInt64>
```

**功能：** 转换为仓颉数组 Array\<UInt64>。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Array\<UInt64>|仓颉数组。|

### func toUInt64ArrayJSValue()

```cangjie
public func toUInt64ArrayJSValue(): JSValue
```

**功能：** 返回 ArkTS 的 BigUint64Array 的 JSValue 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS统一类型。|

### func toUInt8Array()

```cangjie
public func toUInt8Array(): Array<UInt8>
```

**功能：** 转换为仓颉数组 Array\<UInt8>。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Array\<UInt8>|仓颉数组。|

### func toUInt8ArrayJSValue()

```cangjie
public func toUInt8ArrayJSValue(): JSValue
```

**功能：** 返回 ArkTS 的 Uint8Array 的 JSValue 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS统一类型。|

### func toUInt8ClampedArrayJSValue()

```cangjie
public func toUInt8ClampedArrayJSValue(): JSValue
```

**功能：** 返回 ArkTS 的 Uint8ClampedArray 的 JSValue 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS统一类型。|

## class JSArrayEx

```cangjie
public class JSArrayEx<T> <: JSInteropType<JSArrayEx<T>> where T <: JSInteropType <T> {
    public init(arr: Array<T>)
}
```

**功能：** 在声明式互操作宏中使用，对应ArkTS的 Array\<T> 类型。

**起始版本：** 21

**父类型：**

* [JSInteropType\<JSArrayEx\<T>>](#interface-jsinteroptype)

### prop size

```cangjie
public prop size: Int64
```

**功能：** 获取元素数量。

**起始版本：** 21

**类型：** Int64

**读写能力：** 只读

### init(Array\<T>)

```cangjie
public init(arr: Array<T>)
```

**功能：** 给定 Array\<T>，构造对应的 JSArrayEx\<T> 实例。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|arr|Array\<T>|是|-|根据该 Array 实例创建。|

### static func fromJSValue(JSContext, JSValue)

```cangjie
public static func fromJSValue(context: JSContext, input: JSValue): JSArrayEx<T>
```

**功能：** 从 JSValue 转换为 JSArrayEx。声明式互操作宏框架场景使用，开发者不需要使用此API。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|
|input|[JSValue](#struct-jsvalue)|是|-|ArkTS 统一类型。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSArrayEx](#class-jsarrayex)\<T>|声明式互操作宏类型 JSArrayEx。|

### static func toArkTsType()

```cangjie
public static func toArkTsType(): String
```

**功能：** 获取仓颉类型对应的ArkTS类型名称。声明式互操作宏框架场景使用，开发者不需要使用此API。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|String|转换后 ArkTS 类型名。|

### func clone()

```cangjie
public func clone(): JSArrayEx<T>
```

**功能：** 克隆 JSArrayEx，将对 JSArrayEx 数据进行深拷贝。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSArrayEx](#class-jsarrayex)\<T>|克隆得到的新 JSArrayEx。|

### func concat(JSArrayEx\<T>)

```cangjie
public func concat(other: JSArrayEx<T>): JSArrayEx<T>
```

**功能：** 该函数将创建一个新的 JSArrayEx，内容是当前 JSArrayEx 后面串联 other 指向的 JSArrayEx。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|other|[JSArrayEx](#class-jsarrayex)\<T>|是|-|串联到末尾的 JSArrayEx。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSArrayEx](#class-jsarrayex)\<T>|串联得到的新 JSArrayEx。|

### func get(Int64)

```cangjie
public func get(index: Int64): Option<T>
```

**功能：** 获取数组中下标 index 对应的元素。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|index|Int64|是|-|要获取的值的下标。|

**返回值：**

|类型|说明|
|:----|:----|
|Option\<T>|当前数组中下标 index 对应的值。|

### func isEmpty()

```cangjie
public func isEmpty(): Bool
```

**功能：** 判断数组是否为空。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Bool|如果数组为空，返回 true，否则，返回 false。|

### func set(Int64, T)

```cangjie
public func set(index: Int64, element: T): Unit
```

**功能：** 修改数组中下标 index 对应的值。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|index|Int64|是|-|需要修改的值的下标，取值范围为 [0..this.size]。|
|element|T|是|-|修改的目标值。|

### func toArray()

```cangjie
public func toArray(): Array<T>
```

**功能：** 转换为 Array。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Array\<T>|转换后的仓颉数组。|

### func toJSValue(JSContext)

```cangjie
public func toJSValue(context: JSContext): JSValue
```

**功能：** 转换为 JSValue。声明式互操作宏框架场景使用，开发者不需要使用此API。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS 统一类型。|

### func \[](Int64)

```cangjie
public operator func[](index: Int64): T
```

**功能：** 获取数组下标 index 对应的值。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|index|Int64|是|-|要获取的值的下标。|

**返回值：**

|类型|说明|
|:----|:----|
|T|当前数组中下标 index 对应的值。|

### func \[](Int64, T)

```cangjie
public operator func[](index: Int64, value!: T)
```

**功能：** 修改数组中下标 index 对应的值。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|index|Int64|是|-|需要修改的值的下标，取值范围为 [0..this.size]。|
|value|T|是|-| **命名参数。** 修改的目标值。|

## class JSBigInt

```cangjie
public class JSBigInt <: JSHeapObject {}
```

**起始版本：** 21

**功能：** JSBigInt 对象用来表示 JS bigint 类型的安全引用。通过创建 JS bigint 对象，可以转换为仓颉 Int64，转换为仓颉 BigInt。

**父类型：**

* [JSHeapObject](#class-jsheapobject)

### func toBigInt()

```cangjie
public func toBigInt(): BigInt
```

**功能：** 转换为仓颉 BigInt。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|BigInt|仓颉 BigInt。|

## class JSClass

```cangjie
public class JSClass <: JSHeapObject {}
```

**功能：** 一个ArkTS类（构造函数）的安全引用。可以为该类添加方法和accessor、创建该类的实例。

**起始版本：** 21

**父类型：**

* [JSHeapObject](#class-jsheapobject)

### prop prototype

```cangjie
public prop prototype: JSObject
```

**功能：** 类的原型对象。

**起始版本：** 21

**类型：** [JSObject](#class-jsobject)

**读写能力：** 只读

### func addAccessor(JSKeyable, ?JSFunction, ?JSFunction)

```cangjie
public func addAccessor(key: JSKeyable, getter!: ?JSFunction = None, setter!: ?JSFunction = None): Unit
```

**功能：** 为当前 ArkTS 类定义一对 getter 和 setter。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|key|[JSKeyable](#interface-jskeyable)|是|-|属性键。|
|getter|?[JSFunction](#class-jsfunction)|否|None| **命名参数。** getter 实现。|
|setter|?[JSFunction](#class-jsfunction)|否|None| **命名参数。** setter 实现。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let ctor: JSLambda = { _, callInfo =>
        return callInfo.thisArg
    }
    let clazz = context.clazz(ctor)
    let getClassKind: JSLambda = { context, _ =>
        context.string("aaa").toJSValue()
    }
    clazz.addAccessor("classKind", getter: context.function(getClassKind))
    let obj = clazz.new()
    let classKind = obj.getProperty(context, "classKind").toString(context)
    println("class kind is ${classKind}")
    return obj
}
```

### func addAccessor(JSKeyable, ?JSLambda, ?JSLambda)

```cangjie
public func addAccessor(key: JSKeyable, getter!: ?JSLambda = None, setter!: ?JSLambda = None): Unit
```

**功能：** 为当前 ArkTS 类定义一对 getter 和 setter。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|key|[JSKeyable](#interface-jskeyable)|是|-|属性键。|
|getter|?[JSLambda](#type-jslambda)|否|None| **命名参数。** getter 实现。|
|setter|?[JSLambda](#type-jslambda)|否|None| **命名参数。** setter 实现。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let ctor: JSLambda = { _, callInfo =>
        return callInfo.thisArg
    }
    let clazz = context.clazz(ctor)
    let getClassKind: JSLambda = { context, _ =>
        context.string("aaa").toJSValue()
    }
    clazz.addAccessor("classKind", getter: getClassKind)
    let obj = clazz.new()
    let classKind = obj.getProperty(context, "classKind").toString(context)
    println("class kind is ${classKind}")
    return obj
}
```

### func addMethod(JSKeyable, JSFunction)

```cangjie
public func addMethod(key: JSKeyable, method: JSFunction): Unit
```

**功能：** 为当前 ArkTS 类定义一个方法。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|key|[JSKeyable](#interface-jskeyable)|是|-|属性键。|
|method|[JSFunction](#class-jsfunction)|是|-|方法实现。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let ctor: JSLambda = { _, callInfo =>
        return callInfo.thisArg
    }
    let clazz = context.clazz(ctor)
    let getClassKind: JSLambda = { context, _ =>
        context.string("aaa").toJSValue()
    }
    clazz.addMethod("getClassKind", context.function(getClassKind))
    let obj = clazz.new()
    let classKind = obj.getProperty(context, "classKind").toString(context)
    println("class kind is ${classKind}")
    return obj
}
```

### func addMethod(JSKeyable, JSLambda)

```cangjie
public func addMethod(key: JSKeyable, method: JSLambda): Unit
```

**功能：** 为当前 ArkTS 类定义一个方法。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|key|[JSKeyable](#interface-jskeyable)|是|-|属性键。|
|method|[JSLambda](#type-jslambda)|是|-|方法实现。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let ctor: JSLambda = { _, callInfo =>
        return callInfo.thisArg
    }
    let clazz = context.clazz(ctor)
    let getClassKind: JSLambda = { context, _ =>
        context.string("aaa").toJSValue()
    }
    clazz.addMethod("getClassKind", getClassKind)
    let obj = clazz.new()
    let classKind = obj.getProperty(context, "classKind").toString(context)
    println("class kind is ${classKind}")
    return obj
}
```

### func addProperty(JSKeyable, JSValue)

```cangjie
public func addProperty(key: JSKeyable, value: JSValue): Unit
```

**功能：** 为目标 ArkTS 类新增一个数据成员，一般用于定义不可变属性。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|key|[JSKeyable](#interface-jskeyable)|是|-|属性键。|
|value|[JSValue](#struct-jsvalue)|是|-|属性值。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let ctor: JSLambda = { _, callInfo =>
        return callInfo.thisArg
    }
    let clazz = context.clazz(ctor)
    clazz.addProperty("classKind", context.string("CustomClass").toJSValue())
    let obj = clazz.new()
    let classKind = obj.getProperty(context, "classKind").toString(context)
    println("class kind is ${classKind}")
    return obj
}
```

### func new()

```cangjie
public func new(): JSValue
```

**功能：** 通过 ArkTS 类实例化一个新对象。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|new 出来的实例。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let ctor: JSLambda = { _, callInfo =>
        return callInfo.thisArg
    }
    let clazz = context.clazz(ctor)
    let obj = clazz.new()
    return obj
}
```

### func new(JSValue)

```cangjie
public func new(arg: JSValue): JSValue
```

**功能：** 通过 ArkTS 类实例化一个新对象。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|arg|[JSValue](#struct-jsvalue)|是|-|new 的入参。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|实例化出来的新对象。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let ctor: JSLambda = { context, callInfo =>
        let firstArg = callInfo[0]
        let thisArg = callInfo.thisArg
        thisArg.setProperty("id", firstArg)
        return thisArg
    }
    let clazz = context.clazz(ctor)
    let id = context.number(1.0)
    let obj = clazz.new(id.toJSValue())
    return obj
}
```

### func new(Array\<JSValue>)

```cangjie
public func new(args: Array<JSValue>): JSValue
```

**功能：** 通过 ArkTS 类实例化一个新对象。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|args|Array\<[JSValue](#struct-jsvalue)>|是|-|new 的参数列表。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|实例化出来的新对象。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let ctor: JSLambda = { context, callInfo =>
        let id = callInfo[0]
        let name = callInfo[1]
        let thisArg = callInfo.thisArg
        thisArg.setProperty("id", id)
        thisArg.setProperty("name", name)
        return thisArg
    }
    let clazz = context.clazz(ctor)
    let id = context.number(1.0)
    let name = context.string("aaa")
    let obj = clazz.new([id.toJSValue(), name.toJSValue()])
    return obj
}
```

## class JSContext

```cangjie
public class JSContext {}
```

**功能：** 一个单线程执行的 ArkTS 互操作上下文。

JSContext和ArkTS运行时是一一对应的关系，其主要目标是创建JSValue和安全引用、管理ArkTS侧引用的仓颉对象的生命周期。

一个JSContext持有一个ArkTS运行时的弱引用，这个JSContext不会影响ArkTS运行时的生命周期，当ArkTS运行时失效后使用这个JSContext会抛出仓颉异常。

**起始版本：** 21

### prop env

```cangjie
public prop env: JSEnv
```

**功能：** ArkTS 互操作上下文。

**起始版本：** 21

**类型：** JSEnv

**读写能力：** 只读

### prop global

```cangjie
public prop global: JSObject
```

**功能：** js全局环境变量 globalThis。

**起始版本：** 21

**类型：** [JSObject](#class-jsobject)

**读写能力：** 只读

### func array(Array\<JSValue>)

```cangjie
public func array(arr: Array<JSValue>): JSArray
```

**功能：** 创建一个 ArkTS 数组。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|arr|Array\<[JSValue](#struct-jsvalue)>|是|-|ArkTS 数组的引用。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSArray](#class-jsarray)|ArkTS 数组|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let result = context.array([])
    return result.toJSValue()
}
```

### func arrayBuffer(Int32)

```cangjie
public func arrayBuffer(length: Int32): JSArrayBuffer
```

**功能：** 通过内存块创建一个 ArkTS ArrayBuffer。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|length|Int32|是|-|内存块大小。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSArrayBuffer](#class-jsarraybuffer)|ArkTS ArrayBuffer 对象的引用。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let result = context.arrayBuffer(Int32(10))
    return result.toJSValue()
}
```

### func arrayBuffer(Array\<Byte>)

```cangjie
public func arrayBuffer(data: Array<Byte>): JSArrayBuffer
```

**功能：** 通过内存块创建一个 ArkTS ArrayBuffer。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|data|Array\<Byte>|是|-|仓颉数组。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSArrayBuffer](#class-jsarraybuffer)|ArkTS ArrayBuffer 对象的引用。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let array : Array<Byte> = [1, 2, 3, 4, 5]
    let result = context.arrayBuffer(array)
    return result.toJSValue()
}
```

### func arrayBuffer(Array\<Int8>)

```cangjie
public func arrayBuffer(data: Array<Int8>): JSArrayBuffer
```

**功能：** 通过内存块创建一个 ArkTS ArrayBuffer。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|data|Array\<Int8>|是|-|仓颉数组。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSArrayBuffer](#class-jsarraybuffer)|ArkTS ArrayBuffer 对象的引用。|

### func arrayBuffer(Array\<Int16>)

```cangjie
public func arrayBuffer(data: Array<Int16>): JSArrayBuffer
```

**功能：** 通过内存块创建一个 ArkTS ArrayBuffer。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|data|Array\<Int16>|是|-|仓颉数组。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSArrayBuffer](#class-jsarraybuffer)|ArkTS ArrayBuffer 对象的引用。|

### func arrayBuffer(Array\<UInt16>)

```cangjie
public func arrayBuffer(data: Array<UInt16>): JSArrayBuffer
```

**功能：** 通过内存块创建一个 ArkTS ArrayBuffer。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|data|Array\<UInt16>|是|-|仓颉数组。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSArrayBuffer](#class-jsarraybuffer)|ArkTS ArrayBuffer 对象的引用。|

### func arrayBuffer(Array\<UInt32>)

```cangjie
public func arrayBuffer(data: Array<UInt32>): JSArrayBuffer
```

**功能：** 通过内存块创建一个 ArkTS ArrayBuffer。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|data|Array\<UInt32>|是|-|仓颉数组。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSArrayBuffer](#class-jsarraybuffer)|ArkTS ArrayBuffer 对象的引用。|

### func arrayBuffer(Array\<Int32>)

```cangjie
public func arrayBuffer(data: Array<Int32>): JSArrayBuffer
```

**功能：** 通过内存块创建一个 ArkTS ArrayBuffer。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|data|Array\<Int32>|是|-|仓颉数组。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSArrayBuffer](#class-jsarraybuffer)|ArkTS ArrayBuffer 对象的引用。|

### func arrayBuffer(Array\<Float32>)

```cangjie
public func arrayBuffer(data: Array<Float32>): JSArrayBuffer
```

**功能：** 通过内存块创建一个 ArkTS ArrayBuffer。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|data|Array\<Float32>|是|-|仓颉数组。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSArrayBuffer](#class-jsarraybuffer)|ArkTS ArrayBuffer 对象的引用。|

### func arrayBuffer(Array\<Int64>)

```cangjie
public func arrayBuffer(data: Array<Int64>): JSArrayBuffer
```

**功能：** 通过内存块创建一个 ArkTS ArrayBuffer。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|data|Array\<Int64>|是|-|仓颉数组。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSArrayBuffer](#class-jsarraybuffer)|ArkTS ArrayBuffer 对象的引用。|

### func arrayBuffer(Array\<UInt64>)

```cangjie
public func arrayBuffer(data: Array<UInt64>): JSArrayBuffer
```

**功能：** 通过内存块创建一个 ArkTS ArrayBuffer。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|data|Array\<UInt64>|是|-|仓颉数组。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSArrayBuffer](#class-jsarraybuffer)|ArkTS ArrayBuffer 对象的引用。|

### func arrayBuffer(Array\<Float64>)

```cangjie
public func arrayBuffer(data: Array<Float64>): JSArrayBuffer
```

**功能：** 通过内存块创建一个 ArkTS ArrayBuffer。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|data|Array\<Float64>|是|-|仓颉数组。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSArrayBuffer](#class-jsarraybuffer)|ArkTS ArrayBuffer 对象的引用。|

### func arrayBuffer(CPointer\<Byte>, Int32, JSBufferFinalizer)

```cangjie
public unsafe func arrayBuffer(rawData: CPointer<Byte>, length: Int32, finalizer: JSBufferFinalizer): JSArrayBuffer
```

**功能：** 通过内存块创建一个 ArkTS ArrayBuffer。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|rawData|CPointer\<Byte>|是|-|内存块地址。|
|length|Int32|是|-|内存块大小。|
|finalizer|[JSBufferFinalizer](#type-jsbufferfinalizer)|是|-|内存块回收函数。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSArrayBuffer](#class-jsarraybuffer)|ArkTS ArrayBuffer 对象的引用。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let rawPtr = unsafe {
        LibC.malloc<Byte>(count: 10)
    }
    let result = unsafe { context.arrayBuffer(rawPtr, 10) { rawPtr =>
        LibC.free(rawPtr)
    }}
    return result.toJSValue()
}
```

### func bigint(Int64)

```cangjie
public func bigint(value: Int64): JSBigInt
```

**功能：** 通过仓颉 BigInt 创建一个等值的 ArkTS bigint。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|value|Int64|是|-|仓颉BigInt。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSBigInt](#class-jsbigint)|ArkTS bigint 对象的引用。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let result = context.bigint(100)
    return result.toJSValue()
}
```

### func bigint(BigInt)

```cangjie
public func bigint(value: BigInt): JSBigInt
```

**功能：** 通过仓颉 BigInt 创建一个等值的 ArkTS bigint。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|value|BigInt|是|-|仓颉BigInt。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSBigInt](#class-jsbigint)|ArkTS bigint 对象的引用。|

**示例：**

<!--compile-->
```cangjie
import std.math.numeric.BigInt

func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let result = context.bigint(BigInt(100))
    return result.toJSValue()
}
```

### func boolean(Bool)

```cangjie
public func boolean(value: Bool): JSBoolean
```

**功能：** 创建一个 ArkTS boolean。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|value|Bool|是|-|仓颉布尔值。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSBoolean](#struct-jsboolean)|ArkTS 布尔值。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let result = context.boolean(true)
    return result.toJSValue()
}
```

### func clazz(JSLambda, ?JSClass)

```cangjie
public func clazz(ctor: JSLambda, superClass!: ?JSClass = None): JSClass
```

**功能：** 创建一个 ArkTS 类。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|ctor|[JSLambda](#type-jslambda)|是|-|作为类构造的仓颉函数。|
|superClass|?[JSClass](#class-jsclass)|否|None| **命名参数。** ArkTS 类的父类。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSClass](#class-jsclass)|ArkTS 类的引用。|

**示例：**

<!--compile-->
```cangjie
func clsCtor(context: JSContext, callInfo: JSCallInfo): JSValue {
    callInfo.thisArg
}

func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let result = context.clazz(clsCtor)
    return result.toJSValue()
}
```

### func external(SharedObject)

```cangjie
public func external(data: SharedObject): JSExternal
```

**功能：** 创建一个 ArkTS 对仓颉对象的引用。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|data|[SharedObject](#class-sharedobject)|是|-|原始仓颉对象。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSExternal](#class-jsexternal)|ArkTS 对仓颉对象的引用。|

**示例：**

<!--compile-->
```cangjie
class Data <: SharedObject {}

func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let data = Data()
    let result = context.external(data)
    return result.toJSValue()
}
```

### func function(JSLambda)

```cangjie
public func function(lambda: JSLambda): JSFunction
```

**功能：** 创建一个 ArkTS 函数。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|lambda|[JSLambda](#type-jslambda)|是|-|仓颉函数。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSFunction](#class-jsfunction)|ArkTS function 的引用。|

**示例：**

<!--compile-->
```cangjie
func jsCallback(context: JSContext, callInfo: JSCallInfo): JSValue {
    return context.undefined().toJSValue()
}

func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let result = context.function(jsCallback)
    return result.toJSValue()
}
```

### func getNapiEnv()

```cangjie
public func getNapiEnv(): napi_env
```

**功能：** 获取一个全局环境的指针。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[napi_env](#type-napi_env)|全局环境的指针。|

### func isInBindThread()

```cangjie
public func isInBindThread(): Bool
```

**功能：** 多线程工具：检查当前线程是否可执行互操作接口。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Bool|为 true 时当前线程可以调用互操作接口|

**示例：**

<!--compile-->
```cangjie
func createObject(context: JSContext): JSObject {
    if (!context.isInBindThread()) {
        throw Exception("not able to call arkts on current thread")
    }
    return context.object()
}
```

### func null()

```cangjie
public func null(): JSNull
```

**功能：** 创建一个 ArkTS null。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSNull](#struct-jsnull)|返回 ArkTS null。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let result = context.null()
    return result.toJSValue()
}
```

### func number(Float64)

```cangjie
public func number(value: Float64): JSNumber
```

**功能：** 创建一个 ArkTS number。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|value|Float64|是|-|仓颉Int32数。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSNumber](#struct-jsnumber)|ArkTS number。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let result = context.number(1.0)
    return result.toJSValue()
}
```

### func number(Int32)

```cangjie
public func number(value: Int32): JSNumber
```

**功能：** 创建一个 ArkTS number。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|value|Int32|是|-|仓颉Int32数。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSNumber](#struct-jsnumber)|ArkTS number。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let result = context.number(Int32(10))
    return result.toJSValue()
}
```

### func object()

```cangjie
public func object(): JSObject
```

**功能：** 创建一个空的 ArkTS object 引用。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSObject](#class-jsobject)|ArkTS object 引用。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let result = context.object()
    return result.toJSValue()
}
```

### func postJSTask(() -> Unit)

```cangjie
public func postJSTask(callback: ()->Unit): Unit
```

**功能：** 多线程工具：创建在 ArkTS 线程执行的任务。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|callback|()->Unit|是|-|在 ArkTS 执行的任务|

**示例：**

<!--compile-->
```cangjie
func createObject(context: JSContext, callback: (JSObject)->Unit): Unit {
    if (context.isInBindThread()) {
        callback(context.object())
    } else {
        context.postJSTask {
            callback(context.object())
        }
    }
}
```

### func promiseCapability()

```cangjie
public func promiseCapability(): JSPromiseCapability
```

**功能：** 创建一个 ArkTS Promise。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSPromiseCapability](#class-jspromisecapability)|ArkTS promise 的 native 引用。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let result = context.promiseCapability()
    return result.toJSValue()
}
```

### func requireSystemNativeModule(String, ?String)

```cangjie
public func requireSystemNativeModule(moduleName: String, prefix!: ?String = None): JSValue
```

**功能：** 加载系统内置的 ArkTS napi 模块。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|moduleName|String|是|-|ArkTS napi 模块的注册名称|
|prefix|?String|否|None| **命名参数。** ArkTS napi 模块的归档目录，在 /system/lib64/module 下可省，在子目录下是子目录名称|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|模块返回值，一般是一个对象，如果加载出错将会返回 undefined|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext): Unit {
    let hilog = context.requireSystemNativeModule("hilog")
    let pushService = context.requireSystemNativeModule("core.push.pushService", prefix: "hms")
}
```

### func string(String)

```cangjie
public func string(value: String): JSString
```

**功能：** 创建一个 ArkTS string。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|value|String|是|-|仓颉字符串。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSString](#class-jsstring)|ArkTS 字符串引用。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let result = context.string("abc")
    return result.toJSValue()
}
```

### func string(Utf16String)

```cangjie
public func string(value: Utf16String): JSString
```

**功能：** 从 Utf16String 创建 JSString。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|value|[Utf16String](#class-utf16string)|是|-|源 Utf16String 对象。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSString](#class-jsstring)|根据源对象创建的 JSString。|

### func symbol(String)

```cangjie
public func symbol(description!: String = ""): JSSymbol
```

**功能：** 创建一个 ArkTS symbol 对象。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|description|String|否|""| **命名参数。** symbol的描述。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSSymbol](#class-jssymbol)|ArkTS symbol 对象的引用。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let result = context.symbol()
    let symbol1 = context.symbol(description: "Symbol1")
    return result.toJSValue()
}
```

### func undefined()

```cangjie
public func undefined(): JSUndefined
```

**功能：** 创建一个 ArkTS undefined。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSUndefined](#struct-jsundefined)|返回 ArkTS undefined。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let result = context.undefined()
    return result.toJSValue()
}
```

## class JSExternal

```cangjie
public class JSExternal <: JSHeapObject {}
```

**功能：** 一个可传递到ArkTS侧的仓颉对象引用。可以获取绑定的仓颉对象。

JSExternal的目标是传递一个仓颉对象的强引用到ArkTS运行时，配合其他用户自定义的互操作接口可以访问这个仓颉对象。

**起始版本：** 21

**父类型：**

* [JSHeapObject](#class-jsheapobject)

### func cast\<T>() where T <: SharedObject

```cangjie
public func cast<T>(): Option<T> where T <: SharedObject
```

**功能：** 获取绑定的 SharedObject 对象并转换为 T 类型。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Option\<T>|绑定的仓颉对象。|

**示例：**

<!--compile-->
```cangjie
class Data <: SharedObject {
    func doSth() {}
}

func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let external = callInfo[0].asExternal(context)

    if (let Some(data) <- external.cast<Data>()) {
         data.doSth()
     }

    context.undefined().toJSValue()
}
```

### func getData()

```cangjie
public func getData(): SharedObject
```

**功能：** 获取绑定的 SharedObject 对象。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[SharedObject](#class-sharedobject)|绑定的仓颉对象。|

**示例：**

<!--compile-->
```cangjie
class Data <: SharedObject {
    func doSth() {}
}

func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let external = callInfo[0].asExternal(context)

    let sharedObject = external.getData()
    if (let Some(data) <- (sharedObject as Data)) {
         data.doSth()
     }

    context.undefined().toJSValue()
}
```

## class JSFunction

```cangjie
public class JSFunction <: JSHeapObject {}
```

**功能：** 一个 ArkTS 函数的安全引用。

**起始版本：** 21

**父类型：**

* [JSHeapObject](#class-jsheapobject)

### func call(JSValue)

```cangjie
public func call(thisArg!: JSValue = context.undefined().toJSValue()): JSValue
```

**功能：** 进行一次 ArkTS 函数调用（多个参数）。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|thisArg|[JSValue](#struct-jsvalue)|否|context.undefined().toJSValue()| **命名参数。** this 指针。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|函数调用返回值。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let callback = callInfo[0].asFunction(context)
    return callback.call()
}
```

### func call(JSValue, JSValue)

```cangjie
public func call(arg: JSValue, thisArg!: JSValue = context.undefined().toJSValue()): JSValue
```

**功能：** 进行一次 ArkTS 函数调用（多个参数）。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|arg|[JSValue](#struct-jsvalue)|是|-|ArkTS 函数调用入参。|
|thisArg|[JSValue](#struct-jsvalue)|否|context.undefined().toJSValue()| **命名参数。** ArkTS函数调用 this 指针。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|函数调用返回值。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let callback = callInfo[0].asFunction(context)
    let arg0 = context.number(1.0).toJSValue()
    return callback.call(arg0)
}
```

### func call(Array\<JSValue>, JSValue)

```cangjie
public func call(args: Array<JSValue>, thisArg!: JSValue = context.undefined().toJSValue()): JSValue
```

**功能：** 进行一次 ArkTS 函数调用（多个参数）。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|args|Array\<[JSValue](#struct-jsvalue)>|是|-|参数列表。|
|thisArg|[JSValue](#struct-jsvalue)|否|context.undefined().toJSValue()| **命名参数。** this 指针。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|函数调用返回值。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let callback = callInfo[0].asFunction(context)
    let arg0 = context.number(1.0).toJSValue()
    let arg1 = context.boolean(false).toJSValue()
    return callback.call([arg0, arg1])
}
```

## class JSHashMapEx

```cangjie
public class JSHashMapEx<K, V> <: JSInteropType<JSHashMapEx<K,V>> where K <: JSKeyable & Hashable & Equatable <K> & JSInteropType <K>V <: JSInteropType <V> {
    public init(map: HashMap<K, V>)
    public init()
}
```

**功能：** 在声明式互操作宏中使用，对应ArkTS的 Map 类型。

**起始版本：** 21

**父类型：**

* [JSInteropType\<JSHashMapEx\<K,V>>](#interface-jsinteroptype)

### prop size

```cangjie
public prop size: Int64
```

**功能：** 返回键值对的个数。

**起始版本：** 21

**类型：** Int64

**读写能力：** 只读

### init(HashMap\<K,V>)

```cangjie
public init(map: HashMap<K, V>)
```

**功能：** 构造空的 JSHashMapEx\<K, V> 实例。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|map|HashMap\<K, V>|是|-|根据该 HashMap 实例创建。|

### init()

```cangjie
public init()
```

**功能：** 构造空的 JSHashMapEx\<K, V> 实例。

**起始版本：** 21

### static func fromJSValue(JSContext, JSValue)

```cangjie
public static func fromJSValue(context: JSContext, input: JSValue): JSHashMapEx<K, V>
```

**功能：** 从 JSValue 转换为 JSHashMapEx。声明式互操作宏框架场景使用，开发者不需要使用此API。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|
|input|[JSValue](#struct-jsvalue)|是|-|ArkTS 统一类型。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSHashMapEx](#class-jshashmapex)\<K, V>|声明式互操作宏类型 JSHashMapEx。|

### static func toArkTsType()

```cangjie
public static func toArkTsType(): String
```

**功能：** 获取仓颉类型对应的ArkTS类型名称。声明式互操作宏框架场景使用，开发者不需要使用此API。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|String|转换后 ArkTS 类型名。|

### func clear()

```cangjie
public func clear(): Unit
```

**功能：** 从此 HashMapEx 中移除所有元素。

**起始版本：** 21

### func clone()

```cangjie
public func clone(): JSHashMapEx<K, V>
```

**功能：** 克隆 JSHashMapEx，将对 JSHashMapEx 数据进行深拷贝。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSHashMapEx](#class-jshashmapex)\<K, V>|克隆得到的新 JSHashMapEx。|

### func containsAll(Collection\<K>)

```cangjie
public func containsAll(keys: Collection<K>): Bool
```

**功能：** 判断是否包含指定集合中所有键的映射。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|keys|Collection\<K>|是|-|键传递待判断的 keys。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|如果都包含，则返回 true；否则，返回 false。|

### func delete(K)

```cangjie
public func delete(key: K): Bool
```

**功能：** 从此 JSHashMapEx 中删除指定键的映射（如果存在）。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|key|K|是|-|传入要删除的 key。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|如果删除之前 key 存在且删除成功，则返回 true ，不存在则返回 false 。|

### func deleteAll(Collection\<K>)

```cangjie
public func deleteAll(keys: Collection<K>): Unit
```

**功能：** 从此 JSHashMapEx 中删除指定集合中键的映射（如果存在）。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|keys|Collection\<K>|是|-|传入要删除的键的集合。|

### func deleteIf((K,V) -> Bool)

```cangjie
public func deleteIf(predicate: (K, V) -> Bool): Unit
```

**功能：** 传入 lambda 表达式，如果满足条件，则删除对应的键值对。

该函数会遍历整个 JSHashMapEx，所有满足 predicate(K, V) == true 的键值对都会被删除。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|predicate|(K, V)->Bool|是|-|传递一个 lambda 表达式进行判断。|

### func get(K)

```cangjie
public func get(key: K): Option<V>
```

**功能：** 返回指定键映射到的值，如果不包含指定键的映射，则返回 Option\<V>.None。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|key|K|是|-|传入的键。|

**返回值：**

|类型|说明|
|:----|:----|
|Option\<V>|键对应的值。用 Option 封装。|

### func has(K)

```cangjie
public func has(key: K) : Bool
```

**功能：** 判断是否包含指定键的映射。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|key|K|是|-|传递要判断的 key。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|如果存在，则返回 true；否则，返回 false。|

### func isEmpty()

```cangjie
public func isEmpty(): Bool
```

**功能：** 判断 JSHashMapEx 是否为空，如果是，则返回 true；否则，返回 false。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Bool|JSHashMapEx 是否为空。|

### func keys()

```cangjie
public func keys(): EquatableCollection<K>
```

**功能：** 返回 JSHashMapEx 中所有的 key，并将所有 key 存储在一个 Keys 容器中。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|EquatableCollection\<K>|保存所有返回的 key。|

### func set(K, V)

```cangjie
public func set(key: K, value: V): Unit
```

**功能：** 将键值对放入 JSHashMapEx 中。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|key|K|是|-|要放置的键。|
|value|V|是|-|要分配的值。|

### func setAll(Collection\<(K,V)>)

```cangjie
public func setAll(elements: Collection<(K, V)>): Unit
```

**功能：** 按照 elements 的迭代器顺序将新的键值对集合放入 JSHashMapEx 中。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|elements|Collection\<(K, V)>|是|-|需要添加进 JSHashMapEx 的键值对集合。|

### func setIfAbsent(K, V)

```cangjie
public func setIfAbsent(key: K, value: V): Bool
```

**功能：** 当此 JSHashMapEx 中不存在键 key 时，向 JSHashMapEx 中插入键值对(key, value)。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|key|K|是|-|要放置的键。|
|value|V|是|-|要分配的值。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|如果赋值之前 key 存在，则返回 false ，否则返回 true 。|

### func toHashMap()

```cangjie
public func toHashMap(): HashMap<K, V>
```

**功能：** 转换为 HashMap。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|HashMap\<K, V>|转换后的 HashMap。|

### func toJSValue(JSContext)

```cangjie
public func toJSValue(c: JSContext): JSValue
```

**功能：** 转换为 JSValue。声明式互操作宏框架场景使用，开发者不需要使用此API。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|c|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS 统一类型。|

### func values()

```cangjie
public func values(): Collection<V>
```

**功能：** 返回 JSHashMapEx 中包含的值，并将所有的 value 存储在一个 Values 容器中。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Collection\<V>|保存所有返回的 value。|

### func \[](K)

```cangjie
public operator func [](key: K): V
```

**功能：** 运算符重载 set 方法，如果键存在，新 value 覆盖旧 value，如果键不存在，添加此键值对。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|key|K|是|-|要放置的键。|

**返回值：**

|类型|说明|
|:----|:----|
|V|键对应的值。|

### func \[](K, V)

```cangjie
public operator func [](key: K, value!: V): Unit
```

**功能：** 运算符重载 set 方法，如果键存在，新 value 覆盖旧 value，如果键不存在，添加此键值对。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|key|K|是|-|要放置的键。|
|value|V|是|-| **命名参数。** 要分配的值。|

## class JSHeapObject

```cangjie
sealed abstract class JSHeapObject {}
```

**功能：** 一个 ArkTS 运行时对象的强引用（但不会超过 ArkTS 运行时的生命周期，也不会阻止 ArkTS 运行时的销毁）。可以转换为JSValue。

它是所有安全引用的基类，用户不能创建它只能创建它的子类（隐藏构造函数），它的目标是让引用的 ArkTS 运行时对象持续时间超过这个仓颉对象本身。

**起始版本：** 21

### func toJSValue()

```cangjie
public func toJSValue(): JSValue
```

**功能：** 转换为 JSValue 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS 统一类型。|

## class JSModule

```cangjie
public class JSModule {}
```

**功能：** 一个提供导出符号注册接口的静态类。

JSModule的目标是提供符号导出能力（导出到ArkTS）。配合自定义静态初始化函数，在动态库被加载时把导出目标注册到全局表，并由ArkTS引擎来执行导出。

**起始版本：** 21

### static func registerClass(String, ClassRegister)

```cangjie
public static func registerClass(name: String, register: ClassRegister): Unit
```

**功能：** 注册一个要导出到 ArkTS 的 ArkTS 类（构造函数）。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|name|String|是|-|导出名称。|
|register|[ClassRegister](#type-classregister)|是|-|一个返回 ArkTS 类的函数。|

**示例：**

```cangjie
class Main {
    static init() {
        JSModule.registerClass("SomeClass") { context =>
            let ctor: JSLambda = { context, callInfo =>
                return callInfo.thisArg
            }
            context.clazz(ctor)
        }
    }
}
```

### static func registerFunc(String, FuncRegister)

```cangjie
public static func registerFunc(name: String, register: FuncRegister): Unit
```

**功能：** 注册一个要导出到 ArkTS 的函数。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|name|String|是|-|导出函数名称。|
|register|[FuncRegister](#type-funcregister)|是|-|一个返回 JSFunction 的函数。|

**示例：**

```cangjie
class Main {
    static init() {
        JSModule.registerFunc("doSth") { context, callInfo =>
            return context.undefined().toJSValue()
        }
    }
}
```

### static func registerFunc(String, JSLambda)

```cangjie
public static func registerFunc(name: String, lambda: JSLambda): Unit
```

**功能：** 注册一个要导出到 ArkTS 的函数。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|name|String|是|-|导出函数名称。|
|lambda|[JSLambda](#type-jslambda)|是|-|要导出的函数。|

**示例：**

```cangjie
class Main {
    static init() {
        JSModule.registerFunc("doSth") { context, callInfo =>
            return context.undefined().toJSValue()
        }
    }
}
```

### static func registerModule(ModuleRegister)

```cangjie
public static func registerModule(register: ModuleRegister): Unit
```

**功能：** 注册要导出到 ArkTS 接口。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|register|[ModuleRegister](#type-moduleregister)|是|-|一个能够返回 ArkTS 类（构造函数）的函数。|

**示例：**

```cangjie
class Main {
    static init() {
        JSModule.registerModule { context, exports =>
            exports["doSth"] = context.function { context, callInfo =>
                context.undefined().toJSValue()
            }.toJSValue()
        }
    }
}
```

## class JSObject

```cangjie
public class JSObject <: JSObjectBase {}
```

**功能：** 一个ArkTS对象的安全引用。

**起始版本：** 21

**父类型：**

* [JSObjectBase](#class-jsobjectbase)

## class JSObjectBase

```cangjie
sealed abstract class JSObjectBase <: JSHeapObject {}
```

**功能：** 一个 ArkTS 对象的安全引用的基类。可以操作 ArkTS 对象。

**起始版本：** 21

**父类型：**

* [JSHeapObject](#class-jsheapobject)

### func attachCJObject(JSExternal)

```cangjie
public func attachCJObject(target: JSExternal): Unit
```

**功能：** 为当前对象绑定一个仓颉对象在 ArkTS 的引用。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|target|[JSExternal](#class-jsexternal)|是|-|ArkTS 对仓颉对象的引用。|

**示例：**

<!--compile-->
```cangjie
class Data <: SharedObject {}

func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let obj = context.object()
    let data = Data()
    let ext = context.external(data)
    obj.attachCJObject(ext)
    return obj.toJSValue()
}
```

### func callMethod(JSKeyable, Array\<JSValue>)

```cangjie
public func callMethod(key: JSKeyable, args: Array<JSValue>): JSValue
```

**功能：** 调用当前对象下的方法。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|key|[JSKeyable](#interface-jskeyable)|是|-|目标方法名。|
|args|Array\<[JSValue](#struct-jsvalue)>|是|-|调用的参数列表。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|方法调用返回值。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let json = context.global["JSON"].asObject(context)
    json.callMethod("parse", [context.string("{a: 1, b: 2}").toJSValue()])
}
```

### func defineOwnAccessor(JSKeyable, ?JSFunction, ?JSFunction, Bool, Bool)

```cangjie
public func defineOwnAccessor(key: JSKeyable, getter!:? JSFunction = None, setter!: ?JSFunction = None,
    isEnumerable!: Bool = false,
    isConfigurable!: Bool = false
): Bool
```

**功能：** 为当前对象定义 accessors 。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|key|[JSKeyable](#interface-jskeyable)|是|-|目标键。|
|getter|?[JSFunction](#class-jsfunction)|否|None| **命名参数。** getter 实现。|
|setter|?[JSFunction](#class-jsfunction)|否|None| **命名参数。** setter 实现。|
|isEnumerable|Bool|否|false| **命名参数。** 是否可枚举。|
|isConfigurable|Bool|否|false| **命名参数。** 是否可重新定义。|

**返回值：**

| 类型   | 说明    |
|:-----|:------|
| Bool | 是否成功。 |

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let obj = context.object()
    let getter = context.function { context, callInfo =>
        context.number(1.0).toJSValue()
    }
    obj.defineOwnAccessor("a", getter: getter, isConfigurable: false)
    return obj.toJSValue()
}
```

### func defineOwnAccessor(JSKeyable, ?JSLambda, ?JSLambda, Bool, Bool)

```cangjie
public func defineOwnAccessor(key: JSKeyable, getter!:? JSLambda = None, setter!: ?JSLambda = None,
    isEnumerable!: Bool = false,
    isConfigurable!: Bool = false
): Bool
```

**功能：** 为当前对象定义 accessors 。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|key|[JSKeyable](#interface-jskeyable)|是|-|目标键。|
|getter|?[JSLambda](#type-jslambda)|否|None| **命名参数。** getter 实现。|
|setter|?[JSLambda](#type-jslambda)|否|None| **命名参数。** setter 实现。|
|isEnumerable|Bool|否|false| **命名参数。** 是否可枚举。|
|isConfigurable|Bool|否|false| **命名参数。** 是否可重新定义。|

**返回值：**

| 类型   | 说明    |
|:-----|:------|
| Bool | 是否成功。 |

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let obj = context.object()
    let getter: JSLambda = { context, callInfo =>
        context.number(1.0).toJSValue()
    }
    obj.defineOwnAccessor("a", getter: getter, isConfigurable: false)
    return obj.toJSValue()
}
```

### func defineOwnProperty(JSKeyable, JSValue, Bool, Bool, Bool)

```cangjie
public func defineOwnProperty(key: JSKeyable, setValue: JSValue,
    isWritable!: Bool = true,
    isEnumerable!: Bool = true,
    isConfigurable!: Bool = true
): Bool
```

**功能：** 在当前对象上定义属性。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|key|[JSKeyable](#interface-jskeyable)|是|-|目标键。|
|setValue|[JSValue](#struct-jsvalue)|是|-|目标值。|
|isWritable|Bool|否|true| **命名参数。** 是否可写。|
|isEnumerable|Bool|否|true| **命名参数。** 是否可枚举。|
|isConfigurable|Bool|否|true| **命名参数。** 是否可重新定义。|

**返回值：**

| 类型   | 说明    |
|:-----|:------|
| Bool | 是否成功。 |

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let obj = context.object()
    obj.defineOwnProperty("a", context.number(1.0).toJSValue(), isWritable: true, isConfigurable: false)
    return obj.toJSValue()
}
```

### func getAttachInfo()

```cangjie
public func getAttachInfo(): ?JSExternal
```

**功能：** 从当前对象上获取绑定的仓颉对象。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|?[JSExternal](#class-jsexternal)|ArkTS 对仓颉对象的引用或None。|

**示例：**

<!--compile-->
```cangjie
class Data <: SharedObject {
    func doSth() {}
}

func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let obj = callInfo[0].asObject(context)
    let sharedObJ = obj.getAttachInfo().getOrThrow()
    let data = (sharedObJ as Data).getOrThrow()
    data.doSth()
    context.undefined().toJSValue()
}
```

### func getProperty(JSKeyable)

```cangjie
public func getProperty(key: JSKeyable): JSValue
```

**功能：** 从当前对象获取目标属性值。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|key|[JSKeyable](#interface-jskeyable)|是|-|目标键。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|获得的值。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let obj = callInfo[0].asObject(context)
    let result = obj.getProperty("a")
    return result
}
```

### func hasProperty(JSKeyable)

```cangjie
public func hasProperty(key: JSKeyable): Bool
```

**功能：** 判断当前对象是否存在目标属性。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|key|[JSKeyable](#interface-jskeyable)|是|-|目标键。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|为 true 时代表当前对象存在目标属性。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let obj = callInfo[0].asObject(context)
    let hasA = obj.hasProperty("a")
    println("obj has property of a: ${hasA}")
    obj.toJSValue()
}
```

### func instanceOf(JSClass)

```cangjie
public func instanceOf(clazz: JSClass): Bool
```

**功能：** 判断当前的对象是否是目标 ArkTS 类的实例。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|clazz|[JSClass](#class-jsclass)|是|-|目标 ArkTS 类。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|为 true 时代表该对象是目标 ArkTS 类的实例。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let ctor: JSLambda = { context, callInfo =>
        callInfo.thisArg
    }
    let classA = context.clazz(ctor)
    let obj = classA.new().asObject(context)
    let isClassA = obj.instanceOf(classA)
    println("obj is classA: ${isClassA}")
    return obj.toJSValue()
}
```

### func keys()

```cangjie
public func keys(): Array<String>
```

**功能：** 枚举出当前对象所有可枚举的属性名。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Array\<String>|键列表。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let keys = context.global.keys()
    println("global keys: ${keys}")
    context.undefined().toJSValue()
}
```

### func setProperty(JSKeyable, JSValue)

```cangjie
public func setProperty(key: JSKeyable, setValue: JSValue): Unit
```

**功能：** 对当前对象赋值一个属性。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|key|[JSKeyable](#interface-jskeyable)|是|-|目标键。|
|setValue|[JSValue](#struct-jsvalue)|是|-|目标值。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let obj = context.object()
    obj.setProperty("a", context.number(1.0).toJSValue())
    return obj.toJSValue()
}
```

### func \[](JSKeyable)

```cangjie
public operator func [](key: JSKeyable): JSValue
```

**功能：** 对当前对象赋值一个属性。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|key|[JSKeyable](#interface-jskeyable)|是|-|目标键。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|取到的值。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let obj = callInfo[0].asObject(context)
    let result = obj["a"]
    return result
}
```

### func \[](JSKeyable, JSValue)

```cangjie
public operator func [](key: JSKeyable, value!: JSValue): Unit
```

**功能：** 对当前对象赋值一个属性。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|key|[JSKeyable](#interface-jskeyable)|是|-|目标键。|
|value|[JSValue](#struct-jsvalue)|是|-| **命名参数。** 目标值。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let obj = context.object()
    obj["a"] = context.number(1.0).toJSValue()
    return obj.toJSValue()
}
```

## class JSPromise

```cangjie
public class JSPromise <: JSHeapObject {}
```

**功能：** 一个回调机制的封装对象。

JSPromise的目标是为回调形式的一致性封装，配合 async、await 的语法糖大大增强其易用性。

JSPromise的生命周期超过引用的 ArkTS 对象。

**起始版本：** 21

**父类型：**

* [JSHeapObject](#class-jsheapobject)

### func catchError(JSFunction)

```cangjie
public func catchError(callback: JSFunction): Unit
```

**功能：** 注册异常处理回调。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|callback|[JSFunction](#class-jsfunction)|是|-|异常处理回调。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let promise = callInfo[0].asPromise(context)
    let onError: JSLambda = {context, callInfo =>
        context.undefined().toJSValue()
    }
    promise.catchError(context.function(onError))
    context.undefined().toJSValue()
}
```

### func then(JSFunction, ?JSFunction)

```cangjie
public func then(onFulfilled: JSFunction, onRejected!: ?JSFunction = None): Unit
```

**功能：** 注册结果处理回调。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|onFulfilled|[JSFunction](#class-jsfunction)|是|-|结果处理回调。|
|onRejected|?[JSFunction](#class-jsfunction)|否|None| **命名参数。** 异常处理回调。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let promise = callInfo[0].asPromise(context)
    let onFulfilled: JSLambda = {context, callInfo =>
        context.undefined().toJSValue()
    }
    promise.then(context.function(onFulfilled))
    context.undefined().toJSValue()
}
```

## class JSPromiseCapability

```cangjie
public class JSPromiseCapability {
}
```

**功能：** JSPromiseCapability 对应一个 Promise 对象，可以通过它来 resolve 和 reject 该 Promise。

生命周期：JSPromiseCapability是一个弱引用，对应ArkTS对象的生命周期在首次 resolve 或 reject 时结束，结束后继续使用会抛出仓颉异常。

**起始版本：** 21

### func reject(JSValue)

```cangjie
public func reject(value: JSValue): Unit
```

**功能：** 向 Promise 提交异常。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|value|[JSValue](#struct-jsvalue)|是|-|异常数据，一般是 Error 对象或 string。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let promise = context.promiseCapability()
    // toJSValue 需要在 reject 前，在 reject 之后该对象将不可访问
    let result = promise.toJSValue()
    promise.reject(context.string("a exception occured").toJSValue())
    return result
}
```

### func resolve(JSValue)

```cangjie
public func resolve(value: JSValue): Unit
```

**功能：** 通知 Promise 正常结束并提交返回值。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|value|[JSValue](#struct-jsvalue)|是|-|处理结果。|

**示例：**

<!--compile-->
```cangjie
func addNumberAsync(context: JSContext, callInfo: JSCallInfo): JSValue {
    let a = callInfo[0].toNumber()
    let b = callInfo[1].toNumber()
    let promise = context.promiseCapability()
    // toJSValue 需要在 resolve 前，在 resolve 之后该对象将不可访问
    let result = promise.toJSValue()
    promise.resolve(context.number(a + b).toJSValue())
    return result
}
```

### func toJSValue()

```cangjie
public func toJSValue(): JSValue
```

**功能：** 转换为 ArkTS 统一类型。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS统一类型。|

**示例：**

<!--compile-->
```cangjie
func addNumberAsync(context: JSContext, callInfo: JSCallInfo): JSValue {
    // 把 ArkTS 入参转换为仓颉类型
    let a = callInfo[0].toNumber()
    let b = callInfo[1].toNumber()
    // 创建 PromiseCapability
    let promise = context.promiseCapability()
    spawn {
        // 使用新线程来执行运算密集的任务
        let result = a + b
        // 回到 ArkTS 线程
        context.postJSTask {
            // 向 ArkTS 返回结果
            promise.resolve(context.number(result).toJSValue())
        }
    }
    // 返回 Promise
    promise.toJSValue()
}
```

## class JSRuntime

```cangjie
public class JSRuntime {
    public init()
}
```

**功能：** 仓颉创建的 ArkTS 运行时。

**起始版本：** 21

> **注意：**
>
> 仓颉应用中只能在主线程上使用 JSRuntime() 创建 ArkTS 运行时。

### prop mainContext

```cangjie
public prop mainContext: JSContext
```

**功能：** 互操作上下文。

**起始版本：** 21

**类型：** [JSContext](#class-jscontext)

**读写能力：** 只读

### init()

```cangjie
public init()
```

**功能：** 构造函数。

**起始版本：** 21

### func getNapiEnv()

```cangjie
public func getNapiEnv(): CPointer<Unit>
```

**功能：** 获取环境指针。

**返回值：**

| 类型       | 说明          |
|:---------|:------------|
| CPointer<Unit> | napi接口的env。 |

**起始版本：** 21

## class JSString

```cangjie
public class JSString <: JSHeapObject & ToString & JSKeyable {}
```

**功能：** 一个ArkTS字符串的安全引用。可以转换为String。

**起始版本：** 21

**父类型：**

* [JSHeapObject](#class-jsheapobject)
* ToString
* [JSKeyable](#interface-jskeyable)

### func toJSValue(JSContext)

```cangjie
public func toJSValue(_: JSContext): JSValue
```

**功能：** 转换为 JSValue 。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|_|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS 统一类型。|

### func toString()

```cangjie
public func toString(): String
```

**功能：** 转换为仓颉字符串。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|String|仓颉字符串。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let jsStr = context.string("abc")
    let value = jsStr.toString()
    println("value is ${value}")
    return jsStr.toJSValue()
}
```

### func toUtf16String()

```cangjie
public func toUtf16String(): Utf16String
```

**功能：** 从 JSString 转换为 Utf16String。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[Utf16String](#class-utf16string)|转换后的 Utf16String 对象。|

## class JSStringEx

```cangjie
public class JSStringEx <: JSInteropType<JSStringEx> & Equatable<JSStringEx> & ToString {
    public init(str: String)
}
```

**功能：** 对 [JSString](#class-jsstring) 的功能及性能扩展，可在声明式互操作宏中使用。

**起始版本：** 21

**父类型：**

* [JSInteropType\<JSStringEx>](#interface-jsinteroptype)
* Equatable\<JSStringEx>
* ToString

### init(String)

```cangjie
public init(str: String)
```

**功能：** 给定 String，构造对应的 JSStringEx 实例。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|str|String|是|-|初始字符串。|

### static func fromJSValue(JSContext, JSValue)

```cangjie
public static func fromJSValue(context: JSContext, input: JSValue): JSStringEx
```

**功能：** 从 JSValue 转换为 JSStringEx。声明式互操作宏框架场景使用，开发者不需要使用此API。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|
|input|[JSValue](#struct-jsvalue)|是|-|ArkTS 统一类型。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSStringEx](#class-jsstringex)|声明式互操作宏类型 JSStringEx。|

### static func toArkTsType()

```cangjie
public static func toArkTsType(): String
```

**功能：** 获取仓颉类型对应的ArkTS类型名称。声明式互操作宏框架场景使用，开发者不需要使用此API。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|String|转换后 ArkTS 类型名。|

### func toJSValue(JSContext)

```cangjie
public func toJSValue(context: JSContext): JSValue
```

**功能：** 转换为 JSValue。声明式互操作宏框架场景使用，开发者不需要使用此API。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS 统一类型。|

### func toString()

```cangjie
public func toString(): String
```

**功能：** 转换为 String。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|String|转换后的字符串。|

### func !=(JSStringEx)

```cangjie
public operator func !=(str: JSStringEx): Bool
```

**功能：** 判断两个 JSStringEx 是否不相等。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|str|[JSStringEx](#class-jsstringex)|是|-|待比较的字符串。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|不相等返回 true，相等返回 false。|

### func ==(JSStringEx)

```cangjie
public operator func ==(str: JSStringEx): Bool
```

**功能：** 功能：判断两个 JSStringEx 是否相等。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|str|[JSStringEx](#class-jsstringex)|是|-|待比较的字符串。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|相等返回 true，不相等返回 false。|

## class JSSymbol

```cangjie
public class JSSymbol <: JSHeapObject & JSKeyable {}
```

**功能：** 一个js symbol的安全引用。

**起始版本：** 21

**父类型：**

* [JSHeapObject](#class-jsheapobject)
* [JSKeyable](#interface-jskeyable)

### prop description

```cangjie
public prop description: String
```

**功能：** symbol的描述。

**起始版本：** 21

**类型：** String

**读写能力：** 只读

### func toJSValue(JSContext)

```cangjie
public func toJSValue(_: JSContext): JSValue
```

**功能：** 转换为 JSValue。声明式互操作宏框架场景使用，开发者不需要使用此API。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|_|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS 统一类型。|

### func toString()

```cangjie
public func toString(): String
```

**功能：** 转换为 String。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|String|转换后的字符串。|

## class SharedObject

```cangjie
public open class SharedObject {
    public init()
}
```

**功能：** 可以被 ArkTS 引用的仓颉对象的基类。

**起始版本：** 21

### prop nativeId

```cangjie
public prop nativeId: Int64
```

**功能：** 对象唯一标识。

**起始版本：** 21

**类型：** Int64

**读写能力：** 只读

### init()

```cangjie
public init()
```

**功能：** 创建一个 SharedObject 对象。

**起始版本：** 21

## struct JSBoolean

```cangjie
public struct JSBoolean {}
```

**功能：** ArkTS boolean。

**起始版本：** 21

### func toBool()

```cangjie
public func toBool(): Bool
```

**功能：** 转换为仓颉 Bool。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Bool|仓颉Bool值。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let jsBool = context.boolean(true)
    let value = jsBool.toBool()
    println("value is ${value}")
    return jsBool.toJSValue()
}
```

### func toJSValue()

```cangjie
public func toJSValue(): JSValue
```

**功能：** 转换为 JSValue 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS 统一类型。|

## struct JSCallInfo

```cangjie
public struct JSCallInfo {}
```

**功能：** 一次ArkTS函数调用的相关信息。可以获取this指针、获取参数数量、按索引读取参数。

每次ArkTS函数调用会在ArkTS栈上保存参数列表和其他相关信息，JSCallInfo是一个指向这些信息的指针。

生命周期：本次ArkTS函数调用结束这个JSCallInfo就会失效。

**起始版本：** 21

### prop count

```cangjie
public prop count: Int64
```

**功能：** 入参数量。

**起始版本：** 21

**类型：** Int64

**读写能力：** 只读

### prop thisArg

```cangjie
public prop thisArg: JSValue
```

**功能：** this 指针。

**起始版本：** 21

**类型：** [JSValue](#struct-jsvalue)

**读写能力：** 只读

### func \[](Int64)

```cangjie
public operator func[](index: Int64): JSValue
```

**功能：** 通过索引获取对应的参数。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|index|Int64|是|-|入参索引，安全范围：[0, 入参数量)。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|入参的值。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    if (callInfo.count > 0) {
        let firstArg = callInfo[0]
        return firstArg
    }
    return context.undefined().toJSValue()
}
```

## struct JSNull

```cangjie
public struct JSNull {}
```

**功能：** ArkTS null。

**起始版本：** 21

### func toJSValue()

```cangjie
public func toJSValue(): JSValue
```

**功能：** 转为为 ArkTS 统一类型。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS 统一类型。|

## struct JSNumber

```cangjie
public struct JSNumber {}
```

**功能：** ArkTS number。

**起始版本：** 21

### func toFloat64()

```cangjie
public func toFloat64(): Float64
```

**功能：** 转换为 Float64 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Float64|仓颉浮点数。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let jsNum = context.number(1.0)
    let value = jsNum.toFloat64()
    println("value is ${value}")
    return jsNum.toJSValue()
}
```

### func toJSValue()

```cangjie
public func toJSValue(): JSValue
```

**功能：** 转换为 JSValue 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS 统一类型。|

## struct JSType

```cangjie
public struct JSType {
    public static let UNDEFINED: JSType = JSType(0)
    public static let NULL: JSType = JSType(1)
    public static let NUMBER: JSType = JSType(2)
    public static let BOOLEAN: JSType = JSType(3)
    public static let BIGINT: JSType = JSType(4)
    public static let STRING: JSType = JSType(5)
    public static let SYMBOL: JSType = JSType(6)
    public static let OBJECT: JSType = JSType(7)
    public static let FUNCTION: JSType = JSType(8)
    public static let EXTERNAL: JSType = JSType(9)
}
```

**功能：** ArkTS 数据类型枚举。

在 ArkTS 里，通过 typeof 操作符可枚举出某个数据的大致类型，JSType 罗列出这些类型并且加入 EXTERNAL 类型。

**起始版本：** 21

### static let BIGINT

```cangjie
public static let BIGINT: JSType = JSType(4)
```

**功能：** bigint 类型。

**起始版本：** 21

**类型：** [JSType](#struct-jstype)

### static let BOOLEAN

```cangjie
public static let BOOLEAN: JSType = JSType(3)
```

**功能：** bool 类型。

**起始版本：** 21

**类型：** [JSType](#struct-jstype)

### static let EXTERNAL

```cangjie
public static let EXTERNAL: JSType = JSType(9)
```

**功能：** external 类型。

**起始版本：** 21

**类型：** [JSType](#struct-jstype)

### static let FUNCTION

```cangjie
public static let FUNCTION: JSType = JSType(8)
```

**功能：** function 类型。

**起始版本：** 21

**类型：** [JSType](#struct-jstype)

### static let NULL

```cangjie
public static let NULL: JSType = JSType(1)
```

**功能：** null 类型。

**起始版本：** 21

**类型：** [JSType](#struct-jstype)

### static let NUMBER

```cangjie
public static let NUMBER: JSType = JSType(2)
```

**功能：** number 类型。

**起始版本：** 21

**类型：** [JSType](#struct-jstype)

### static let OBJECT

```cangjie
public static let OBJECT: JSType = JSType(7)
```

**功能：** object 类型。

**起始版本：** 21

**类型：** [JSType](#struct-jstype)

### static let STRING

```cangjie
public static let STRING: JSType = JSType(5)
```

**功能：** string 类型。

**起始版本：** 21

**类型：** [JSType](#struct-jstype)

### static let SYMBOL

```cangjie
public static let SYMBOL: JSType = JSType(6)
```

**功能：** symbol 类型。

**起始版本：** 21

**类型：** [JSType](#struct-jstype)

### static let UNDEFINED

```cangjie
public static let UNDEFINED: JSType = JSType(0)
```

**功能：** undefined 类型。

**起始版本：** 21

**类型：** [JSType](#struct-jstype)

### func toString()

```cangjie
public func toString(): String
```

**功能：** 获取 JSType 的字符串描述。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|String|字符串描述。|

### func !=(JSType)

```cangjie
public operator func !=(target: JSType): Bool
```

**功能：** 对两个 JSType 进行不等判断。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|target|[JSType](#struct-jstype)|是|-|对比的目标类型。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|为 true 时代表两个类型不等。|

### func ==(JSType)

```cangjie
public operator func ==(target: JSType): Bool
```

**功能：** 对两个 JSType 进行判等。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|target|[JSType](#struct-jstype)|是|-|对比的目标类型。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|为 true 时代表两个类型相等。|

## struct JSUndefined

```cangjie
public struct JSUndefined {}
```

**功能：** ArkTS null。

**起始版本：** 21

### func toJSValue()

```cangjie
public func toJSValue(): JSValue
```

**功能：** 转换为 JSValue 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS 统一类型。|

## struct JSValue

```cangjie
public struct JSValue {}
```

**功能：** 一个ArkTS变量（弱类型，短生命周期）。

JSValue是ArkTS运行时统一类型，也是直接与ArkTS运行时交互的数据类型。

只有互操作接口可以创建JSValue，其生命周期在出栈（被创建时的栈）时结束，不能拷贝、捕获以及在非互操作函数返回。如果需要传递该变量，需要先转换，再以仓颉类型或是安全引用的形式传递。

**起始版本：** 21

### func asArray()

```cangjie
public func asArray(): JSArray
```

**功能：** 把一个 JSValue 转换为 JSArray 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSArray](#class-jsarray)|一个 ArkTS 数组的引用。|

### func asArrayBuffer()

```cangjie
public func asArrayBuffer(): JSArrayBuffer
```

**功能：** 把一个 JSValue 转换为 JSArrayBuffer 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSArrayBuffer](#class-jsarraybuffer)|一个ArkTS ArrayBuffer的引用。|

### func asBigInt()

```cangjie
public func asBigInt(): JSBigInt
```

**功能：** 把一个 JSValue 转换为 JSBigInt 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSBigInt](#class-jsbigint)|ArkTS bigint的引用。|

### func asBoolean()

```cangjie
public func asBoolean(): JSBoolean
```

**功能：** 把一个 JSValue 转换为 JSBoolean 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSBoolean](#struct-jsboolean)|一个 ArkTS boolean。|

### func asClass()

```cangjie
public func asClass(): JSClass
```

**功能：** 把一个 JSValue 转换为 JSClass 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSClass](#class-jsclass)|一个ArkTS 类的引用。|

### func asExternal()

```cangjie
public func asExternal(): JSExternal
```

**功能：** 把一个 JSValue 转换为 JSExternal 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSExternal](#class-jsexternal)|一个 ArkTS 对仓颉对象引用的引用。|

### func asFunction()

```cangjie
public func asFunction(): JSFunction
```

**功能：** 把一个 JSValue 转换为 JSFunction 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSFunction](#class-jsfunction)|一个 ArkTS 函数的引用。|

### func asNull()

```cangjie
public func asNull(): JSNull
```

**功能：** 把一个 JSValue 转换为 JSNull 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSNull](#struct-jsnull)|一个 ArkTS null|

### func asNumber()

```cangjie
public func asNumber(): JSNumber
```

**功能：** 把一个 JSValue 转换为 JSNumber 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSNumber](#struct-jsnumber)|一个 ArkTS number。|

### func asObject()

```cangjie
public func asObject(): JSObject
```

**功能：** 把一个 JSValue 转换为 JSObject 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSObject](#class-jsobject)|一个 ArkTS object 引用。|

> **注意：**
>
> 当 JSValue 的类型不是 object 时，会抛出 JSTypeMisMatch 异常。比如在仓颉互操作ArkTS时，会把ArkTS的类型统一转换成 JSValue ，再通过 asObject 转换到仓颉类型，如果从ArkTS侧返回的类型不是实际类型，则会抛异常。

### func asPromise()

```cangjie
public func asPromise(): JSPromise
```

**功能：** 把一个 JSValue 转换为 JSPromise 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSPromise](#class-jspromise)|ArkTS promise的引用。|

### func asString()

```cangjie
public func asString(): JSString
```

**功能：** 把一个 JSValue 转换为 JSString 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSString](#class-jsstring)|一个 ArkTS string的引用。|

### func asSymbol()

```cangjie
public func asSymbol(): JSSymbol
```

**功能：** 把一个 JSValue 转换为 JSSymbol 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSSymbol](#class-jssymbol)|一个 ArkTS symbol的引用。|

### func asUndefined()

```cangjie
public func asUndefined(): JSUndefined
```

**功能：** 把一个 JSValue 转换为 JSUndefined 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSUndefined](#struct-jsundefined)|一个ArkTS undefined。|

### func bindObject(JSValue)

```cangjie
public func bindObject(external: JSValue): Unit
```

**功能：** 往 ArkTS 对象绑定一个仓颉对象。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|external|[JSValue](#struct-jsvalue)|是|-|仓颉对象的 ArkTS 引用。|

**示例：**

<!--compile-->
```cangjie
class Data <: SharedObject {
}

func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let jsObJ = callInfo[0]
    let data = Data()
    let external = context.external(data)
    jsObJ.bindObject(external.toJSValue())
    return jsObJ
}
```

>

### func bindObject(SharedObject)

```cangjie
public func bindObject(data: SharedObject): Unit
```

**功能：** 往 ArkTS 对象绑定一个仓颉对象。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|data|[SharedObject](#class-sharedobject)|是|-|仓颉对象。|

**示例：**

<!--compile-->
```cangjie
class Data <: SharedObject {
}

func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let jsObJ = callInfo[0]
    let data = Data()
    jsObJ.bindObject(data)
    return jsObJ
}
```

>

### func getBindingObject()

```cangjie
public func getBindingObject(): ?SharedObject
```

**功能：** 获取 ArkTS 对象绑定的仓颉对象。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|?[SharedObject](#class-sharedobject)|绑定的仓颉对象。|

**示例：**

<!--compile-->
```cangjie
class Data <: SharedObject {
    func doSth() {}
}

func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let jsObJ = callInfo[0]
    if (let Some(shareData) <- jsObJ.getBindingObject()) {
        if (let Some(data) <- (shareData as Data)) {
            data.doSth()
        }
    }
    return jsObJ
}
```

### func getElement(Int64)

```cangjie
public func getElement(index: Int64): JSValue
```

**功能：** 从 ArkTS 数组读取元素。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|index|Int64|是|-|数组元素索引。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|一个 ArkTS 值。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let jsArr = callInfo[0]
    let element = jsArr.getElement(0)
    return element
}
```

### func getProperty(JSKeyable)

```cangjie
public func getProperty(key: JSKeyable): JSValue
```

**功能：** 从 ArkTS 对象读取属性。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|key|[JSKeyable](#interface-jskeyable)|是|-|属性的键，可以是 String 、 JSString 或 JSSymbol。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|取到的值|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let jsObJ = callInfo[0]
    let element = jsObJ.getProperty(context, "a")
    let element1 = jsObJ.getProperty(context, context.string("a"))
    let element2 = jsObJ.getProperty(context, context.symbol())
    return element
}
```

>

### func isArray()

```cangjie
public func isArray(): Bool
```

**功能：** 判断一个 JSValue 是否是 Array 类型 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Bool|为 true 时代表类型为 Array。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    // 获取入参
    let arg0 = callInfo[0]
    // 判断是否是 object
    let result = arg0.isArray()
    // 返回结果
    return context.boolean(result).toJSValue()
}
```

### func isArrayBuffer()

```cangjie
public func isArrayBuffer(): Bool
```

**功能：** 判断一个 JSValue 是否是 ArrayBuffer 类型 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Bool|为 true 时代表类型为 ArrayBuffer。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    // 获取入参
    let arg0 = callInfo[0]
    // 判断是否是 ArrayBuffer
    let result = arg0.isArrayBuffer()
    // 返回结果
    return context.boolean(result).toJSValue()
}
```

### func isBigInt()

```cangjie
public func isBigInt(): Bool
```

**功能：** 判断一个 JSValue 是否是 bigint 类型 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Bool|为 true 时代表类型为 bigint。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    // 获取入参
    let arg0 = callInfo[0]
    // 判断是否是 bigint
    let result = arg0.isBigInt()
    // 返回结果
    return context.boolean(result).toJSValue()
}
```

### func isBoolean()

```cangjie
public func isBoolean(): Bool
```

**功能：** 判断一个 JSValue 是否是 boolean 类型 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Bool|为 true 时代表类型为 boolean。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    // 获取入参
    let arg0 = callInfo[0]
    // 判断是否是 boolean
    let result = arg0.isBoolean()
    // 返回结果
    return context.boolean(result).toJSValue()
}
```

### func isClass()

```cangjie
public func isClass(): Bool
```

**功能：** 判断一个 JSValue 是否是一个 ArkTS 类（构造函数） 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Bool|为 true 时代表类型为 ArkTS 类（构造函数）|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    // 获取入参
    let arg0 = callInfo[0]
    // 判断是否是 ArkTS 类（构造函数）
    let result = arg0.isClass()
    // 返回结果
    return context.boolean(result).toJSValue()
}
```

### func isExternal()

```cangjie
public func isExternal(): Bool
```

**功能：** 判断一个 JSValue 是否是一个外部对象（仓颉对象的 ArkTS 引用） 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Bool|为 true 时代表类型为外部对象（仓颉对象的 ArkTS 引用）。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    // 获取入参
    let arg0 = callInfo[0]
    // 判断是否是外部对象（仓颉对象的 ArkTS 引用）
    let result = arg0.isExternal()
    // 返回结果
    return context.boolean(result).toJSValue()
}
```

### func isFunction()

```cangjie
public func isFunction(): Bool
```

**功能：** 判断一个 JSValue 是否是 function 类型 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Bool|为 true 时代表类型为 function。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    // 获取入参
    let arg0 = callInfo[0]
    // 判断是否是 function
    let result = arg0.isFunction()
    // 返回结果
    return context.boolean(result).toJSValue()
}
```

### func isNull()

```cangjie
public func isNull(): Bool
```

**功能：** 判断一个 JSValue 是否是 null 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Bool|为 true 时代表类型为 null。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    // 获取入参
    let arg0 = callInfo[0]
    // 判断是否是 null
    let result = arg0.isNull()
    // 返回结果
    return context.boolean(result).toJSValue()
}
```

### func isNumber()

```cangjie
public func isNumber(): Bool
```

**功能：** 判断一个 JSValue 是否是 number 类型 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Bool|为 true 时代表类型为 number。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    // 获取入参
    let arg0 = callInfo[0]
    // 判断是否是 number
    let result = arg0.isNumber()
    // 返回结果
    return context.boolean(result).toJSValue()
}
```

### func isObject()

```cangjie
public func isObject(): Bool
```

**功能：** 判断一个 JSValue 是否是 object 类型 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Bool|为 true 时代表类型为 object|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    // 获取入参
    let arg0 = callInfo[0]
    // 判断是否是 object
    let result = arg0.isObject()
    // 返回结果
    return context.boolean(result).toJSValue()
}
```

### func isPromise()

```cangjie
public func isPromise(): Bool
```

**功能：** 判断一个 JSValue 是否是 Promise 类型 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Bool|为 true 时代表类型为 Promise。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    // 获取入参
    let arg0 = callInfo[0]
    // 判断是否是 Promise
    let result = arg0.isPromise()
    // 返回结果
    return context.boolean(result).toJSValue()
}
```

### func isString()

```cangjie
public func isString(): Bool
```

**功能：** 判断一个 JSValue 是否是 string 类型 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Bool|为 true 时代表类型为 string。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    // 获取入参
    let arg0 = callInfo[0]
    // 判断是否是 string
    let result = arg0.isString()
    // 返回结果
    return context.boolean(result).toJSValue()
}
```

### func isSymbol()

```cangjie
public func isSymbol(): Bool
```

**功能：** 判断一个 JSValue 是否是 Symbol 类型 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Bool|为 true 时代表类型为 Symbol。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    // 获取入参
    let arg0 = callInfo[0]
    // 判断是否是 Symbol
    let result = arg0.isSymbol()
    // 返回结果
    return context.boolean(result).toJSValue()
}
```

### func isUndefined()

```cangjie
public func isUndefined(): Bool
```

**功能：** 判断一个 JSValue 是否是 undefined 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Bool|为 true 时代表类型为 undefined。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    // 获取入参
    let arg0 = callInfo[0]
    // 判断是否是 undefined
    let result = arg0.isUndefined()
    // 返回结果
    return context.boolean(result).toJSValue()
}
```

### func setElement(Int64, JSValue)

```cangjie
public func setElement(index: Int64, value: JSValue): Unit
```

**功能：** 从 ArkTS 数组写入元素。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|index|Int64|是|-|数组写入索引。|
|value|[JSValue](#struct-jsvalue)|是|-|写入数组的值。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let jsArr = callInfo[0]
    let setValue = context.number(1.0)
    jsArr.setElement(0, setValue.toJSValue())
    let element = jsArr.getElement(0)
    return element
}
```

### func setProperty(JSKeyable, JSValue)

```cangjie
public func setProperty(key: JSKeyable, setValue: JSValue): Unit
```

**功能：** 往 ArkTS 对象写入属性。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|key|[JSKeyable](#interface-jskeyable)|是|-|属性的键。|
|setValue|[JSValue](#struct-jsvalue)|是|-|属性的值。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let jsObJ = context.object()
    let setValue = context.number(1.0)
    jsObJ.setProperty("a", setValue.toJSValue())
    return jsObJ.toJSValue()
}
```

### func strictEqual(JSValue)

```cangjie
public func strictEqual(target: JSValue): Bool
```

**功能：** 对两个 JSValue 做严格判等（类型一致 + 值相等）。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|target|[JSValue](#struct-jsvalue)|是|-|比较的目标值|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|为 true 时代表两个值相同|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    // 获取两个入参
    let arg0 = callInfo[0]
    let arg1 = callInfo[1]
    // 对两个入参做严格判等
    let isStrictEqual = arg0.strictEqual(arg1)
    // 返回严格判等的值
    return context.boolean(isStrictEqual).toJSValue()
}
```

### func toBigInt()

```cangjie
public func toBigInt(): BigInt
```

**功能：** 把一个 JSValue 转换为 BigInt 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|BigInt|仓颉 BigInt。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let value = callInfo[0].toBigInt()
    println("value is ${value}")
    return context.undefined().toJSValue()
}
```

### func toBoolean()

```cangjie
public func toBoolean(): Bool
```

**功能：** 把一个 JSValue 转换为 Bool 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Bool|仓颉 Bool 值。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let value = callInfo[0].toBoolean()
    println("value is ${value}")
    return context.undefined().toJSValue()
}
```

### func toNumber()

```cangjie
public func toNumber(): Float64
```

**功能：** 把一个 JSValue 转换为 Float64 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Float64|仓颉 Float64 的值。|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    let value = callInfo[0].toNumber()
    println("value is ${value}")
    return context.undefined().toJSValue()
}
```

### func toString()

```cangjie
public func toString(): String
```

**功能：** 把一个 JSValue 转换为 String 。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|String|仓颉字符串。|

**示例：**

<!--compile-->
```cangjie
// 判断首个参数是否是数字，如果是返回true，如果否返回数据类型的字符串
func checkIsNumber(context: JSContext, callInfo: JSCallInfo): JSValue {
    // 获取参数
    let value: JSValue = callInfo[0]
    // 获取参数类型
    let valueType: JSType = value.typeof()
    // 类型判断
    if (valueType == JSType.NUMBER) {
        // 返回 true
        return context.boolean(true).toJSValue()
    }
    // 返回类型字符串
    return context.string(valueType.toString()).toJSValue()
}
```

### func toUtf16String()

```cangjie
public func toUtf16String(): Utf16String
```

**功能：** 从 JSValue 转换为 Utf16String。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[Utf16String](#class-utf16string)|转换后的 Utf16String 对象。|

### func typeof()

```cangjie
public func typeof(): JSType
```

**功能：** 获取一个 JSValue 的类型，和 ArkTS 的 typeof 语法枚举出的类型基本一致。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|[JSType](#struct-jstype)|ArkTS 类型|

**示例：**

<!--compile-->
```cangjie
func doSth(context: JSContext, callInfo: JSCallInfo): JSValue {
    // 获取首个参数
    let arg0 = callInfo[0]
    // 获取参数类型
    let valueType = arg0.typeof()
    // 打印参数类型
    println("arg type is ${valueType.toString()}")
    arg0
}
```

## type ClassRegister

```cangjie
public type ClassRegister =(JSContext) -> JSClass
```

**功能：** ClassRegister 是 ([JSContext](#class-jscontext)) -> [JSClass](#class-jsclass) 类型的别名。

**起始版本：** 21

## type FuncRegister

```cangjie
public type FuncRegister =(JSContext) -> JSFunction
```

**功能：** FuncRegister 是 ([JSContext](#class-jscontext)) -> [JSFunction](#class-jsfunction) 类型的别名。

**起始版本：** 21

## type JSBufferFinalizer

```cangjie
public type JSBufferFinalizer =(CPointer<Byte>) -> Unit
```

**功能：** JSBufferFinalizer 是 (CPointer\<Byte>) -> Unit 类型的别名。

**起始版本：** 21

## type JSLambda

```cangjie
public type JSLambda =(JSContext, JSCallInfo) -> JSValue
```

**功能：** JSLambda 是 ([JSContext](#class-jscontext), [JSCallInfo](#struct-jscallinfo)) -> [JSValue](#struct-jsvalue) 类型的别名。

**起始版本：** 21

## type ModuleRegister

```cangjie
public type ModuleRegister =(JSContext, JSObject) -> Unit
```

**功能：** ModuleRegister 是 ([JSContext](#class-jscontext), [JSObject](#class-jsobject)) -> Unit 类型的别名。

**起始版本：** 21

## type napi_env

```cangjie
public type napi_env = CPointer<Unit>
```

**功能：** napi_env 是 CPointer\<Unit> 类型的别名。

**起始版本：** 21

## type napi_value

```cangjie
public type napi_value = CPointer<Unit>
```

**功能：** napi_value 是 CPointer\<Unit> 类型的别名。

**起始版本：** 21

## class Utf16String

```cangjie
public class Utf16String <: ToString & Equatable<Utf16String> & Hashable & JSKeyable & JSInteropType<Utf16String> {
    public init(src: String)
}
```

**功能：** 以 UTF-16 编码格式存储的字符串，在与 ArkTS 字符串相互转换时，相比 String 有更好的性能。

**起始版本：** 21

**父类型：**

* ToString
* Equatable\<Utf16String>
* Hashable
* [JSKeyable](#interface-jskeyable)
* [JSInteropType\<Utf16String>](#interface-jsinteroptype)

### prop accessible

```cangjie
public prop accessible: Bool
```

**功能：** 判断字符串内容是否可访问。该对象的字符串内容可以使用 dispose 手动释放，释放后继续访问会抛出异常。

**起始版本：** 21

**类型：** Bool

**读写能力：** 只读

### prop size

```cangjie
public prop size: Int64
```

**功能：** 表示该字符串（UTF-16 编码格式）中编码单元的总长度。其中，UTF-16 编码格式的编码单元占 2 个字节，每个字符有 1-2 个编码单元。

**起始版本：** 21

**类型：** Int64

**读写能力：** 只读

### prop totalChars

```cangjie
public prop totalChars: Int64
```

**功能：** 该字符的总字符数。

**起始版本：** 21

**类型：** Int64

**读写能力：** 只读

### static let empty

```cangjie
public static let empty: Utf16String
```

**功能：** 空字符串。

**起始版本：** 21

**类型：** Utf16String

**读写能力：** 只读

### init(String)

```cangjie
public init(src: String)
```

**功能：** 从标准库 String 创建一个 Utf16String。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|src|String|是|-|目标字符串。|

### static func fromJSValue(JSContext, JSValue)

```cangjie
public static func fromJSValue(_: JSContext, value: JSValue): Utf16String
```

**功能：** 将 JSValue 转换为 Utf16String 对象。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|_|[JSContext](#class-jscontext)|是|-|ArkTS互操作上下文。|
|value|[JSValue](#struct-jsvalue)|是|-|ArkTS统一类型。|

**返回值：**

|类型|说明|
|:----|:----|
|[Utf16String](#class-utf16string)|Utf16String 对象。|

### static func toArkTsType()

```cangjie
public static func toArkTsType(): String
```

**功能：** 对应的 ArkTS 类型名称。

**起始版本：** 21

**返回值：**

|类型| 说明 |
|:----|:---|
|String| 对应的 ArkTS 类型名称。   |

### func compare(Utf16String)

```cangjie
public func compare(target: Utf16String): Ordering
```

**功能：** 按照字符 Unicode 的字典序比较大小。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|target|[Utf16String](#class-utf16string)|是|-|比较的 Utf16String 对象。|

**返回值：**

|类型|说明|
|:----|:----|
|Ordering|比较大小的结果。|

### func contains(Utf16String)

```cangjie
public func contains(target: Utf16String): Bool
```

**功能：** 是否包含字符串。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|target|[Utf16String](#class-utf16string)|是|-|目标字符串。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|是否包含目标字符串。|

### func count(Utf16String)

```cangjie
public func count(src: Utf16String): Int64
```

**功能：** 包含字符串次数。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|src|[Utf16String](#class-utf16string)|是|-|目标字符串。|

**返回值：**

|类型|说明|
|:----|:----|
|Int64|包含目标字符串的次数。|

### func dispose()

```cangjie
public func dispose(): Unit
```

**功能：** 释放保存字符串内容的内存。在首次 dispose 之后继续访问该字符串的内容将导致异常。

**起始版本：** 21

### func endsWith(Utf16String)

```cangjie
public func endsWith(target: Utf16String): Bool
```

**功能：** 字符串是否以目标字符串结束。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|target|[Utf16String](#class-utf16string)|是|-|目标字符串。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|是否以目标字符串结束。|

### func hashCode()

```cangjie
public func hashCode(): Int64
```

**功能：** 字符串 hash 值。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Int64|字符串 hash 值。<br>**注意：** 不保证该 hash 值与相同内容的 String 的 hash 一致。 不保证该 hash 值与相同内容的 ArkTS string 的 hash 一致。|

### func indexOf(Utf16String)

```cangjie
public func indexOf(target: Utf16String): ?Int64
```

**功能：** 向后查找字符串所在的位置（字符索引）。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|target|[Utf16String](#class-utf16string)|是|-|目标字符串。|

**返回值：**

|类型|说明|
|:----|:----|
|?Int64|首次找到目标字符串时返回位置索引，未找到时返回 None。|

### func indexOf(Utf16String, Int64)

```cangjie
public func indexOf(target: Utf16String, fromIndex: Int64): ?Int64
```

**功能：** 向后查找字符串所在的位置（编码单元索引）。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|target|[Utf16String](#class-utf16string)|是|-|目标字符串。|
|fromIndex|Int64|是|-|当前字符串的查找起始位置，不填是 0。|

**返回值：**

|类型|说明|
|:----|:----|
|?Int64|首次找到目标字符串时返回位置索引，未找到时返回 None。|

### func isEmpty()

```cangjie
public func isEmpty(): Bool
```

**功能：** 是否为空字符串。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Bool|是否为空字符串。|

### func isCompressed()

```cangjie
public func isCompressed(): Bool
```

**功能：** 判断内容是否被压缩。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Bool| 是否被压缩 |

### func lastIndexOf(Utf16String)

```cangjie
public func lastIndexOf(target: Utf16String): ?Int64
```

**功能：** 向前查找字符所在的位置。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|target|[Utf16String](#class-utf16string)|是|-|目标字符串。|

**返回值：**

|类型|说明|
|:----|:----|
|?Int64|首次找到目标字符串时返回位置索引，未找到时返回 None。|

### func lastIndexOf(Utf16String, Int64)

```cangjie
public func lastIndexOf(target: Utf16String, fromIndex: Int64): ?Int64
```

**功能：** 向前查找字符所在的位置。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|target|[Utf16String](#class-utf16string)|是|-|目标字符串。|
|fromIndex|Int64|是|-|当前字符串的查找起始位置，不填是 size。|

**返回值：**

|类型|说明|
|:----|:----|
|?Int64|首次找到目标字符串时返回位置索引，未找到时返回 None。|

### func lazySplit(Utf16String, Bool)

```cangjie
public func lazySplit(separator: Utf16String, remoteEmpty!: Bool = false): Iterator<Utf16String>
```

**功能：** 懒分割字符串。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|separator|[Utf16String](#class-utf16string)|是|-|分隔符。当分隔符为空字符串时，每个字符都是单独的元素。|
|remoteEmpty|Bool|否|false|是否删除空白元素。|

**返回值：**

|类型|说明|
|:----|:----|
|Iterator\<[Utf16String](#class-utf16string)>|分割后的元素迭代器。|

### func lazySplit(Utf16String, Int64, Bool)

```cangjie
public func lazySplit(separator: Utf16String, maxSplit: Int64, remoteEmpty!: Bool = false): Iterator<Utf16String>
```

**功能：** 懒分割字符串。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|separator|[Utf16String](#class-utf16string)|是|-|分隔符。当分隔符为空字符串时，每个字符都是单独的元素。|
|maxSplit|Int64|是|-|分割最大数量。为 0 时无上限。|
|remoteEmpty|Bool|否|false|是否删除空白元素。|

**返回值：**

|类型|说明|
|:----|:----|
|Iterator\<[Utf16String](#class-utf16string)>|分割后的元素迭代器。|

### func lines()

```cangjie
public func lines(): Iterator<Utf16String>
```

**功能：** 获取行迭代器。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Iterator\<[Utf16String](#class-utf16string)>|行迭代器。|

### func replace(Utf16String, Utf16String, Int64)

```cangjie
public func replace(old: Utf16String, new: Utf16String, count!: Int64 = Int64.Max): Utf16String
```

**功能：** 替换字符串。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|old|[Utf16String](#class-utf16string)|是|-|替换前的元素|
|new|[Utf16String](#class-utf16string)|是|-|替换后的元素|
|count|Int64|否|Int64.Max|替换次数|

**返回值：**

|类型|说明|
|:----|:----|
|[Utf16String](#class-utf16string)| 替换完的字符串 |

### func runes()

```cangjie
public func runes(): Iterator<Rune>
```

**功能：** 获取字符迭代器。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|Iterator\<Rune>|字符迭代器。|

### func split(Utf16String, Bool)

```cangjie
public func split(seperator: Utf16String, remoteEmpty!: Bool = false): Array<Utf16String>
```

**功能：** 分割字符串。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|seperator|[Utf16String](#class-utf16string)|是|-|分隔符。当分隔符为空字符串时，每个字符都是单独的元素。|
|remoteEmpty|Bool|否|false|是否删除空白元素。|

**返回值：**

|类型|说明|
|:----|:----|
|Array\<[Utf16String](#class-utf16string)>|分割后的元素数组。|

### func split(Utf16String, Int64, Bool)

```cangjie
public func split(seperator: Utf16String, maxSplit: Int64, remoteEmpty!: Bool = false): Array<Utf16String>
```

**功能：** 分割字符串。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|seperator|[Utf16String](#class-utf16string)|是|-|分隔符。当分隔符为空字符串时，每个字符都是单独的元素。|
|maxSplit|Int64|是|-|分割最大数量。为 0 时无上限。|
|remoteEmpty|Bool|否|false|是否删除空白元素。|

**返回值：**

|类型|说明|
|:----|:----|
|Array\<[Utf16String](#class-utf16string)>|分割后的元素数组。|

### func startsWith(Utf16String)

```cangjie
public func startsWith(target: Utf16String): Bool
```

**功能：** 字符串是否以目标字符串开头。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|target|[Utf16String](#class-utf16string)|是|-|目标字符串。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|是否以目标字符串开头。|

### func toJSValue(JSContext)

```cangjie
public func toJSValue(context: JSContext): JSValue
```

**功能：** 将 Utf16String 对象转换成 JSValue。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|context|[JSContext](#class-jscontext)|是|-|ArkTS 互操作上下文。|

**返回值：**

|类型|说明|
|:----|:----|
|[JSValue](#struct-jsvalue)|ArkTS 统一类型。|

### func toString()

```cangjie
public func toString(): String
```

**功能：** 转换为 String。

**起始版本：** 21

**返回值：**

|类型|说明|
|:----|:----|
|String|转换后的 String 对象。|

### func !=(Utf16String)

```cangjie
public operator func != (target: Utf16String): Bool
```

**功能：** 判断与目标字符串是否不相等。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|target|[Utf16String](#class-utf16string)|是|-|比较的目标字符串。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|两个字符串不相等返回true，否则返回false。|

### func +(Utf16String)

```cangjie
public operator func + (right: Utf16String): Utf16String
```

**功能：** 往后拼接一个字符串。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|right|[Utf16String](#class-utf16string)|是|-|拼接的目标字符串。|

**返回值：**

|类型|说明|
|:----|:----|
|[Utf16String](#class-utf16string)|拼接后的字符串。|

### func \<(Utf16String)

```cangjie
public operator func < (target: Utf16String): Bool
```

**功能：** 判断是否小于目标字符串（按字符 Unicode 的字典序）。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|target|[Utf16String](#class-utf16string)|是|-|比较的目标字符串。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|小于目标字符串返回true，否则返回false。|

### func \<=(Utf16String)

```cangjie
public operator func <= (target: Utf16String): Bool
```

**功能：** 判断是否小于或等于目标字符串（按字符 Unicode 的字典序）。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|target|[Utf16String](#class-utf16string)|是|-|比较的目标字符串。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|小于或等于目标字符串返回true，否则返回false。|

### func ==(Utf16String)

```cangjie
public operator func == (target: Utf16String): Bool
```

**功能：** 判断与目标字符串是否相等。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|target|[Utf16String](#class-utf16string)|是|-|比较的目标字符串。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|两个字符串相等返回true，否则返回false。|

### func >(Utf16String)

```cangjie
public operator func > (target: Utf16String): Bool
```

**功能：** 判断是否大于目标字符串（按字符 Unicode 的字典序）。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|target|[Utf16String](#class-utf16string)|是|-|比较的目标字符串。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|大于目标字符串返回true，否则返回false。|

### func >=(Utf16String)

```cangjie
public operator func >= (target: Utf16String): Bool
```

**功能：** 判断是否大于或等于目标字符串（按字符 Unicode 的字典序）。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|target|[Utf16String](#class-utf16string)|是|-|比较的目标字符串。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|大于或等于目标字符串返回true，否则返回false。|

### func \[](Int64)

```cangjie
public operator func [](index: Int64): UInt16
```

**功能：** 根据元素索引获取字符。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|index|Int64|是|-|下标。|

**返回值：**

| 类型     |说明|
|:-------|:----|
| UInt16 |获取到的字符。|

### func \[](Range\<Int64>)

```cangjie
public operator func [](range: Range<Int64>): Utf16String
```

**功能：** 从字符串截取一段子串。

**起始版本：** 21

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|range|Range\<Int64>|是|-|截取范围。|

**返回值：**

|类型|说明|
|:----|:----|
|[Utf16String](#class-utf16string)|截取后的 Utf16String 字串。|
