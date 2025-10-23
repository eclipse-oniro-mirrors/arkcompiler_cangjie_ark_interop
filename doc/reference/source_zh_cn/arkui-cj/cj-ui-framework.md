# 框架接口

此页面记录UI框架使用的公开接口，应用开发者禁止使用，否则会产生无法预期的结果。

## 导入模块

```cangjie
import kit.ArkUI.*
```

## func loadNativeView(CustomView)

```cangjie
public func loadNativeView(view: CustomView): Bool
```

**功能：** UI框架使用的基础函数。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|view|[CustomView](#class-customview)|是|-|-|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|-|

## func bind((CustomView) -> ViewBuilder, CustomView)

```cangjie
public func bind(builder: (CustomView) -> ViewBuilder, thisView: CustomView)
```

**功能：** 用于将@Builder修饰的函数与自定义组件对象进行绑定。详情见bind函数使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|builder|([CustomView](#class-customview))->[ViewBuilder](#class-viewbuilder)|是|-|@Builder修饰的函数类型。|
|thisView|[CustomView](#class-customview)|是|-|当前自定义组件对象（一般为this）。|

## func bind\<T1>((CustomView,ObservedProperty\<T1>) -> ViewBuilder, CustomView)

```cangjie
public func bind<T1>(builder: (CustomView, ObservedProperty<T1>) -> ViewBuilder, thisView: CustomView)
```

**功能：** 用于将@Builder修饰的函数与自定义组件对象进行绑定。详情见bind函数使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|builder|([CustomView](#class-customview),[ObservedProperty](./cj-state-rendering-componentstatemanagement.md#class-observedproperty)\<T1>)->[ViewBuilder](#class-viewbuilder)|是|-|@Builder修饰的函数类型。|
|thisView|[CustomView](#class-customview)|是|-|当前自定义组件对象（一般为this）。|

## func bind\<T1, T2>((CustomView,ObservedProperty\<T1>,ObservedProperty\<T2>) -> ViewBuilder, CustomView)

```cangjie
public func bind<T1, T2>(builder: (CustomView, ObservedProperty<T1>,
    ObservedProperty<T2>) -> ViewBuilder, thisView: CustomView)
```

**功能：** 用于将@Builder修饰的函数与自定义组件对象进行绑定。详情见bind函数使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|builder|([CustomView](#class-customview),[ObservedProperty](./cj-state-rendering-componentstatemanagement.md#class-observedproperty)\<T1>,[ObservedProperty](./cj-state-rendering-componentstatemanagement.md#class-observedproperty)\<T2>)->[ViewBuilder](#class-viewbuilder)|是|-|@Builder修饰的函数类型。|
|thisView|[CustomView](#class-customview)|是|-|当前自定义组件对象（一般为this）。|

## func bind\<T1, T2, T3>((CustomView,ObservedProperty\<T1>,ObservedProperty\<T2>,ObservedProperty\<T3>) -> ViewBuilder, CustomView)

```cangjie
public func bind<T1, T2, T3>(builder: (CustomView, ObservedProperty<T1>, ObservedProperty<T2>,
    ObservedProperty<T3>) -> ViewBuilder, thisView: CustomView)
```

**功能：** 用于将@Builder修饰的函数与自定义组件对象进行绑定。详情见bind函数使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|builder|([CustomView](#class-customview),[ObservedProperty](./cj-state-rendering-componentstatemanagement.md#class-observedproperty)\<T1>,[ObservedProperty](./cj-state-rendering-componentstatemanagement.md#class-observedproperty)\<T2>,[ObservedProperty](./cj-state-rendering-componentstatemanagement.md#class-observedproperty)\<T3>)->[ViewBuilder](#class-viewbuilder)|是|-|@Builder修饰的函数类型。|
|thisView|[CustomView](#class-customview)|是|-|当前自定义组件对象（一般为this）。|

## interface CollectionEx\<T>

```cangjie
public interface CollectionEx<T> {
    prop size: Int64
    operator func [](idx: Int64, value!: T): Unit
    operator func [](idx: Int64): T
}
```

**功能：** 集合扩展接口。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

### extend\<T> Array\<T> <: CollectionEx\<T>

```cangjie
extend<T> Array<T> <: CollectionEx<T> {}
```

**功能：** 扩展泛型Array为CollectionEx子类型。

### extend\<T> ArrayList\<T> <: CollectionEx\<T>

```cangjie
extend<T> ArrayList<T> <: CollectionEx<T> {}
```
**功能：** 扩展泛型ArrayList为CollectionEx子类型。

### prop size

```cangjie
prop size: Int64
```

**功能：** 集合大小。

**类型：** Int64

**读写能力：** 只读

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

### operator func [](Int64, T)

```cangjie
public operator func [](idx: Int64, value!: T): Unit
```

**功能：** 设置指定索引位置的元素值。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|idx|Int64|是|-|元素索引。|
|value|T|是|-|**命名参数。** 元素值。|

### operator func [](Int64)

```cangjie
public operator func [](idx: Int64): T
```

**功能：** 获取指定索引位置的元素值。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|idx|Int64|是|-|元素索引。|

**返回值：**

|类型|说明|
|:----|:----|
|T|指定索引位置的元素值。|

## interface CommonMethod\<T>

```cangjie
public interface CommonMethod<T> {
    func onClick(event: ?(ClickEvent) -> Unit): T
    func onAppear(event: ?() -> Unit): T
    func onDisAppear(event: ?() -> Unit): T
    func onTouch(event: ?(TouchEvent) -> Unit): T
    func onHover(event: ?(Bool) -> Unit): T
    func onAreaChange(event: ?(Area, Area) -> Unit): T
    func onVisibleAreaChange(ratios: ?Array<Float64>, event: ?(Bool, Float64) -> Unit): T
    func onMouse(event: ?(MouseEvent) -> Unit): T
    func onKeyEvent(event: ?(KeyEvent) -> Unit): T
    func onFocus(event: ?() -> Unit): T
    func onBlur(event: ?() -> Unit): T
    func onDragStart(event: ?(DragInfo) -> DragItemInfo): T
    func onDragStart(event: ?(DragInfo) -> CustomBuilder): T
    func onDragStart(event: ?(DragInfo) -> Unit): T
    func onDragEnter(event: ?(DragInfo) -> Unit): T
    func onDragMove(event: ?(DragInfo) -> Unit): T
    func onDragLeave(event: ?(DragInfo) -> Unit): T
    func onDrop(event: ?(DragInfo) -> Unit): T
    func width(value: Option<Length>): T
    func height(value: Option<Length>): T
    func size(width!: ?Length, height!: ?Length): T
    func padding(value: ?Length): T
    func padding(top!: ?Length, right!: ?Length, bottom!: ?Length, left!: ?Length): T
    func margin(value: ?Length): T
    func margin(top!: ?Length, right!: ?Length, bottom!: ?Length, left!: ?Length): T
    func layoutWeight(value: ?Int32): T
    func constraintSize(minWidth!: ?Length, maxWidth!: ?Length, minHeight!: ?Length, maxHeight!: ?Length): T
    func align(value: ?Alignment): T
    func direction(value: ?Direction): T
    func position(x!: ?Length, y!: ?Length): T
    func markAnchor(x!: ?Length, y!: ?Length): T
    func offset(x!: ?Length, y!: ?Length): T
    func alignRules(value: ?AlignRuleOptions): T
    func aspectRatio(value: Float64): T
    func displayPriority(value: ?Int32): T
    func flexBasis(value: ?Length): T
    func flexGrow(value: ?Float64): T
    func flexGrow(value: ?Int64): T
    func flexShrink(value: ?Float64): T
    func flexShrink(value: ?Int64): T
    func alignSelf(value: ?ItemAlign): T
    func responseRegion(value: ?Rectangle): T
    func responseRegion(value: ?Array<Rectangle>): T
    func border(width!: ?Length, color!: ?ResourceColor, radius!: ?Length, style!: ?BorderStyle): T
    func borderWidth(value: ?Length): T
    func borderWidth(value: ?EdgeWidths): T
    func borderColor(value: ?ResourceColor): T
    func borderRadius(topLeft!: ?Length, topRight!: ?Length, bottomLeft!: ?Length, bottomRight!: ?Length): T
    func borderRadius(value: ?Length): T
    func borderStyle(value: ?BorderStyle): T
    func foregroundBlurStyle(value: ?BlurStyle): T
    func foregroundBlurStyle(value: ?BlurStyle, options: ?ForegroundBlurStyleOptions): T
    func foregroundColor(value: ?ColoringStrategy): T
    func foregroundColor(value: ?ResourceColor): T
    func backgroundColor(value: ?ResourceColor): T
    func backgroundImage(src: ?ResourceStr): T
    func backgroundImage(src: ?ResourceStr, repeat: ?ImageRepeat): T
    func backgroundImageSize(value: ?ImageSize): T
    func backgroundImageSize(width!: ?Length, height!: ?Length): T
    func backgroundImagePosition(value: ?Alignment): T
    func backgroundImagePosition(x!: ?Length, y!: ?Length): T
    func scale(x!: ?Float32, y!: ?Float32, z!: ?Float32, centerX!: ?Length, centerY!: ?Length): T
    func opacity(value: ?Float64): T
    func rotate(x!: ?Float32, y!: ?Float32, z!: ?Float32, angle!: ?Float32, centerX!: ?Length, centerY!: ?Length): T
    func translate(x!: ?Length, y!: ?Length, z!: ?Length): T
    func enabled(value: ?Bool): T
    func sharedTransition(id: String, options!: ?SharedTransitionOptions): T
    func geometryTransition(id: ?String, followWithoutTransition!: ?Bool): T
    func blur(value: ?Float64): T
    func colorBlend(value: ?ResourceColor): T
    func backdropBlur(value: ?Float64): T
    func shadow(radius!: ?Float64, color!: ?ResourceColor, offsetX!: ?Float64, offsetY!: ?Float64): T
    func grayscale(value: ?Float64): T
    func brightness(value: ?Float64): T
    func saturate(value: ?Float64): T
    func contrast(value: ?Float64): T
    func invert(value: ?Float64): T
    func invert(low!: ?Float64, high!: ?Float64, threshold!: ?Float64, thresholdRange!: ?Float64): T
    func sepia(value: ?Float64): T
    func hueRotate(value: ?Float32): T
    func zIndex(value: ?Int32): T
    func visibility(value: ?Visibility): T
    func clip(value: ?Bool): T
    func clipShape(value: ?BaseShape): T
    func maskShape(value: BaseShape): T
    func overlay(value!: ?String, align!: ?Alignment, offset!: ?OverlayOffset): T
    func bindPopup(show: ?Bool, popup: ?PopupOptions): T
    func bindPopup(show: ?Bool, popup: ?CustomPopupOptions): T
    func bindMenu(content: ?Array<MenuElement>): T
    func bindMenu(builder!: ?CustomBuilder): T
    func bindContextMenu(builder!: ?CustomBuilder, responseType!: ?ResponseType, options!: ?ContextMenuOptions): T
    func linearGradient(angle!: ?Float64, direction!: ?GradientDirection, colors!: ?Array<(ResourceColor, Float64)>, repeating!: ?Bool): T
    func sweepGradient(center: ?(Length, Length), start!: ?Float64, end!: ?Float64, rotation!: ?Float64, colors!: ?Array<(ResourceColor, Float64)>, repeating!: ?Bool): T
    func radialGradient(center: ?(Length, Length), radius: ?Length, colors: ?Array<(ResourceColor, Float64)>, repeating!: ?Bool): T
    func keyboardShortcut(value: ?FunctionKey, keys: ?Array<ModifierKey>): T
    func keyboardShortcut(value: ?String, keys: ?Array<ModifierKey>): T
    func keyboardShortcut(value: ?FunctionKey, keys: ?Array<ModifierKey>, action: ?() -> Unit): T
    func keyboardShortcut(value: ?String, keys: ?Array<ModifierKey>, action: ?() -> Unit): T
    func key(value: ?String): T
    func renderFit(fitMode: ?RenderFit): T
    func id(value: ?String): T
    func expandSafeArea(types!: ?Array<SafeAreaType>, edges!: ?Array<SafeAreaEdge>): T
    func bindContentCover(isShow: ?Bool, builder: ?CustomBuilder, options!: ?ContentCoverOptions): T
    func animationStart(value: ?AnimateParam): T
    func animationEnd(): T
    func transition(value: ?TransitionEffect): T
    func transition(value: ?TransitionEffect, onFinish: ?TransitionFinishCallback): T
    func focusable(value: ?Bool): T
    func tabIndex(index: ?Int32): T
    func defaultFocus(value: ?Bool): T
    func groupDefaultFocus(value: ?Bool): T
    func focusOnTouch(value: ?Bool): T
    func bindSheet(isShow: ?Bool, builder: CustomBuilder, options!: ?SheetOptions): T
    func dragPreview(value: String): T
}
```

**功能：** 组件通用方法接口。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

## interface Observer

```cangjie
public interface Observer {
    func onStateUpdate(info: String, dependentElmtIds: ArrayList<Int64>): Unit
    func notifyRead(info: String): Unit
    func id(): Int64
    func aboutToBeDeleted(): Unit
}
```

**功能：** 观察者接口。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

### func onStateUpdate(String, ArrayList\<Int64>)

```cangjie
func onStateUpdate(info: String, dependentElmtIds: ArrayList<Int64>): Unit
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|info|String|是|-|-|
|dependentElmtIds|[ArrayList](../../../cj-user-manual/source_zh_cn/collections/collection_arraylist.md#arraylist)\<Int64>|是|-|-|

### func notifyRead(String)

```cangjie
func notifyRead(info: String): Unit
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|info|String|是|-|-|

### func id()

```cangjie
func id(): Int64
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**返回值：**

|类型|说明|
|:----|:----|
|Int64|-|

### func aboutToBeDeleted()

```cangjie
func aboutToBeDeleted(): Unit
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

## class UINodeBase

```cangjie
public abstract class UINodeBase {}
```

**功能：** 组件的基类。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

## class ObservedPropertyAbstract

```cangjie
public abstract class ObservedPropertyAbstract <: Observable {
    public init(info: String)
}
```

**功能：** 框架状态管理使用的基础类。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**父类型：**

- [Observable](#class-observable)

### init(String)

```cangjie

public init(info: String)
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|info|String|是|-|-|

### func purgeDependencyOnElmtId(Int64)

```cangjie

public func purgeDependencyOnElmtId(rmElmtId: Int64): Unit
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|rmElmtId|Int64|是|-|-|

### func subscribeEx(Observer)

```cangjie

public func subscribeEx(observer: Observer): Unit
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|observer|[Observer](#interface-observer)|是|-|观察者。|

### func unsubscribeEx(Observer)

```cangjie

public func unsubscribeEx(observer: Observer): Unit
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|observer|[Observer](#interface-observer)|是|-|观察者。|

## class ObservedObject

```cangjie
public abstract class ObservedObject <: ObservedComplexAbstract {}
```

**功能：** 框架状态管理使用的基础类。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**父类型：**

- [ObservedComplexAbstract](#class-observedcomplexabstract)

### func addPublishVar(ObservedPropertyAbstract)

```cangjie

public func addPublishVar(publishVar: ObservedPropertyAbstract)
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|publishVar|[ObservedPropertyAbstract](#class-observedpropertyabstract)|是|-|-|

### func getPublishVar()

```cangjie

public func getPublishVar(): ArrayList<ObservedPropertyAbstract>
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**返回值：**

|类型|说明|
|:----|:----|
|ArrayList\<[ObservedPropertyAbstract](#class-observedpropertyabstract)>|-|

## class ObservedComplexAbstract

```cangjie
public abstract class ObservedComplexAbstract <: Observable {}
```

**功能：** 框架状态管理使用的基础类。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**父类型：**

- [Observable](#class-observable)

### func addPropsInfo(String)

```cangjie

public func addPropsInfo(info: String): Unit
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|info|String|是|-|属性信息。|

### func set(ObservedComplexAbstract)

```cangjie

public func set(v: ObservedComplexAbstract): Unit
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|v|[ObservedComplexAbstract](#class-observedcomplexabstract)|是|-|-|

## class RemoteView

```cangjie
public abstract class RemoteView {
    public init()
}
```

**功能：** UI框架使用的组件基础类。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

### init()

```cangjie
public init()
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

### func build()

```cangjie
public func build(): Unit
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

### func purgeVariableDependenciesOnElmtId(Int64)

```cangjie
public func purgeVariableDependenciesOnElmtId(rmElmtId: Int64): Unit
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|rmElmtId|Int64|是|-|-|

### func forceCompleteRerender(Bool)

```cangjie
public func forceCompleteRerender(deep: Bool): Unit
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|deep|Bool|是|-|-|

## class CustomView

```cangjie
public abstract class CustomView <: RemoteView & Observer {
    public var isReusable: Bool = false
    public init(parent: Option<CustomView>, localStorage: Option<LocalStorage>)
}
```

**功能：** UI框架使用的组件基础类。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**父类型：**

- [RemoteView](#class-remoteview)
- [Observer](#interface-observer)

### var isReusable

```cangjie
public var isReusable: Bool = false
```

**功能：** UI框架使用。

**类型：** Bool

**读写能力：** 可读写

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

### init(Option\<CustomView>, Option\<LocalStorage>)

```cangjie
public init(parent: Option<CustomView>, localStorage: Option<LocalStorage>)
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|parent|Option\<[CustomView](#class-customview)>|是|-|父组件。|
|localStorage|Option\<[LocalStorage](./cj-state-rendering-appstatemanagement.md#class-localstorage)>|是|-|持久化存储对象。|

### func getLocalStorage()

```cangjie
public func getLocalStorage(): LocalStorage
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**返回值：**

|类型|说明|
|:----|:----|
|[LocalStorage](./cj-state-rendering-appstatemanagement.md#class-localstorage)|持久化存储对象。|

### func declareWatch\<T>(ObservedProperty\<T>, () -> Unit)

```cangjie
public func declareWatch<T>(propMember: ObservedProperty<T>, callBack: () -> Unit)
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|propMember|[ObservedProperty](./cj-state-rendering-componentstatemanagement.md#class-observedproperty)\<T>|是|-|被观察的属性。|
|callBack|()->Unit|是|-|回调函数。|

### func build()

```cangjie
public func build(): Unit
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

### func forceCompleteRerender(Bool)

```cangjie
public override func forceCompleteRerender(deep: Bool): Unit
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|deep|Bool|是|-|是否深度重新渲染。|

### func updateDirtyElements()

```cangjie
public func updateDirtyElements()
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

### func forEachUpdateFunction\<T>(Int64, CollectionEx\<T>, (T,Int64) -> Unit, (T,Int64) -> String)

```cangjie
public func forEachUpdateFunction<T>(
    elmtId: Int64,
    arr: CollectionEx<T>,
    itemGenFunc!: (T, Int64) -> Unit,
    keyGeneratorFunc!: (T, Int64) -> String = { realData: T, idx: Int64 =>
        match(realData) {
            case realDataStr: ToString => idx.toString() + "_" + realDataStr.toString()
            case _ => idx.toString()
        }
    }
): Unit
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|elmtId|Int64|是|-|元素ID。|
|arr|[CollectionEx](#interface-collectionext)\<T>|是|-|集合数据。|
|itemGenFunc|(T,Int64)->Unit|是|-|**命名参数。** 项目生成函数。|
|keyGeneratorFunc|(T,Int64)->String|否|{ realData: T, idx: Int64 => match(realData) {<br>case realDataStr: ToString => idx.toString() + "_" + realDataStr.toString()<br>case \_ => idx.toString()<br>} }|**命名参数。** 键生成函数。|

### func observeComponentCreation(UpdateFuncNew)

```cangjie
public func observeComponentCreation(compilerAssignedUpdateFunc: UpdateFuncNew): Unit
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|compilerAssignedUpdateFunc|UpdateFuncNew|是|-|更新函数。|

### func observeRecycleComponentCreation(String, RecycleUpdateFunc)

```cangjie
public func observeRecycleComponentCreation(name: String, recycleUpdateFunc: RecycleUpdateFunc)
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|name|String|是|-|组件名称。|
|recycleUpdateFunc|RecycleUpdateFunc|是|-|回收更新函数。|

### func aboutToReuseInternal(ReuseParams)

```cangjie
public override func aboutToReuseInternal(param: ReuseParams): Unit
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|param|[ReuseParams](./cj-common-types.md#class-reuseparams)|是|-|重用参数。|

### func createRecycle(CustomView, Bool, String, () -> Unit)

```cangjie
public static func createRecycle(view: CustomView, isRecycling: Bool, name: String, callback: () -> Unit)
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|view|[CustomView](#class-customview)|是|-|自定义视图。|
|isRecycling|Bool|是|-|是否回收。|
|name|String|是|-|名称。|
|callback|()->Unit|是|-|回调函数。|

### func create(CustomView)

```cangjie
public static func create(view: CustomView)
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|view|[CustomView](#class-customview)|是|-|自定义视图。|

### func addProvideVar(ObservedPropertyAbstract, String)

```cangjie
public func addProvideVar(value: ObservedPropertyAbstract, name: String)
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|value|[ObservedPropertyAbstract](./cj-state-rendering-componentstatemanagement.md#class-observedpropertyabstract)|是|-|观察属性抽象。|
|name|String|是|-|名称。|

### func initializeConsume(String)

```cangjie
public func initializeConsume(name: String): ObservedPropertyAbstract
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|name|String|是|-|名称。|

**返回值：**

|类型|说明|
|:----|:----|
|[ObservedPropertyAbstract](./cj-state-rendering-componentstatemanagement.md#class-observedpropertyabstract)|观察属性抽象。|

### func notifyRead(String)

```cangjie
public func notifyRead(stateInfo: String): Unit
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|stateInfo|String|是|-|-|

### func onStateUpdate(String, ArrayList\<Int64>)

```cangjie
public func onStateUpdate(stateInfo: String, dependentElmtIds: ArrayList<Int64>): Unit
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|stateInfo|String|是|-|状态信息。|
|dependentElmtIds|[ArrayList](../../../cj-user-manual/source_zh_cn/collections/collection_arraylist.md#arraylist)\<Int64>|是|-|依赖的元素ID列表。|

### func id()

```cangjie
public func id(): Int64
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**返回值：**

|类型|说明|
|:----|:----|
|Int64|组件ID。|

### func addChildById(Int64, CustomView)

```cangjie
public func addChildById(id: Int64, child: CustomView): Unit
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|id|Int64|是|-|ID。|
|child|[CustomView](#class-customview)|是|-|子视图。|

### func aboutToBeDeleted()

```cangjie
public func aboutToBeDeleted(): Unit
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

### func ifElseBranchUpdateFunction(Int32, () -> Unit)

```cangjie
public func ifElseBranchUpdateFunction(branchId: Int32, branchFunc: () -> Unit)
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|branchId|Int32|是|-|分支ID。|
|branchFunc|()->Unit|是|-|分支函数。|

### func getUIContext()

```cangjie
public func getUIContext(): UIContext
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**返回值：**

|类型|说明|
|:----|:----|
|[UIContext](./cj-apis-uicontext-uicontext.md#class-uicontext)|UI上下文。|

## class ViewBuilder

```cangjie
public class ViewBuilder {
    public let build: () -> Unit
    public init(build: () -> Unit)
}
```

**功能：** UI框架使用的基础类。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

### let build

```cangjie
public let build: () -> Unit
```

**功能：** UI框架使用。

**类型：** ()->Unit

**读写能力：** 只读

**起始版本：** 22

### init(() -> Unit)

```cangjie
public init(build: () -> Unit)
```

**功能：** 创建ViewBuilder类型对象。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|build|()->Unit|是|-|自定义组件。|

## class CJEntry

```cangjie
public class CJEntry {}
```

**功能：** 用于提供被Native调用的全局函数。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

### static func getInstance()

```cangjie
public static func getInstance(): CJEntry
```

**功能：** 创建并返回CJEntry对象。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**返回值：**

|类型|说明|
|:----|:----|
|[CJEntry](#class-cjentry)|对应的CJEntry对象|

### func registerEntry(String, () -> Bool)

```cangjie
public func registerEntry(name: String, call: () -> Bool): Unit
```

**功能：** 设置应用开发者注册的应用入口。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|name|String|是|-|注册名称。|
|call|()->Bool|是|-|回调函数。|

## class LegalCallCheck

```cangjie
public class LegalCallCheck {}
```

**功能：** 检查组件生成是否合法，UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

### static func check(ViewBuilder)

```cangjie
public static func check(_: ViewBuilder)
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|_|[ViewBuilder](#class-viewbuilder)|是|-|UI框架使用。|

### static func check(CustomView)

```cangjie
public static func check(_: CustomView)
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|_|[CustomView](#class-customview)|是|-|UI框架使用。|

## class CJPageEntry

```cangjie
public class CJPageEntry {}
```

**功能：** 用于提供被Native调用的全局函数。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

### static func getInstance()

```cangjie
public static func getInstance(): CJPageEntry
```

**功能：** 创建并返回CJPageEntry对象。

**返回值：**

|类型|说明|
|:----|:----|
|[CJPageEntry](#class-cjpageentry)|对应的CJPageEntry对象。|

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

### func registerHybridPage(String, CustomView)

```cangjie
public func registerHybridPage(name: String, cjPage: CustomView): Unit
```

**功能：** 注册混合页面，UI框架使用。

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|name|String|是|-|注册名称。|
|cjPage|[CustomView](#class-customview)|是|-|回调函数。|

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

### func removeHybridPage(String)

```cangjie
public func removeHybridPage(name: String): Unit
```

**功能：** 移除对应名称的混合页面。

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|name|String|是|-|混合页面名称|

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

## class HybridComponentBase

```cangjie
public open class HybridComponentBase <: SharedObject {}
```

**功能：** 混合组件基础类，供混合框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**父类型：**

- [SharedObject](../arkinterop/cj-apis-ark_interop.md#class-sharedobject)

### static func registerHybridComponent(String, () -> CPointer\<Unit>, () -> Unit)

```cangjie
public static func registerHybridComponent(compName: String, loadHandle: () -> CPointer<Unit>,
    unloadHandle: () -> Unit)
```

**功能：** 注册混合组件，UI框架使用。

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|compName|String|是|-|组件名。|
|loadHandle|()->CPointer\<Unit>|是|-|组件加载处理器。|
|unloadHandle|()->Unit|是|-|组件卸载处理器。|

## class If

```cangjie
public class If <: UINodeBase {
    public init(subcomponent: () -> Unit)
}
```

**功能：** if/else组件的定义结构体，供UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**父类型：**

- [UINodeBase](./cj-ui-framework.md#class-uinodebase)

### init(() -> Unit)

```cangjie
public init(subcomponent: () -> Unit)
```

**功能：**创建If类型对象。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|subcomponent|()->Unit|是|-|子组件。|

### static func branchId(Int32)

```cangjie
public static func branchId(value: Int32): Unit
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|value|Int32|是|-|-|

### static func getBranchId()

```cangjie
public static func getBranchId(): Int32
```

**功能：**UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**返回值：**

|类型|说明|
|:----|:----|
|Int32|-|

## class EmptyComponent

```cangjie
public class EmptyComponent <: CommonMethodComponent<EmptyComponent> & EmptyComponentAttribute {
    public init()
}
```

**功能：** 空组件类。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**父类型：**

- CommonMethodComponent\<[EmptyComponent](#class-emptycomponent)>
- EmptyComponentAttribute

### init()

```cangjie
public init()
```

**功能：** 创建EmptyComponent实例。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

## class Observable

```cangjie
public open class Observable {}
```

**功能：** 框架状态管理使用的基础类。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

## class \_\_Recycle\_\_

```cangjie
public class __Recycle__ <: CommonMethodComponent<__Recycle__> & RecycleAttribute {
    public init()
    public init(child: () -> Unit)
}
```

**功能：** 回收组件类。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**父类型：**

- CommonMethodComponent\<[\_\_Recycle\_\_](#class-__recycle__)>
- RecycleAttribute

### init()

```cangjie
public init()
```

**功能：** 创建__Recycle__实例。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

### init(() -> Unit)

```cangjie
public init(child: () -> Unit)
```

**功能：** 创建__Recycle__实例并设置子组件。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|child|()->Unit|是|-|子组件。|

### func pop()

```cangjie
public override func pop()
```

**功能：** 弹出回收组件。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

## class SubscriberManager

```cangjie
public class SubscriberManager {}
```

**功能：** 框架状态管理使用的基础类。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

### static func getInstance()

```cangjie

public static func getInstance(): SubscriberManager
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**返回值：**

|类型|说明|
|:----|:----|
|[SubscriberManager](#class-subscribermanager)|订阅管理器。|

### func add(Observer)

```cangjie

public func add(value: Observer): Bool
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|value|[Observer](#interface-observer)|是|-|观察者。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|-|

### func delete(Observer)

```cangjie

public func delete(value: Observer): Unit
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|value|[Observer](#interface-observer)|是|-|观察者。|

### func get(Int64)

```cangjie

public func get(id: Int64): Option<Observer>
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|id|Int64|是|-|观察者id。|

**返回值：**

|类型|说明|
|:----|:----|
|Option\<[Observer](#interface-observer)>|观察者。|

### func has(Int64)

```cangjie

public func has(id: Int64): Bool
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|id|Int64|是|-|观察者id。|

**返回值：**

|类型|说明|
|:----|:----|
|Bool|判断结果。|

## class ViewStackProcessor

```cangjie
public class ViewStackProcessor {}
```

**功能：** UI框架使用的基础类。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

### static func AllocateNewElmetIdForNextComponent()

```cangjie

public static func AllocateNewElmetIdForNextComponent(): Int64
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**返回值：**

|类型|说明|
|:----|:----|
|Int64|组件id。|

### static func GetElmtIdToAccountFor()

```cangjie

public static func GetElmtIdToAccountFor(): Int64
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**返回值：**

|类型|说明|
|:----|:----|
|Int64|组件id。|

### static func ImplicitPopBeforeContinue()

```cangjie

public static func ImplicitPopBeforeContinue(): Unit
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

### static func StartGetAccessRecordingFor(Int64)

```cangjie

public static func StartGetAccessRecordingFor(elmtId: Int64): Unit
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22

**参数：**

|参数名|类型|必填|默认值|说明|
|:---|:---|:---|:---|:---|
|elmtId|Int64|是|-|-|

### static func StopGetAccessRecording()

```cangjie

public static func StopGetAccessRecording(): Unit
```

**功能：** UI框架使用。

**系统能力：** SystemCapability.ArkUI.ArkUI.Full

**起始版本：** 22
