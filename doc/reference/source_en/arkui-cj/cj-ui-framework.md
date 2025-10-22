# Framework Interfaces

This page documents the public interfaces used by the UI framework. Application developers are prohibited from using these interfaces, as doing so may lead to unexpected results.

## Import Module

```cangjie
import kit.ArkUI.*
```

## func bind((CustomView) -> ViewBuilder, CustomView)

```cangjie
public func bind(builder: (CustomView) -> ViewBuilder, thisView: CustomView)
```

**Function:** Used to bind an @Builder decorated function with a custom component object. For details, see bind function usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| builder | ([CustomView](#class-customview))->[ViewBuilder](#class-viewbuilder) | Yes | - | The function type decorated with @Builder. |
| thisView | [CustomView](#class-customview) | Yes | - | The current custom component object (usually this). |

## func bind\<T1, T2, T3>((CustomView,ObservedProperty\<T1>,ObservedProperty\<T2>,ObservedProperty\<T3>) -> ViewBuilder, CustomView)

```cangjie
public func bind<T1, T2, T3>(
    builder: (CustomView, ObservedProperty<T1>, ObservedProperty<T2>, ObservedProperty<T3>) -> ViewBuilder,
    thisView: CustomView
)
```

**Function:** Used to bind an @Builder decorated function with a custom component object. For details, see bind function usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| builder | ([CustomView](#class-customview),[ObservedProperty](./cj-state-rendering-componentstatemanagement.md#class-observedproperty)\<T1>,[ObservedProperty](./cj-state-rendering-componentstatemanagement.md#class-observedproperty)\<T2>,[ObservedProperty](./cj-state-rendering-componentstatemanagement.md#class-observedproperty)\<T3>)->[ViewBuilder](#class-viewbuilder) | Yes | - | The function type decorated with @Builder. |
| thisView | [CustomView](#class-customview) | Yes | - | The current custom component object (usually this). |

## func bind\<T1, T2>((CustomView,ObservedProperty\<T1>,ObservedProperty\<T2>) -> ViewBuilder, CustomView)

```cangjie
public func bind<T1, T2>(
    builder: (CustomView, ObservedProperty<T1>, ObservedProperty<T2>) -> ViewBuilder,
    thisView: CustomView
)
```

**Function:** Used to bind an @Builder decorated function with a custom component object. For details, see bind function usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| builder | ([CustomView](#class-customview),[ObservedProperty](./cj-state-rendering-componentstatemanagement.md#class-observedproperty)\<T1>,[ObservedProperty](./cj-state-rendering-componentstatemanagement.md#class-observedproperty)\<T2>)->[ViewBuilder](#class-viewbuilder) | Yes | - | The function type decorated with @Builder. |
| thisView | [CustomView](#class-customview) | Yes | - | The current custom component object (usually this). |

## func bind\<T1>((CustomView,ObservedProperty\<T1>) -> ViewBuilder, CustomView)

```cangjie
public func bind<T1>(builder: (CustomView, ObservedProperty<T1>) -> ViewBuilder, thisView: CustomView)
```

**Function:** Used to bind an @Builder decorated function with a custom component object. For details, see bind function usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| builder | ([CustomView](#class-customview),[ObservedProperty](./cj-state-rendering-componentstatemanagement.md#class-observedproperty)\<T1>)->[ViewBuilder](#class-viewbuilder) | Yes | - | The function type decorated with @Builder. |
| thisView | [CustomView](#class-customview) | Yes | - | The current custom component object (usually this). |

## func loadNativeView(CustomView)

```cangjie
public func loadNativeView(view: CustomView): Bool
```

**Function:** Basic function used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| view | [CustomView](#class-customview) | Yes | - | - |

**Return Value:**

| Type | Description |
|:----|:----|
| Bool | - |

## interface Observer

```cangjie
public interface Observer {
    func onStateUpdate(info: String, dependentElmtIds: ArrayList<Int64>): Unit
    func notifyRead(info: String): Unit
    func id(): Int64
    func aboutToBeDeleted(): Unit
}
```

**Function:** Base class for persistent storage. Internal interface, used by the framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### func aboutToBeDeleted()

```cangjie
func aboutToBeDeleted(): Unit
```

**Function:** Deletes the persistent storage object. Used by the UI framework.

### func id()

```cangjie
func id(): Int64
```

**Function:** Gets the ID of the persistent storage object.

**Return Value:**

| Type | Description |
|:----|:----|
| Int64 | The ID of the persistent storage object. |

### func notifyRead(String)

```cangjie
func notifyRead(info: String): Unit
```

**Function:** Used by the UI framework.

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| info | String | Yes | - | UI framework information. |

### func onStateUpdate(String, ArrayList\<Int64>)

```cangjie
func onStateUpdate(info: String, dependentElmtIds: ArrayList<Int64>): Unit
```

**Function:** Used by the UI framework.

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| info | String | Yes | - | - |
| dependentElmtIds | ArrayList\<Int64> | Yes | - | - |

## class CJEntry

```cangjie
public class CJEntry {}
```

**Function:** Used to provide global functions called by Native.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### static func getInstance()

```cangjie
public static func getInstance(): CJEntry
```

**Function:** Creates and returns a CJEntry object.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Return Value:**

| Type | Description |
|:----|:----|
| [CJEntry](#class-cjentry) | The corresponding CJEntry object. |

### func registerEntry(String, () -> Bool)

```cangjie
public func registerEntry(name: String, call: () -> Bool): Unit
```

**Function:** Sets the application entry registered by application developers.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| name | String | Yes | - | Registration name. |
| call | ()->Bool | Yes | - | Callback function. |

## class CJPageEntry

```cangjie
public class CJPageEntry {}
```

**Function:** Used to provide global functions called by Native.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### static func getInstance()

```cangjie
public static func getInstance(): CJPageEntry
```

**Function:** Creates and returns a CJPageEntry object.

**Return Value:**

| Type | Description |
|:----|:----|
| [CJPageEntry](#class-cjpageentry) | The corresponding CJPageEntry object. |

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### func registerHybridPage(String, CustomView)

```cangjie
public func registerHybridPage(name: String, cjPage: CustomView): Unit
```

**Function:** Registers a hybrid page. Used by the UI framework.

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| name | String | Yes | - | Registration name. |
| cjPage | [CustomView](#class-customview) | Yes | - | Callback function. |

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### func removeHybridPage(String)

```cangjie
public func removeHybridPage(name: String): Unit
```

**Function:** Removes the hybrid page with the specified name.

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| name | String | Yes | - | Hybrid page name. |

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

## class ContainerBase

```cangjie
public abstract class ContainerBase <: ViewBase {}
```

**Function:** Base class for components used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parent Type:**

- [ViewBase](#class-viewbase)

### func initial()

```cangjie
public open override func initial()
```

**Function:** Initialization method. Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

## class CustomView

```cangjie
public abstract class CustomView <: RemoteView & Observer {
    public let nativeView: View
    public var isReusable: Bool = false
    public init(parent: Option<CustomView>, localStorage: Option<LocalStorage>)
}
```

**Function:** Base class for components used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parent Types:**

- RemoteView
- Observer

### var isReusable

```cangjie
public var isReusable: Bool = false
```

**Function:** Used by the UI framework.

**Type:** Bool

**Read/Write Permission:** Read-write

### let nativeView

```cangjie
public let nativeView: View
```

**Function:** Used by the UI framework.

**Type:** [View](#class-view)

**Read/Write Permission:** Read-only

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### init(Option\<CustomView>, Option\<LocalStorage>)

```cangjie
public init(parent: Option<CustomView>, localStorage: Option<LocalStorage>)
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| parent | Option\<[CustomView](#class-customview)> | Yes | - | Parent component. |
| localStorage | Option<[LocalStorage](./cj-state-rendering-appstatemanagement.md#class-localstorage)> | Yes | - | Persistent storage object. |

### static func create(CustomView)

```cangjie
public static func create(view: CustomView)
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| view | [CustomView](#class-customview) | Yes | - | - |### static func createRecycle(CustomView, Bool, String, () -> Unit)

```cangjie
public static func createRecycle(view: CustomView, isRecycling: Bool, name: String, callback: () -> Unit)
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| view | [CustomView](#class-customview) | Yes | - | - |
| isRecycling | Bool | Yes | - | - |
| name | String | Yes | - | - |
| callback | ()->Unit | Yes | - | - |

### func aboutToBeDeleted()

```cangjie
public func aboutToBeDeleted(): Unit
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

### func aboutToRecycleInternal()

```cangjie
public override func aboutToRecycleInternal(): Unit
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

### func aboutToReuseInternal(ReuseParams)

```cangjie
public override func aboutToReuseInternal(param: ReuseParams): Unit
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| param | [ReuseParams](../BasicServicesKit/cj-apis-base.md#class-reuseparams) | Yes | - | - |

### func addChildById(Int64, CustomView)

```cangjie
public func addChildById(id: Int64, child: CustomView): Unit
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| id | Int64 | Yes | - | - |
| child | [CustomView](#class-customview) | Yes | - | - |

### func addProvideVar(ObservedPropertyAbstract, String)

```cangjie
public func addProvideVar(value: ObservedPropertyAbstract, name: String)
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| value | ObservedPropertyAbstract | Yes | - | - |
| name | String | Yes | - | - |

### func build()

```cangjie
public func build(): Unit
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

### func declareWatch\<T>(ObservedProperty\<T>, () -> Unit)

```cangjie
public func declareWatch<T>(propMember: ObservedProperty<T>, callBack: () -> Unit)
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| propMember | [ObservedProperty](./cj-state-rendering-componentstatemanagement.md#class-observedproperty)\<T> | Yes | - | - |
| callBack | ()->Unit | Yes | - | - |

### func delayCompleteRerender(Bool)

```cangjie
public func delayCompleteRerender(deep: Bool)
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| deep | Bool | Yes | - | - |

### func flushDelayCompleteRerender()

```cangjie
public func flushDelayCompleteRerender()
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

### func forEachUpdateFunction\<T>(Int64, CollectionEx\<T>, (T,Int64) -> Unit, (T,Int64) -> String)

```cangjie
public func forEachUpdateFunction<T>(
    elmtId: Int64,
    arr: CollectionEx<T>,
    itemGenFunc!: (T, Int64) -> Unit,
    keyGeneratorFunc!: (T, Int64) -> String = {
        realData: T, idx: Int64 => match (realData) {
            case realDataStr: ToString => idx.toString() + "_" + realDataStr.toString()
            case _ => idx.toString()
        }
    }
): Unit
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| elmtId | Int64 | Yes | - | - |
| arr | [CollectionEx](../BasicServicesKit/cj-apis-base.md#interface-collectionex)\<T> | Yes | - | - |
| itemGenFunc | (T,Int64)->Unit | Yes | - | **Named parameter.** - |
| keyGeneratorFunc | (T,Int64)->String | No | { realData: T, idx: Int64 => match(realData) { case realDataStr: ToString => idx.toString() + "_" + realDataStr.toString() case _ => idx.toString() } } | **Named parameter.** - |

### func forceCompleteRerender(Bool)

```cangjie
public override func forceCompleteRerender(deep: Bool): Unit
```

**Function:** Forces a refresh and re-rendering.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| deep | Bool | Yes | - | Whether to recursively refresh child components. |

### func getLocalStorage()

```cangjie
public func getLocalStorage(): LocalStorage
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Return Value:**

| Type | Description |
|:----|:----|
| [LocalStorage](./cj-state-rendering-appstatemanagement.md#class-localstorage) | - |

### func id()

```cangjie
public func id(): Int64
```

**Function:** Sets the target control's ID attribute.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Return Value:**

| Type | Description |
|:----|:----|
| Int64 | Returns the object specifying the target control's ID attribute. |

### func ifElseBranchUpdateFunction(Int32, () -> Unit)

```cangjie
public func ifElseBranchUpdateFunction(branchId: Int32, branchFunc: () -> Unit)
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| branchId | Int32 | Yes | - | - |
| branchFunc | ()->Unit | Yes | - | - |

### func initializeConsume(String)

```cangjie
public func initializeConsume(name: String): ObservedPropertyAbstract
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| name | String | Yes | - | - |

**Return Value:**

| Type | Description |
|:----|:----|
| ObservedPropertyAbstract | - |

### func markLazyForEachProcess(String)

```cangjie
public func markLazyForEachProcess(groupId: String): Unit
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| groupId | String | Yes | - | - |

### func notifyRead(String)

```cangjie
public func notifyRead(stateInfo: String): Unit
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| stateInfo | String | Yes | - | - |

### func observeComponentCreation(UpdateFuncNew)

```cangjie
public func observeComponentCreation(compilerAssignedUpdateFunc: UpdateFuncNew): Unit
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| compilerAssignedUpdateFunc | UpdateFuncNew | Yes | - | - |

### func observeRecycleComponentCreation(String, RecycleUpdateFunc)

```cangjie
public func observeRecycleComponentCreation(name: String, recycleUpdateFunc: RecycleUpdateFunc)
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| name | String | Yes | - | - |
| recycleUpdateFunc | RecycleUpdateFunc | Yes | - | - |

### func onStateUpdate(String, ArrayList\<Int64>)

```cangjie
public func onStateUpdate(stateInfo: String, dependentElmtIds: ArrayList<Int64>): Unit
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| stateInfo | String | Yes | - | - |
| dependentElmtIds | ArrayList\<Int64> | Yes | - | - |

### func purgeDeletedElmtIds(ArrayList\<Int64>)

```cangjie
public func purgeDeletedElmtIds(rmElmtIds: ArrayList<Int64>)
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| rmElmtIds | ArrayList\<Int64> | Yes | - | - |

### func removeChildById(Int64)

```cangjie
public func removeChildById(id: Int64): Bool
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| id | Int64 | Yes | - | - |

**Return Value:**

| Type | Description |
|:----|:----|
| Bool | - |

### func removeChildGroupById(String)

```cangjie
public func removeChildGroupById(groupId: String): Bool
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| groupId | String | Yes | - | - |

**Return Value:**

| Type | Description |
|:----|:----|
| Bool | - |

### func resetLazyForEachProcess()

```cangjie
public func resetLazyForEachProcess(): Unit
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

### func resetRecycleCustomNode()

```cangjie
public func resetRecycleCustomNode()
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

### func setParent(Option\<CustomView>)

```cangjie
public func setParent(parent: Option<CustomView>): Unit
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| parent | Option<[CustomView](#class-customview)> | Yes | - | - |

### func updateDirtyElements()

```cangjie
public func updateDirtyElements()
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

### func updateElement(Int64)

```cangjie
public func updateElement(elmtId: Int64): Unit
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| elmtId | Int64 | Yes | - | - |## class ForEach

```cangjie
public class ForEach <: UINodeBase {
    public init(subcomponent: () -> Unit)
}
```

**Function:** ForEach component.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parent Type:**

- UINodeBase

### init(() -> Unit)

```cangjie
public init(subcomponent: () -> Unit)
```

**Function:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| subcomponent | ()->Unit | Yes | - | Subcomponent. |

### static func create\<T>(Int64, CustomView, CollectionEx\<T>, ItemGenFuncType\<T>, KeyGenFuncType\<T>)

```cangjie
public static func create<T>(viewID: Int64, parentView: CustomView, dataSource: CollectionEx<T>,
itemGeneratorFunc!: ItemGenFuncType<T>,
keyGeneratorFunc!: KeyGenFuncType<T> = {
    realData: T, idx: Int64 => match (realData) {
        case realDataStr: ToString => realDataStr.toString()
        case _ => idx.toString()
    }
}): Unit
```

**Function:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| viewID | Int64 | Yes | - | Component ID. |
| parentView | [CustomView](#class-customview) | Yes | - | Parent component. |
| dataSource | [CollectionEx](../BasicServicesKit/cj-apis-base.md#interface-collectionex)\<T> | Yes | - | Data source. |
| itemGeneratorFunc | ItemGenFuncType\<T> | Yes | - | **Named parameter.** Component generator function. |
| keyGeneratorFunc | KeyGenFuncType\<T> | No | { realData: T, idx: Int64 =>} | **Named parameter.** Key generator function. |

### static func create()

```cangjie
public static func create()
```

**Function:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### func initial()

```cangjie
public func initial(): Unit
```

**Function:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### func pop()

```cangjie
public func pop(): Unit
```

**Function:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### func update()

```cangjie
public func update(): Unit
```

**Function:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

## class HybridComponentBase

```cangjie
public open class HybridComponentBase <: SharedObject {}
```

**Function:** Base class for hybrid components, used by hybrid frameworks.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parent Type:**

- [SharedObject](../arkinterop/cj-apis-ark_interop.md#class-sharedobject)

### static func registerHybridComponent(String, () -> CPointer\<Unit>, () -> Unit)

```cangjie
public static func registerHybridComponent(compName: String, loadHandle: () -> CPointer<Unit>,
    unloadHandle: () -> Unit)
```

**Function:** Registers a hybrid component for UI framework usage.

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| compName | String | Yes | - | Component name. |
| loadHandle | ()->CPointer\<Unit> | Yes | - | Component load handler. |
| unloadHandle | ()->Unit | Yes | - | Component unload handler. |

## class If

```cangjie
public class If <: UINodeBase {
    public init(subcomponent: () -> Unit)
}
```

**Function:** Definition structure for if/else components, used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parent Type:**

- UINodeBase

### init(() -> Unit)

```cangjie
public init(subcomponent: () -> Unit)
```

**Function:** Creates an If-type object.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| subcomponent | ()->Unit | Yes | - | Subcomponent. |

### static func branchId(Int32)

```cangjie
public static func branchId(value: Int32): Unit
```

**Function:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| value | Int32 | Yes | - | - |

### static func getBranchId()

```cangjie
public static func getBranchId(): Int32
```

**Function:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Return Value:**

| Type | Description |
|:----|:----|
| Int32 | - |

### func initial()

```cangjie
public func initial(): Unit
```

**Function:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### func update()

```cangjie
public func update(): Unit
```

**Function:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

## class InteractableView

```cangjie
abstract sealed class InteractableView {}
```

**Function:** Base class for components. For more methods, refer to the common events section of Cangjie components.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### func onAppear(() -> Unit)

```cangjie
public func onAppear(event: () -> Unit): This
```

**Function:** Triggered when the component appears.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| event | ()->Unit | Yes | - | Callback function triggered when the component appears. |

### func onAreaChange((Area,Area) -> Unit)

```cangjie
public func onAreaChange(event: (Area, Area) -> Unit): This
```

**Function:** Triggered when the component's area changes. Only responds to callbacks caused by layout changes affecting component size or position.

Rendering attribute changes due to drawing (e.g., translate, offset) will not trigger callbacks. Components whose position is determined by drawing changes (e.g., bindSheet) will also not trigger callbacks.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| event | ([Area](./cj-common-types.md#class-area),[Area](./cj-common-types.md#class-area))->Unit | Yes | - | Callback triggered when the component's area changes.<br/>Parameter 1: Component area information before the change.<br/>Parameter 2: Component area information after the change. |

### func onBlur(() -> Unit)

```cangjie
public func onBlur(event: () -> Unit): This
```

**Function:** Triggered when the current component loses focus.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| event | ()->Unit | Yes | - | Callback function triggered when the component loses focus. |

### func onDisAppear(() -> Unit)

```cangjie
public func onDisAppear(event: () -> Unit): This
```

**Function:** Triggered when the component disappears.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| event | ()->Unit | Yes | - | Callback function triggered when the component disappears. |

### func onFocus(() -> Unit)

```cangjie
public func onFocus(event: () -> Unit): This
```

**Function:** Triggered when the component gains focus.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| event | ()->Unit | Yes | - | Callback function triggered when the component gains focus. |

### func onVisibleAreaChange(Array\<Float64>, (Bool,Float64) -> Unit)

```cangjie
public func onVisibleAreaChange(raitos: Array<Float64>, event: (Bool, Float64) -> Unit): This
```

**Function:** Triggered when the component's visible area changes.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| raitos | Array\<Float64> | Yes | - | Array of visible area ratios. |
| event | (Bool,Float64)->Unit | Yes | - | Callback function triggered when the visible area changes. |

## class LocalStorageInterOp

```cangjie
class LocalStorageInterOp {}
```

**Function:** Class used internally by LocalStorage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### static func getOrCreate()

```cangjie
public static func getOrCreate(): LocalStorageInterOp
```

**Function:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Return Value:**

| Type | Description |
|:----|:----|
| [LocalStorageInterOp](#class-localstorageinterop) | The obtained or created LocalStorageInterOp object. |

### func property\<T>(String) where T \<: JSInteropType \<T>

```cangjie
public func property<T>(propName: String): ObservedProperty<T> where T <: JSInteropType<T>
```

**Function:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| propName | String | Yes | - | Framework name. |

**Return Value:**

| Type | Description |
|:----|:----|
| ObservedProperty\<T> | Property name in LocalStorageInterOp. |### func aboutToBeDeleted()

```cangjie

public func aboutToBeDeleted(): Bool
```

**Function:** Cancels the one-way/two-way synchronization relationship between the ObservedProperty instance and AppStorage/LocalStorage, and invalidates the ObservedProperty instance. After calling the aboutToBeDeleted method, the set or get methods of the ObservedProperty instance can no longer be used.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Return Value:**

|Type|Description|
|:----|:----|
|Bool|-|

### func clear()

```cangjie

public func clear(): Bool
```

**Function:** Deletes all properties in [LocalStorageInterOp](#class-localstorageinterop).

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Return Value:**

|Type|Description|
|:----|:----|
|Bool|Returns true if the properties in LocalStorageInterOp no longer have subscribers and are successfully deleted. Otherwise, returns false.|

### func delete(String)

```cangjie

public func delete(propName: String): Bool
```

**Function:** Deletes the property corresponding to propName in [LocalStorageInterOp](#class-localstorageinterop).

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Parameters:**

|Parameter|Type|Required|Default|Description|
|:---|:---|:---|:---|:---|
|propName|String|Yes|-|The property name in LocalStorageInterOp.|

**Return Value:**

|Type|Description|
|:----|:----|
|Bool|Returns true if the corresponding property exists in [LocalStorageInterOp](#class-localstorageinterop) and no longer has subscribers. Returns false if the property does not exist or still has subscribers.|

### func get\<T>(String) where T \<: JSInteropType \<T>

```cangjie

public func get<T>(propName: String): T where T <: JSInteropType<T>
```

**Function:** Retrieves the property value corresponding to propName in [LocalStorageInterOp](#class-localstorageinterop).

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Parameters:**

|Parameter|Type|Required|Default|Description|
|:---|:---|:---|:---|:---|
|propName|String|Yes|-|The property name in [LocalStorageInterOp](#class-localstorageinterop).|

**Return Value:**

|Type|Description|
|:----|:----|
|T|The current component instance.|

### func has(String)

```cangjie

public func has(propName: String): Bool
```

**Function:** Determines whether the property corresponding to propName exists in [LocalStorageInterOp](#class-localstorageinterop).

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Parameters:**

|Parameter|Type|Required|Default|Description|
|:---|:---|:---|:---|:---|
|propName|String|Yes|-|The property name in [LocalStorageInterOp](#class-localstorageinterop).|

**Return Value:**

|Type|Description|
|:----|:----|
|Bool|Returns true if the property corresponding to propName exists in [LocalStorageInterOp](#class-localstorageinterop). Otherwise, returns false.|

### func hasChanged(JSContext, JSCallInfo)

```cangjie

public func hasChanged(context: JSContext, callInfo: JSCallInfo): JSValue
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Parameters:**

|Parameter|Type|Required|Default|Description|
|:---|:---|:---|:---|:---|
|context|JSContext|Yes|-|The interoperability context.|
|callInfo|JSCallInfo|Yes|-|Relevant information about the ArkTS function call.|

**Return Value:**

|Type|Description|
|:----|:----|
|JSValue|-|

### func keys()

```cangjie

public func keys()
```

**Function:** Returns all property names in LocalStorageInterOp.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

### func link\<T>(String) where T \<: JSInteropType \<T>

```cangjie

public func link<T>(propName: String): ObservedProperty<T> where T <: JSInteropType<T>
```

**Function:** Establishes a two-way data binding with the corresponding propName in [LocalStorageInterOp](#class-localstorageinterop).

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Parameters:**

|Parameter|Type|Required|Default|Description|
|:---|:---|:---|:---|:---|
|propName|String|Yes|-|The property name in LocalStorageInterOp.|

**Return Value:**

|Type|Description|
|:----|:----|
|ObservedProperty\<T>|The two-way bound data.|

### func set\<T>(String, T) where T \<: JSInteropType \<T>

```cangjie

public func set<T>(propName: String, value: T): Bool where T <: JSInteropType<T>
```

**Function:** Sets the value of the property corresponding to propName in [LocalStorageInterOp](#class-localstorageinterop).

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Parameters:**

|Parameter|Type|Required|Default|Description|
|:---|:---|:---|:---|:---|
|propName|String|Yes|-|The property name in [LocalStorageInterOp](#class-localstorageinterop).|
|value|T|Yes|-|The property value.|

**Return Value:**

|Type|Description|
|:----|:----|
|Bool|Returns false if the property corresponding to propName does not exist in [LocalStorageInterOp](#class-localstorageinterop) or the setting fails. Returns true if the setting is successful.|

### func setAndLink\<T>(String, T) where T \<: JSInteropType \<T>

```cangjie

public func setAndLink<T>(propName: String, value: T): ObservedProperty<T> where T <: JSInteropType<T>
```

**Function:** Establishes a two-way data binding with the corresponding propName in [LocalStorageInterOp](#class-localstorageinterop).

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Parameters:**

|Parameter|Type|Required|Default|Description|
|:---|:---|:---|:---|:---|
|propName|String|Yes|-|The property name in AppStorage.|
|value|T|Yes|-|If propName does not exist in [LocalStorageInterOp](#class-localstorageinterop), defaultValue is used to initialize the corresponding propName in [LocalStorageInterOp](#class-localstorageinterop).|

**Return Value:**

|Type|Description|
|:----|:----|
|ObservedProperty\<T>|The two-way bound data for the property corresponding to propName.|

### func setAndProp\<T>(String, T) where T \<: JSInteropType \<T>

```cangjie

public func setAndProp<T>(propName: String, value: T): ObservedProperty<T> where T <: JSInteropType<T>
```

**Function:** Establishes a one-way property binding with the corresponding propName in [LocalStorageInterOp](#class-localstorageinterop).

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Parameters:**

|Parameter|Type|Required|Default|Description|
|:---|:---|:---|:---|:---|
|propName|String|Yes|-|The property name in [LocalStorageInterOp](#class-localstorageinterop).|
|value|T|Yes|-|If propName does not exist in [LocalStorageInterOp](#class-localstorageinterop), defaultValue is used to initialize the corresponding propName in [LocalStorageInterOp](#class-localstorageinterop).|

**Return Value:**

|Type|Description|
|:----|:----|
|ObservedProperty\<T>|The one-way bound data.|

### func setOrCreate\<T>(String, T) where T \<: JSInteropType \<T>

```cangjie

public func setOrCreate<T>(propName: String, value: T): Bool where T <: JSInteropType<T>
```

**Function:** Sets the value of the property corresponding to propName to newValue.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Parameters:**

|Parameter|Type|Required|Default|Description|
|:---|:---|:---|:---|:---|
|propName|String|Yes|-|The property name in [LocalStorageInterOp](#class-localstorageinterop).|
|value|T|Yes|-|The property value.|

**Return Value:**

|Type|Description|
|:----|:----|
|Bool|The result of setting the property value.|

### func size()

```cangjie

public func size(): Int64
```

**Function:** Returns the number of properties in [LocalStorageInterOp](#class-localstorageinterop).

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Return Value:**

|Type|Description|
|:----|:----|
|Int64|The number of properties in [LocalStorageInterOp](#class-localstorageinterop).|

## class Observable

```cangjie
public open class Observable {}
```

**Function:** The base class used for framework state management.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

### func isSubscribed(Observer)

```cangjie

public func isSubscribed(observer: Observer): Bool
```

**Function:** Determines whether an observer is subscribed. Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Parameters:**

|Parameter|Type|Required|Default|Description|
|:---|:---|:---|:---|:---|
|observer|[Observer](#interface-observer)|Yes|-|The observer.|

**Return Value:**

|Type|Description|
|:----|:----|
|Bool|The subscription result.|

### func numberOfSubscribers()

```cangjie

public func numberOfSubscribers(): Int64
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Return Value:**

|Type|Description|
|:----|:----|
|Int64|The number of observers.|

### func subscribe(Observer)

```cangjie

public func subscribe(observer: Observer): Unit
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Parameters:**

|Parameter|Type|Required|Default|Description|
|:---|:---|:---|:---|:---|
|observer|[Observer](#interface-observer)|Yes|-|The observer.|

### func unsubscribe(Observer)

```cangjie

public func unsubscribe(observer: Observer): Unit
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21

**Parameters:**

|Parameter|Type|Required|Default|Description|
|:---|:---|:---|:---|:---|
|observer|[Observer](#interface-observer)|Yes|-|The observer.|

### func unsubscribeAll()

```cangjie

public func unsubscribeAll(): Unit
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Initial Version:** 21## class ObservedComplexAbstract

```cangjie
public abstract class ObservedComplexAbstract <: Observable {}
```

**Description:** Base class used for framework state management.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Inherits from:**

- [Observable](#class-observable)

### func addPropsInfo(String)

```cangjie

public func addPropsInfo(info: String): Unit
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Name | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| info | String | Yes | - | Property information. |

### func getInfo()

```cangjie

public func getInfo(): String
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Return value:**

| Type | Description |
|:----|:----|
| String | Information value. |

### func getPropsInfo()

```cangjie

public func getPropsInfo(): ArrayList<String>
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Return value:**

| Type | Description |
|:----|:----|
| ArrayList\<String> | Array of property information. |

### func inheritObservers(ArrayList\<Observer>)

```cangjie

public func inheritObservers(newObservers: ArrayList<Observer>)
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Name | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| newObservers | ArrayList\<[Observer](#interface-observer)> | Yes | - | List of observers. |

### func notifyChanges()

```cangjie

public func notifyChanges()
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### func set(ObservedComplexAbstract)

```cangjie

public func set(v: ObservedComplexAbstract): Unit
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Name | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| v | [ObservedComplexAbstract](#class-observedcomplexabstract) | Yes | - | - |

### func setDependentElementIds(ArrayList\<Int64>)

```cangjie

public func setDependentElementIds(dependentElementIds: ArrayList<Int64>)
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Name | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| dependentElementIds | ArrayList\<Int64> | Yes | - | - |

### func setInfo(String)

```cangjie

public func setInfo(info: String)
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Name | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| info | String | Yes | - | - |

### func subscribeInner(Observer)

```cangjie

public func subscribeInner(observer: Observer): Unit
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Name | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| observer | [Observer](#interface-observer) | Yes | - | Observer. |

### func unsubscribeInner(Observer)

```cangjie

public func unsubscribeInner(observer: Observer): Unit
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Name | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| observer | [Observer](#interface-observer) | Yes | - | Observer. |

## class ObservedObject

```cangjie
public abstract class ObservedObject <: ObservedComplexAbstract {}
```

**Description:** Base class used for framework state management.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Inherits from:**

- [ObservedComplexAbstract](#class-observedcomplexabstract)

### func addPublishVar(ObservedPropertyAbstract)

```cangjie

public func addPublishVar(publishVar: ObservedPropertyAbstract)
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Name | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| publishVar | [ObservedPropertyAbstract](#class-observedpropertyabstract) | Yes | - | - |

### func getPublishVar()

```cangjie

public func getPublishVar(): ArrayList<ObservedPropertyAbstract>
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Return value:**

| Type | Description |
|:----|:----|
| ArrayList\<[ObservedPropertyAbstract](#class-observedpropertyabstract)> | - |

### func subscribeInner(Observer)

```cangjie

public func subscribeInner(observer: Observer): Unit
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Name | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| observer | [Observer](#interface-observer) | Yes | - | Observer. |

### func unsubscribeInner(Observer)

```cangjie

public func unsubscribeInner(observer: Observer): Unit
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Name | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| observer | [Observer](#interface-observer) | Yes | - | Observer. |

## class ObservedPropertyAbstract

```cangjie
public abstract class ObservedPropertyAbstract <: Observable {

    public init(info: String)
}
```

**Description:** Base class used for framework state management.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Inherits from:**

- [Observable](#class-observable)

### init(String)

```cangjie

public init(info: String)
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Name | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| info | String | Yes | - | - |

### func getInfo()

```cangjie

public func getInfo(): String
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Return value:**

| Type | Description |
|:----|:----|
| String | - |

### func notifyChanges()

```cangjie

public func notifyChanges()
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### func purgeDependencyOnElmtId(Int64)

```cangjie

public func purgeDependencyOnElmtId(rmElmtId: Int64): Unit
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Name | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| rmElmtId | Int64 | Yes | - | - |

### func subscribeEx(Observer)

```cangjie

public func subscribeEx(observer: Observer): Unit
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Name | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| observer | [Observer](#interface-observer) | Yes | - | Observer. |

### func unsubscribeEx(Observer)

```cangjie

public func unsubscribeEx(observer: Observer): Unit
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Name | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| observer | [Observer](#interface-observer) | Yes | - | Observer. |## class SubscriberManager

```cangjie
public class SubscriberManager {}
```

**Description:** Base class used for framework state management.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### static func getInstance()

```cangjie
public static func getInstance(): SubscriberManager
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Return Value:**

| Type | Description |
|:----|:----|
|[SubscriberManager](#class-subscribermanager)|Subscriber manager.|

### func add(Observer)

```cangjie
public func add(value: Observer): Bool
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
|value|[Observer](#interface-observer)|Yes|-|Observer.|

**Return Value:**

| Type | Description |
|:----|:----|
|Bool|-|

### func delete(Observer)

```cangjie
public func delete(value: Observer): Unit
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
|value|[Observer](#interface-observer)|Yes|-|Observer.|

### func dumpSubscriberInfo()

```cangjie
public func dumpSubscriberInfo(): Unit
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### func get(Int64)

```cangjie
public func get(id: Int64): Option<Observer>
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
|id|Int64|Yes|-|Observer ID.|

**Return Value:**

| Type | Description |
|:----|:----|
|Option\<[Observer](#interface-observer)>|Observer.|

### func has(Int64)

```cangjie
public func has(id: Int64): Bool
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
|id|Int64|Yes|-|Observer ID.|

**Return Value:**

| Type | Description |
|:----|:----|
|Bool|Determination result.|

### func makeId()

```cangjie
public func makeId(): Int64
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Return Value:**

| Type | Description |
|:----|:----|
|Int64|ID.|

### func sizeOfManager()

```cangjie
public func sizeOfManager(): Int64
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Return Value:**

| Type | Description |
|:----|:----|
|Int64|Manager size.|

## class LegalCallCheck

```cangjie
public class LegalCallCheck {}
```

**Description:** Checks whether component generation is legal. For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### static func check(ViewBuilder)

```cangjie
public static func check(_: ViewBuilder)
```

**Description:** For UI framework usage.

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
|_|ViewBuilder|Yes|-|For UI framework usage.|

### static func check(CustomView)

```cangjie
public static func check(_: CustomView)
```

**Description:** For UI framework usage.

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
|_|CustomView|Yes|-|For UI framework usage.|

## class View

```cangjie
public open class View <: ViewBase {}
```

**Description:** Base class for UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parent Class:**

- [ViewBase](#class-viewbase)

### static func create(View)

```cangjie
public static func create(view: View): Unit
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
|view|[View](#class-view)|Yes|-|-|

### static func create(Int64)

```cangjie
public static func create(remoteId: Int64): View
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
|remoteId|Int64|Yes|-|-|

**Return Value:**

| Type | Description |
|:----|:----|
|[View](#class-view)|-|

### static func createRecycle(View, Bool, String, () -> Unit)

```cangjie
public static func createRecycle(componentCall: View, isRecycling: Bool, reuseId: String, callback: () -> Unit)
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
|componentCall|[View](#class-view)|Yes|-|-|
|isRecycling|Bool|Yes|-|-|
|reuseId|String|Yes|-|-|
|callback|()->Unit|Yes|-|-|

### func deletedElmtIdsHaveBeenPurged(ArrayList\<Int64>)

```cangjie
public func deletedElmtIdsHaveBeenPurged(elmtIds: ArrayList<Int64>): Unit
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
|elmtIds|ArrayList\<Int64>|Yes|-|-|

### func destroy()

```cangjie
public func destroy(): Unit
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### func finishUpdateFunc(Int64)

```cangjie
public func finishUpdateFunc(elmtId: Int64): Unit
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
|elmtId|Int64|Yes|-|-|

### func getDeletedElemtIds()

```cangjie
public func getDeletedElemtIds(): ArrayList<Int64>
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Return Value:**

| Type | Description |
|:----|:----|
|ArrayList\<Int64>|-|

### func isFirstRender()

```cangjie
public func isFirstRender(): Bool
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Return Value:**

| Type | Description |
|:----|:----|
|Bool|-|

### func isStatic()

```cangjie
public func isStatic(): Bool
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Return Value:**

| Type | Description |
|:----|:----|
|Bool|-|

### func markNeedUpdate()

```cangjie
public func markNeedUpdate(): Unit
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### func markStatic()

```cangjie
public func markStatic(): Unit
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### func needsUpdate()

```cangjie
public func needsUpdate(): Bool
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Return Value:**

| Type | Description |
|:----|:----|
|Bool|-|

### func resetRecycleCustomNode()

```cangjie
public func resetRecycleCustomNode()
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### func restoreInstanceId()

```cangjie
public func restoreInstanceId(): Unit
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### func syncInstanceId()

```cangjie
public func syncInstanceId(): Unit
```

**Description:** For UI framework usage.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21## class ViewBase

```cangjie
public open class ViewBase <: InteractableView & UINodeBase {}
```

**Function:** Base class for components. For more methods, refer to the Cangjie component's general properties, gesture handling, and animation-related chapters.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parent Types:**

- [InteractableView](#class-interactableview)
- UINodeBase

### func initial()

```cangjie
public open func initial(): Unit
```

**Function:** Initializes the component.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### func update()

```cangjie
public open func update(): Unit
```

**Function:** Updates the component.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

## class ViewBuilder

```cangjie
public class ViewBuilder {
    public ViewBuilder(public let build: () -> Unit)
}
```

**Function:** Base class used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### let build

```cangjie
public let build:() -> Unit
```

**Function:** Used by the UI framework.

**Type:** ()->Unit

**Access:** Read-only

### ViewBuilder(() -> Unit)

```cangjie
public ViewBuilder(public let build: () -> Unit)
```

**Function:** Creates a ViewBuilder object.

**Parameters:**

|Parameter|Type|Required|Default|Description|
|:---|:---|:---|:---|:---|
|build|()->Unit|Yes|-|Custom component.|

## class ViewStackProcessor

```cangjie
public class ViewStackProcessor {}
```

**Function:** Base class used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### static func AllocateNewElmetIdForNextComponent()

```cangjie

public static func AllocateNewElmetIdForNextComponent(): Int64
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Return Value:**

|Type|Description|
|:----|:----|
|Int64|Component ID.|

### static func GetElmtIdToAccountFor()

```cangjie

public static func GetElmtIdToAccountFor(): Int64
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Return Value:**

|Type|Description|
|:----|:----|
|Int64|Component ID.|

### static func ImplicitPopBeforeContinue()

```cangjie

public static func ImplicitPopBeforeContinue(): Unit
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### static func StartGetAccessRecordingFor(Int64)

```cangjie

public static func StartGetAccessRecordingFor(elmtId: Int64): Unit
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

|Parameter|Type|Required|Default|Description|
|:---|:---|:---|:---|:---|
|elmtId|Int64|Yes|-|-|

### static func StopGetAccessRecording()

```cangjie

public static func StopGetAccessRecording(): Unit
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

## interface UINodeBase

```cangjie
public interface UINodeBase {
    func initial(): Unit
    func update(): Unit
}
```

**Function:** Base class for components.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### func initial()

```cangjie
func initial(): Unit
```

**Function:** Used by the UI framework.

### func update()

```cangjie
func update(): Unit
```

**Function:** Used by the UI framework.

## class RemoteView

```cangjie
public abstract class RemoteView <: FFIData {
    public init()
}
```

**Function:** Base class for components used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parent Types:**

- [FFIData](./cj-common-types.md#ffidata)

### init()

```cangjie
public init()
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### func build()

```cangjie
public func build(): Unit // abstract
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### func forceCompleteRerender(Bool)

```cangjie
public open func forceCompleteRerender(deep: Bool): Unit
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

|Parameter|Type|Required|Default|Description|
|:---|:---|:---|:---|:---|
|deep|Bool|Yes|-|Whether to perform deep re-rendering.|

### func purgeVariableDependenciesOnElmtId(Int64)

```cangjie
public open func purgeVariableDependenciesOnElmtId(_: Int64): Unit
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

|Parameter|Type|Required|Default|Description|
|:---|:---|:---|:---|:---|
|_|Int64|Yes|-|Element ID to be removed.|

### func rerender()

```cangjie
public open func rerender(): Unit
```

**Function:** Used by the UI framework.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21