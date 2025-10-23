# RichEditor

A component that supports mixed text-image layout and interactive text editing.

## Import Module

```cangjie
import kit.ArkUI.*
```

## Subcomponents

None

## Creating the Component

### init(RichEditorController)

```cangjie
public init(controller: RichEditorController)
```

**Function:** Creates a RichEditor component.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| controller | [RichEditorController](#class-richeditorcontroller) | Yes | - | Rich text controller. |

## Common Attributes/Events

Common Attributes: All supported.

> **Note:**
>
> - The `align` attribute only supports top, middle, and bottom alignment.
> - The `borderImage` attribute is not supported.

Common Events: All supported.

## Component Attributes

### func aboutToDelete(Callback\<RichEditorDeleteValue,Bool>)

```cangjie
public func aboutToDelete(callback: Callback<RichEditorDeleteValue, Bool>): This
```

**Function:** Triggers an event before the input method deletes content.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| callback | [Callback](../BasicServicesKit/cj-apis-base.md#type-Callback)\<[RichEditorDeleteValue](#class-richeditordeletevalue),Bool> | Yes | - | Callback function triggered before the input method deletes content.<br>[RichEditorDeleteValue](#class-richeditordeletevalue): Text span information where the content to be deleted resides.<br>true: The component performs the delete operation.<br>false: The component does not perform the delete operation. |

### func aboutToImeInput(Callback\<RichEditorInsertValue,Bool>)

```cangjie
public func aboutToImeInput(callback: Callback<RichEditorInsertValue, Bool>): This
```

**Function:** Triggers an event before the input method inputs content.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| callback | [Callback](../BasicServicesKit/cj-apis-base.md#type-Callback)\<[RichEditorInsertValue](#class-richeditorinsertvalue),Bool> | Yes | - | Callback function triggered before the input method inputs content.<br>[RichEditorInsertValue](#class-richeditorinsertvalue): Information about the content to be input by the input method.<br>true: The component performs the add content operation.<br>false: The component does not perform the add content operation. |

### func bindSelectionMenu(RichEditorSpanType, CustomBuilder, ResponseType, SelectionMenuOptions)

```cangjie
public func bindSelectionMenu(
    spantype!: RichEditorSpanType = RichEditorSpanType.Text,
    content!: CustomBuilder,
    responseType!: ResponseType = ResponseType.LongPress,
    options!: SelectionMenuOptions
): This
```

**Function:** Sets a custom selection menu.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| spantype | [RichEditorSpanType](#enum-richeditorspantype) | No | RichEditorSpanType.Text | **Named parameter.** Specifies the type of the selection menu. |
| content | [CustomBuilder](./cj-common-types.md#type-custombuilder) | Yes | - | **Named parameter.** Specifies the content of the selection menu. Use with [@Builder](../../../application-dev/source_en/arkui-cj/paradigm/cj-macro-builder.md) and the bind method. |
| responseType | [ResponseType](./cj-common-types.md#enum-responsetype) | No | ResponseType.LongPress | **Named parameter.** Specifies the response type of the selection menu. |
| options | [SelectionMenuOptions](#class-selectionmenuoptions) | Yes | - | **Named parameter.** Specifies the options of the selection menu. |

### func copyOptions(CopyOptions)

```cangjie
public func copyOptions(value: CopyOptions): This
```

**Function:** Sets the capability to support copy and paste for text content.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| value | [CopyOptions](./cj-common-types.md#enum-copyoptions) | Yes | - | Copy and paste capability.<br>Initial value: CopyOptions.LocalDevice. |

### func customKeyboard(CustomBuilder)

```cangjie
public func customKeyboard(value!: CustomBuilder): This
```

**Function:** Defines a custom keyboard.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| value | [CustomBuilder](./cj-common-types.md#type-custombuilder) | Yes | - | **Named parameter.** Custom keyboard for the rich text editor. Use with [@Builder](../../../application-dev/source_en/arkui-cj/paradigm/cj-macro-builder.md) and the bind method. |

## Component Events

### func onDeleteComplete(VoidCallback)

```cangjie
public func onDeleteComplete(callback: VoidCallback): This
```

**Function:** Triggers an event after the input method completes deletion.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| callback | [VoidCallback](../BasicServicesKit/cj-apis-base.md#type-VoidCallback) | Yes | - | Callback function triggered when the input method completes deletion. |

### func onDidChange(OnDidChangeCallback)

```cangjie
public func onDidChange(callback: OnDidChangeCallback): This
```

**Function:** Triggers an event after the component performs add or delete operations. The event is not triggered if no actual text addition or deletion occurs.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| callback | [OnDidChangeCallback](#type-ondidchangecallback) | Yes | - | Callback function triggered after the component performs add or delete operations. The callback is not triggered if no actual text addition or deletion occurs. Parameter: Content range before and after the change. |

### func onImeInputComplete(Callback\<RichEditorTextSpanResult,Unit>)

```cangjie
public func onImeInputComplete(callback: Callback<RichEditorTextSpanResult, Unit>): RichEditor
```

**Function:** Triggers an event after the input method completes input.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| callback | [Callback](../BasicServicesKit/cj-apis-base.md#type-Callback)\<[RichEditorTextSpanResult](#class-richeditortextspanresult),Unit> | Yes | - | Callback function triggered after the input method completes input.<br>RichEditorTextSpanResult: Text span information after the input method completes input. |

**Return Value:**

| Type | Description |
|:----|:----|
| [RichEditor](#richeditor) | RichEditor instance. |

### func onPaste(PasteEventCallback)

```cangjie
public func onPaste(callback: PasteEventCallback): This
```

**Function:** Triggers an event before completing paste.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| callback | PasteEventCallback | Yes | - | Callback function triggered before completing paste.<br>PasteEvent: Defines the user paste event. |

### func onReady(VoidCallback)

```cangjie
public func onReady(callback: VoidCallback): This
```

**Function:** Triggers an event after the rich text component is initialized.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| callback | [VoidCallback](../BasicServicesKit/cj-apis-base.md#type-VoidCallback) | Yes | - | Callback function triggered after the rich text component is initialized. |

### func onSelect(Callback\<RichEditorSelection,Unit>)

```cangjie
public func onSelect(callback: Callback<RichEditorSelection, Unit>): This
```

**Function:** Triggers an event when content is selected by double-clicking the left mouse button; the event is triggered again after releasing the left mouse button. Triggers an event when content is selected by long-pressing with a finger; the event is triggered again after releasing the finger.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| callback | [Callback](../BasicServicesKit/cj-apis-base.md#type-callback)\<[RichEditorSelection](#class-richeditorselection),Unit> | Yes | - | Callback function triggered when the left mouse button is pressed for selection and released.<br>Triggered when selection is made with a finger and released.<br>RichEditorSelection: Information about all selected spans. |

## Basic Type Definitions

### class DecorationStyleResult

```cangjie
public class DecorationStyleResult {
    public var decorationType: TextDecorationType
    public var color: ResourceColor

    public init(
        decorationType: TextDecorationType,
        color: ResourceColor
    )
}
```

**Function:** Text decoration line style information returned by the backend.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var color

```cangjie
public var color: ResourceColor
```

**Function:** Decoration line color.

**Type:** [ResourceColor](../BasicServicesKit/cj-apis-base.md#interface-resourcecolor)

**Read/Write:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var decorationType

```cangjie
public var decorationType: TextDecorationType
```

**Function:** Decoration line type.

**Type:** [TextDecorationType](./cj-common-types.md#enum-textdecorationtype)

**Read/Write:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### init(TextDecorationType, ResourceColor)

```cangjie
public init(
    decorationType: TextDecorationType,
    color: ResourceColor
)
```

**Function:** Creates a text decoration line style object.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| decorationType | [TextDecorationType](./cj-common-types.md#enum-textdecorationtype) | Yes | - | Decoration line type. |
| color | [ResourceColor](../BasicServicesKit/cj-apis-base.md#interface-resourcecolor) | Yes | - | Sets the entity color after text recognition succeeds.<br>Default: '#ff0a59f7'<br>Meta Service API: Supported in meta services from API version 12. |

### class PasteEvent

```cangjie
public class PasteEvent {}
```

**Function:** Defines the user paste event.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### func preventDefault()

```cangjie
public func preventDefault(): Unit
```

**Function:** Prevents the system default paste event.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### class RichEditorDeleteValue

```cangjie
public class RichEditorDeleteValue {
    public var offset: Int32
    public var direction: RichEditorDeleteDirection
    public var length: Int32
    public var richEditorDeleteSpans: ArrayList<RichEditorSpanResult>

    public init(
        offset: Int32,
        direction: RichEditorDeleteDirection,
        length: Int32,
        richEditorDeleteSpans: ArrayList<RichEditorSpanResult>
    )
}
```

**Function:** Information about the delete operation and the content to be deleted.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var direction

```cangjie
public var direction: RichEditorDeleteDirection
```

**Function:** Indicates the direction of the delete operation.

**Type:** [RichEditorDeleteDirection](#enum-richeditordeletedirection)

**Read/Write:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var length

```cangjie
public var length: Int32
```

**Function:** Indicates the length of the content to be deleted.

**Type:** Int32

**Read/Write:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var offset

```cangjie
public var offset: Int32
```

**Function:** Indicates the offset position of the content to be deleted.

**Type:** Int32

**Read/Write:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var richEditorDeleteSpans

```cangjie
public var richEditorDeleteSpans: ArrayList<RichEditorSpanResult>
```

**Function:** Indicates the specific information of the text or image spans to be deleted.

**Type:** ArrayList\<RichEditorSpanResult>

**Read/Write:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### init(Int32, RichEditorDeleteDirection, Int32, ArrayList\<RichEditorSpanResult>)

```cangjie
public init(
    offset: Int32,
    direction: RichEditorDeleteDirection,
    length: Int32,
    richEditorDeleteSpans: ArrayList<RichEditorSpanResult>
)
```

**Function:** Creates an object of type RichEditorDeleteValue.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter | Type | Required | Default | Description |
|:---|:---|:---|:---|:---|
| offset | Int32 | Yes | - | Offset position of the content to be deleted. |
| direction | [RichEditorDeleteDirection](#enum-richeditordeletedirection) | Yes | - | Direction of the delete operation. |
| length | Int32 | Yes | - | Length of the content to be deleted. |
| richEditorDeleteSpans | ArrayList\<RichEditorSpanResult> | Yes | - | Specific information of the text or image spans to be deleted. |### class RichEditorImageSpanResult

```cangjie
public class RichEditorImageSpanResult <: RichEditorSpanResult {
    public var spanPosition: RichEditorSpanPosition = RichEditorSpanPosition(0,(0, 0))
    public var valuePixelMap: Option<PixelMap>= None
    public var valueResourceStr: String = ""
    public var imageStyle: RichEditorImageSpanStyleResult = RichEditorImageSpanStyleResult()
    public var offsetInSpan:(Int32, Int32) =(0, 0)

    public init(
        spanPosition: RichEditorSpanPosition,
        valuePixelMap: Option<PixelMap>,
        valueResourceStr: String,
        imageStyle: RichEditorImageSpanStyleResult,
        offsetInSpan: (Int32, Int32)
    )
}
```

**Function:** Represents the type of image information returned by the backend.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parent Type:**

- RichEditorSpanResult

#### var imageStyle

```cangjie
public var imageStyle: RichEditorImageSpanStyleResult = RichEditorImageSpanStyleResult()
```

**Function:** Represents the image style.

**Type:** [RichEditorImageSpanStyleResult](#class-richeditorimagespanstyleresult)

**Read/Write Permission:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var offsetInSpan

```cangjie
public var offsetInSpan:(Int32, Int32) =(0, 0)
```

**Function:** Represents the start and end positions of the image within the Span.

**Type:** (Int32,Int32)

**Read/Write Permission:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var spanPosition

```cangjie
public var spanPosition: RichEditorSpanPosition = RichEditorSpanPosition(0,(0, 0))
```

**Function:** Represents the Span position.

**Type:** [RichEditorSpanPosition](#class-richeditorspanposition)

**Read/Write Permission:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var valuePixelMap

```cangjie
public var valuePixelMap: Option<PixelMap>= None
```

**Function:** Represents the image content.

**Type:** Option\<[PixelMap](../ImageKit/cj-apis-image.md#class-pixelmap)>

**Read/Write Permission:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var valueResourceStr

```cangjie
public var valueResourceStr: String = ""
```

**Function:** Represents the image resource ID.

**Type:** String

**Read/Write Permission:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### init(RichEditorSpanPosition, Option\<PixelMap>, String, RichEditorImageSpanStyleResult, (Int32,Int32))

```cangjie

public init(
    spanPosition: RichEditorSpanPosition,
    valuePixelMap: Option<PixelMap>,
    valueResourceStr: String,
    imageStyle: RichEditorImageSpanStyleResult,
    offsetInSpan: (Int32, Int32)
)
```

**Function:** Creates an object of type RichEditorImageSpanResult.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| spanPosition | [RichEditorSpanPosition](#class-richeditorspanposition) | Yes | - | Span position. |
| valuePixelMap | Option\<[PixelMap](../ImageKit/cj-apis-image.md#class-pixelmap)> | Yes | - | Image content. |
| valueResourceStr | String | Yes | - | Image resource ID. |
| imageStyle | [RichEditorImageSpanStyleResult](#class-richeditorimagespanstyleresult) | Yes | - | Image style. |
| offsetInSpan | (Int32,Int32) | Yes | - | Start and end positions of the image within the Span. |

### class RichEditorImageSpanStyleResult

```cangjie
public class RichEditorImageSpanStyleResult {
    public var size:(Float64, Float64) =(0.0, 0.0)
    public var verticalAlign: ImageSpanAlignment = ImageSpanAlignment.Center
    public var objectFit: ImageFit = ImageFit.Auto
    public var layoutStyle: RichEditorLayoutStyle = RichEditorLayoutStyle()
}
```

**Function:** Image style information returned by the backend.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var layoutStyle

```cangjie
public var layoutStyle: RichEditorLayoutStyle = RichEditorLayoutStyle()
```

**Function:** Represents the image layout style.

**Type:** [RichEditorLayoutStyle](#class-richeditorlayoutstyle)

**Read/Write Permission:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var objectFit

```cangjie
public var objectFit: ImageFit = ImageFit.Auto
```

**Function:** Represents the image scaling type.

**Type:** [ImageFit](./cj-common-types.md#enum-imagefit)

**Read/Write Permission:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var size

```cangjie
public var size:(Float64, Float64) =(0.0, 0.0)
```

**Function:** Represents the width and height of the image.

**Type:** (Float64,Float64)

**Read/Write Permission:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var verticalAlign

```cangjie
public var verticalAlign: ImageSpanAlignment = ImageSpanAlignment.Center
```

**Function:** Represents the vertical alignment of the image.

**Type:** [ImageSpanAlignment](cj-common-types.md#enum-imagespanalignment)

**Read/Write Permission:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### class RichEditorInsertValue

```cangjie
public class RichEditorInsertValue {
    public var insertOffset: Int32
    public var insertValue: String

    public init(
        insertOffset: Int32,
        insertValue: String
    )
}
```

**Function:** Text insertion information.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var insertOffset

```cangjie
public var insertOffset: Int32
```

**Function:** Represents the offset position of the inserted text.

**Type:** Int32

**Read/Write Permission:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var insertValue

```cangjie
public var insertValue: String
```

**Function:** Represents the content of the inserted text.

**Type:** String

**Read/Write Permission:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### init(Int32, String)

```cangjie

public init(
    insertOffset: Int32,
    insertValue: String
)
```

**Function:** Creates an object of type RichEditorInsertValue.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| insertOffset | Int32 | Yes | - | Offset position of the inserted text. |
| insertValue | String | Yes | - | Content of the inserted text. |

### interface RichEditorSpanResult

```cangjie
public interface RichEditorSpanResult {}
```

**Function:** Supports mixed text and image layout and interactive text editing component results.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

### class RichEditorSelection

```cangjie
public class RichEditorSelection {
    public var selection:(Int32, Int32)
    public var spans: ArrayList<RichEditorSpanResult>

    public init(selection: (Int32, Int32), spans: ArrayList<RichEditorSpanResult>)
}
```

**Function:** Selected content information.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var selection

```cangjie
public var selection:(Int32, Int32)
```

**Function:** Represents the selection range.

**Type:** (Int32,Int32)

**Read/Write Permission:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var spans

```cangjie
public var spans: ArrayList<RichEditorSpanResult>
```

**Function:** Represents Span information.

**Type:** ArrayList\<RichEditorSpanResult>

**Read/Write Permission:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### init((Int32,Int32), ArrayList\<RichEditorSpanResult>)

```cangjie

public init(selection: (Int32, Int32), spans: ArrayList<RichEditorSpanResult>)
```

**Function:** Creates an object of type RichEditorSelection.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| selection | (Int32,Int32) | Yes | - | Selection range. |
| spans | ArrayList\<RichEditorSpanResult> | Yes | - | Span information. |

### class RichEditorSpanPosition

```cangjie
public class RichEditorSpanPosition {
    public var spanIndex: Int32
    public var spanRange:(Int32, Int32)

    public init(
        spanIndex: Int32,
        spanRange: (Int32, Int32)
    )
}
```

**Function:** Span position information.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var spanIndex

```cangjie
public var spanIndex: Int32
```

**Function:** Represents the Span index value.

**Type:** Int32

**Read/Write Permission:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var spanRange

```cangjie
public var spanRange:(Int32, Int32)
```

**Function:** Represents the start and end positions of the Span content within the RichEditor.

**Type:** (Int32,Int32)

**Read/Write Permission:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### init(Int32, (Int32,Int32))

```cangjie

public init(
    spanIndex: Int32,
    spanRange: (Int32, Int32)
)
```

**Function:** Creates an object of type RichEditorSpanPosition.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| spanIndex | Int32 | Yes | - | Span index value. |
| spanRange | (Int32,Int32) | Yes | - | Start and end positions of the Span content within the RichEditor. |### class RichEditorTextSpanResult

```cangjie
public class RichEditorTextSpanResult <: RichEditorSpanResult {
    public var spanPosition: RichEditorSpanPosition
    public var value: String
    public var textStyle: RichEditorTextStyleResult
    public var offsetInSpan:(Int32, Int32)

    public init(
        spanPosition: RichEditorSpanPosition,
        value: String,
        textStyle: RichEditorTextStyleResult,
        offsetInSpan: (Int32, Int32)
    )
}
```

**Description:** The text style information type returned by the backend.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parent Type:**

- RichEditorSpanResult

#### var offsetInSpan

```cangjie
public var offsetInSpan:(Int32, Int32)
```

**Description:** Represents the start and end positions of valid content within the text span.

**Type:** (Int32,Int32)

**Access:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var spanPosition

```cangjie
public var spanPosition: RichEditorSpanPosition
```

**Description:** Represents the span position.

**Type:** [RichEditorSpanPosition](#class-richeditorspanposition)

**Access:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var textStyle

```cangjie
public var textStyle: RichEditorTextStyleResult
```

**Description:** Represents the text span style information.

**Type:** [RichEditorTextStyleResult](#class-richeditortextstyleresult)

**Access:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var value

```cangjie
public var value: String
```

**Description:** Represents the text span content.

**Type:** String

**Access:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### init(RichEditorSpanPosition, String, RichEditorTextStyleResult, (Int32,Int32))

```cangjie

public init(
    spanPosition: RichEditorSpanPosition,
    value: String,
    textStyle: RichEditorTextStyleResult,
    offsetInSpan: (Int32, Int32)
)
```

**Description:** Creates a RichEditorTextSpanResult.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

|Parameter|Type|Required|Default|Description|
|:---|:---|:---|:---|:---|
|spanPosition|[RichEditorSpanPosition](#class-richeditorspanposition)|Yes|-|Span position.|
|value|String|Yes|-|Text span content.|
|textStyle|[RichEditorTextStyleResult](#class-richeditortextstyleresult)|Yes|-|Text span style information.|
|offsetInSpan|(Int32,Int32)|Yes|-|Start and end positions of valid content within the text span.|

### class RichEditorTextStyleResult

```cangjie
public class RichEditorTextStyleResult {
    public var fontColor: String
    public var fontSize: Float64
    public var fontStyle: FontStyle
    public var fontWeight: Int32
    public var fontFamily: String
    public var decoration: DecorationStyleResult

    public init(
        fontColor: String,
        fontSize: Float64,
        fontStyle: FontStyle,
        fontWeight: Int32,
        fontFamily: String,
        decoration: DecorationStyleResult
    )
}
```

**Description:** Text style information returned by the backend.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var decoration

```cangjie
public var decoration: DecorationStyleResult
```

**Description:** Represents the text decoration line style and its color.

**Type:** [DecorationStyleResult](#class-decorationstyleresult)

**Access:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var fontColor

```cangjie
public var fontColor: String
```

**Description:** Represents the text color.

**Type:** String

**Access:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var fontFamily

```cangjie
public var fontFamily: String
```

**Description:** Represents the font list.

**Type:** String

**Access:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var fontSize

```cangjie
public var fontSize: Float64
```

**Description:** Represents the font size.

**Type:** Float64

**Access:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var fontStyle

```cangjie
public var fontStyle: FontStyle
```

**Description:** Represents the font style.

**Type:** [FontStyle](./cj-common-types.md#enum-fontstyle)

**Access:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var fontWeight

```cangjie
public var fontWeight: Int32
```

**Description:** Represents the font weight.

**Type:** Int32

**Access:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### init(String, Float64, FontStyle, Int32, String, DecorationStyleResult)

```cangjie

public init(
    fontColor: String,
    fontSize: Float64,
    fontStyle: FontStyle,
    fontWeight: Int32,
    fontFamily: String,
    decoration: DecorationStyleResult
)
```

**Description:** Creates a RichEditorTextStyleResult.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

|Parameter|Type|Required|Default|Description|
|:---|:---|:---|:---|:---|
|fontColor|String|Yes|-|Text color.|
|fontSize|Float64|Yes|-|Font size.|
|fontStyle|[FontStyle](./cj-common-types.md#enum-fontstyle)|Yes|-|Font style.|
|fontWeight|Int32|Yes|-|Font weight.|
|fontFamily|String|Yes|-|Font list.|
|decoration|[DecorationStyleResult](#class-decorationstyleresult)|Yes|-|Text decoration line style and its color.|

### class ShadowOptionsResult

```cangjie
public class ShadowOptionsResult {}
```

**Description:** Text shadow effect.

#### let color

```cangjie
public let color: String
```

**Description:** Represents the shadow color.

**Type:** String

**Access:** Read-only

#### let offsetX

```cangjie
public let offsetX: Float64
```

**Description:** Represents the X-axis offset of the shadow.

**Type:** Float64

**Access:** Read-only

#### let offsetY

```cangjie
public let offsetY: Float64
```

**Description:** Represents the Y-axis offset of the shadow.

**Type:** Float64

**Access:** Read-only

#### let radius

```cangjie
public let radius: Float64
```

**Description:** Represents the shadow blur radius.

**Type:** Float64

**Access:** Read-only

### class TextRange

```cangjie
public class TextRange {
    public var start: Int32
    public var end: Int32

    public init(start: Int32, end: Int32)
}
```

**Description:** Text range.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var end

```cangjie
public var end: Int32
```

**Description:** Represents the end index.

**Type:** Int32

**Access:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var start

```cangjie
public var start: Int32
```

**Description:** Represents the start index.

**Type:** Int32

**Access:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### init(Int32, Int32)

```cangjie

public init(start: Int32, end: Int32)
```

**Description:** Creates a text range object.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

|Parameter|Type|Required|Default|Description|
|:---|:---|:---|:---|:---|
|start|Int32|Yes|-|Start index.|
|end|Int32|Yes|-|End index.|

### class LeadingMarginPlaceholder

```cangjie
public class LeadingMarginPlaceholder {
    public var pixelMap: PixelMap
    public var size:(Length, Length)
    public init(pixelMap!: PixelMap, size!: (Length, Length))
}
```

**Description:** Leading margin placeholder, used to represent the distance between the left side of a text paragraph and the component edge.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var pixelMap

```cangjie
public var pixelMap: PixelMap
```

**Description:** Image content.

**Type:** [PixelMap](../ImageKit/cj-apis-image.md#class-pixelmap)

**Access:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var size

```cangjie
public var size:(Length, Length)
```

**Description:** Image size (percentage values are not supported).

**Type:** ([Length](../BasicServicesKit/cj-apis-base.md#interface-length), [Length](../BasicServicesKit/cj-apis-base.md#interface-length))

**Access:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### init(PixelMap, (Length,Length))

```cangjie
public init(pixelMap!: PixelMap, size!: (Length, Length))
```

**Description:** Creates an object of type LeadingMarginPlaceholder.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

|Parameter|Type|Required|Default|Description|
|:---|:---|:---|:---|:---|
|pixelMap|[PixelMap](../ImageKit/cj-apis-image.md#class-pixelmap)|Yes|-|Image content.|
|size|([Length](../BasicServicesKit/cj-apis-base.md#interface-length),[Length](../BasicServicesKit/cj-apis-base.md#interface-length))|Yes|-|Image size (percentage values are not supported).|### class RichEditorBaseController

```cangjie
public open class RichEditorBaseController {}
```

**Description:** Base controller class for RichEditor component.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### func getCaretOffset()

```cangjie
public func getCaretOffset(): Int64
```

**Description:** Gets the current cursor position.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Return Value:**

|Type|Description|
|:----|:----|
|Int64|Current cursor position.|

#### func setCaretOffset(Int64)

```cangjie
public func setCaretOffset(offset: Int64): Bool
```

**Description:** Sets the cursor position.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

|Parameter|Type|Mandatory|Default|Description|
|:---|:---|:---|:---|:---|
|offset|Int64|Yes|-|Cursor offset position. Fails if out of text range.|

**Return Value:**

|Type|Description|
|:----|:----|
|Bool|Whether cursor setting succeeded.|

### class RichEditorController

```cangjie
public class RichEditorController <: RichEditorBaseController {
    public init()
}
```

**Description:** Controller for RichEditor component.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parent Class:**

- [RichEditorBaseController](#class-richeditorbasecontroller)

#### init()

```cangjie
public init()
```

**Description:** Creates a RichEditorController object.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### func addImageSpan(String, RichEditorImageSpanOptions)

```cangjie
public func addImageSpan(value!: String, options!: RichEditorImageSpanOptions = RichEditorImageSpanOptions()): Int32
```

**Description:** Adds image content. If the component cursor is blinking, the cursor position will be updated to after the newly inserted image.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

|Parameter|Type|Mandatory|Default|Description|
|:---|:---|:---|:---|:---|
|value|String|Yes|-|Image content.|
|options|[RichEditorImageSpanOptions](#class-richeditorimagespanoptions)|No|RichEditorImageSpanOptions()|Image options.|

**Return Value:**

|Type|Description|
|:----|:----|
|Int32|Position of the added ImageSpan.|

#### func addImageSpan(AppResource, RichEditorImageSpanOptions)

```cangjie
public func addImageSpan(value!: AppResource, options!: RichEditorImageSpanOptions = RichEditorImageSpanOptions()): Int32
```

**Description:** Adds image content. If the component cursor is blinking, the cursor position will be updated to after the newly inserted image.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

|Parameter|Type|Mandatory|Default|Description|
|:---|:---|:---|:---|:---|
|value|[AppResource](../LocalizationKit/cj-apis-resource.md#class-appresource)|Yes|-|Image content.|
|options|[RichEditorImageSpanOptions](#class-richeditorimagespanoptions)|No|RichEditorImageSpanOptions()|Image options.|

**Return Value:**

|Type|Description|
|:----|:----|
|Int32|Position of the added ImageSpan.|

#### func addTextSpan(ResourceStr, RichEditorTextSpanOptions)

```cangjie
public func addTextSpan(value!: ResourceStr, options!: RichEditorTextSpanOptions = RichEditorTextSpanOptions()): Int32
```

**Description:** Adds text content. If the component cursor is blinking, the cursor position will be updated to after the newly inserted text.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

|Parameter|Type|Mandatory|Default|Description|
|:---|:---|:---|:---|:---|
|value|[ResourceStr](../BasicServicesKit/cj-apis-base.md#interface-resourcestr)|Yes|-|Text content.|
|options|[RichEditorTextSpanOptions](#class-richeditortextspanoptions)|No|RichEditorTextSpanOptions()|Text options.|

**Return Value:**

|Type|Description|
|:----|:----|
|Int32|Position of the added TextSpan.|

#### func closeSelectionMenu()

```cangjie
public func closeSelectionMenu(): Unit
```

**Description:** Closes custom selection menu or system default selection menu.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### func deleteSpans(Int32, Int32)

```cangjie
public func deleteSpans(start!: Int32 = 0, end!: Int32 = Int32.Max): Unit
```

**Description:** Deletes text and images within specified range.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

|Parameter|Type|Mandatory|Default|Description|
|:---|:---|:---|:---|:---|
|start|Int32|No|0|Start position. Defaults to 0 if omitted or negative.|
|end|Int32|No|Int32.Max|End position. Defaults to end of text if omitted or out of range.|

#### func getSpans(Int32, Int32)

```cangjie
public func getSpans(start!: Int32 = -1, end!: Int32 = -1): ArrayList<RichEditorSpanResult>
```

**Description:** Gets Span information.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

|Parameter|Type|Mandatory|Default|Description|
|:---|:---|:---|:---|:---|
|start|Int32|No|-1|Start position. Defaults to 0 if omitted or negative.|
|end|Int32|No|-1|End position. Defaults to infinity if omitted or out of range.|

**Return Value:**

|Type|Description|
|:----|:----|
|ArrayList\<[RichEditorSpanResult](#interface-richeditorspanresult)>|Array storing span information.|

#### func updateParagraphStyle(Int32, Int32, RichEditorParagraphStyle)

```cangjie
public func updateParagraphStyle(start!: Int32 = 0, end!: Int32 = -1, style!: RichEditorParagraphStyle): Unit
```

**Description:** Updates paragraph style.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

|Parameter|Type|Mandatory|Default|Description|
|:---|:---|:---|:---|:---|
|start|Int32|No|0|Start position of text to update style. Defaults to 0 if omitted or negative.|
|end|Int32|No|-1|End position of text to update style. Defaults to infinity if omitted or out of range.|
|style|[RichEditorParagraphStyle](#class-richeditorparagraphstyle)|Yes|-|Paragraph style.|

#### func updateSpanStyle(Int32, Int32, RichEditorTextStyle)

```cangjie
public func updateSpanStyle(start!: Int32 = 0, end!: Int32 = Int32.Max, textStyle!: RichEditorTextStyle): Unit
```

**Description:** Type representing image offset position and image style information.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

|Parameter|Type|Mandatory|Default|Description|
|:---|:---|:---|:---|:---|
|start|Int32|No|0|Start position of text to update style. Defaults to 0 if omitted or negative.|
|end|Int32|No|Int32.Max|End position of text to update style. Defaults to infinity if omitted or out of range.|
|textStyle|[RichEditorTextStyle](#class-richeditortextstyle)|Yes|-|Text style.|

#### func updateSpanStyle(Int32, Int32, RichEditorImageSpanStyle)

```cangjie
public func updateSpanStyle(start!: Int32 = 0, end!: Int32 = Int32.Max, imageStyle!: RichEditorImageSpanStyle): Unit
```

**Description:** Updates text, image or SymbolSpan style.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

|Parameter|Type|Mandatory|Default|Description|
|:---|:---|:---|:---|:---|
|start|Int32|No|0|Start position of text to update style. Defaults to 0 if omitted or negative.|
|end|Int32|No|Int32.Max|End position of text to update style. Defaults to infinity if omitted or out of range.|
|imageStyle|[RichEditorImageSpanStyle](#class-richeditorimagespanstyle)|Yes|-|Image style.|

### class RichEditorImageSpanOptions

```cangjie
public class RichEditorImageSpanOptions {
    public var offset: Int32
    public var imageStyle: RichEditorImageSpanStyle
    public init(
        offset!: Int32 = Int32.Max,
        imageStyle!: RichEditorImageSpanStyle = RichEditorImageSpanStyle()
    )
}
```

**Description:** Type representing image offset position and image style information.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var imageStyle

```cangjie
public var imageStyle: RichEditorImageSpanStyle
```

**Description:** Type representing image style information. Uses system default image info when omitted.

**Type:** [RichEditorImageSpanStyle](#class-richeditorimagespanstyle)

**Access:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var offset

```cangjie
public var offset: Int32
```

**Description:** Position to add image. Defaults to end of all text strings when omitted. Places at start when value < 0; places at end when value > string length.

**Type:** Int32

**Access:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### init(Int32, RichEditorImageSpanStyle)

```cangjie
public init(
    offset!: Int32 = Int32.Max,
    imageStyle!: RichEditorImageSpanStyle = RichEditorImageSpanStyle()
)
```

**Description:** Creates a RichEditorImageSpanOptions object.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

|Parameter|Type|Mandatory|Default|Description|
|:---|:---|:---|:---|:---|
|offset|Int32|No|Int32.Max|Position to add image. Defaults to end of all text strings when omitted. Places at start when value < 0; places at end when value > string length.|
|imageStyle|[RichEditorImageSpanStyle](#class-richeditorimagespanstyle)|No|RichEditorImageSpanStyle()|Image style information. Uses system default image info when omitted.|

### class RichEditorImageSpanStyle

```cangjie
public class RichEditorImageSpanStyle {
    public var size: Option <(Length, Length)>
    public var verticalAlign: ImageSpanAlignment
    public var objectFit: ImageFit
    public init(
        size!: (Length, Length),
        verticalAlign!: ImageSpanAlignment = ImageSpanAlignment.Baseline,
        objectFit!: ImageFit = ImageFit.Cover
    )
    public init(
        verticalAlign!: ImageSpanAlignment = ImageSpanAlignment.Baseline,
        objectFit!: ImageFit = ImageFit.Cover
    )
}
```

**Description:** Image style.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var objectFit

```cangjie
public var objectFit: ImageFit
```

**Description:** Image scaling type.

**Type:** [ImageFit](./cj-common-types.md#enum-imagefit)

**Access:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var size

```cangjie
public var size: Option <(Length, Length)>
```

**Description:** Image width and height.

**Type:** Option\<([Length](../BasicServicesKit/cj-apis-base.md#interface-length),[Length](../BasicServicesKit/cj-apis-base.md#interface-length))>

**Access:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var verticalAlign

```cangjie
public var verticalAlign: ImageSpanAlignment
```

**Description:** Image vertical alignment.

**Type:** [ImageSpanAlignment](./cj-common-types.md#enum-imagespanalignment)

**Access:** Read-Write

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### init((Length,Length), ImageSpanAlignment, ImageFit)

```cangjie
public init(
    size!: (Length, Length),
    verticalAlign!: ImageSpanAlignment = ImageSpanAlignment.Baseline,
    objectFit!: ImageFit = ImageFit.Cover
)
```

**Description:** Creates a RichEditorImageSpanStyle object.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

|Parameter|Type|Mandatory|Default|Description|
|:---|:---|:---|:---|:---|
|size|([Length](../BasicServicesKit/cj-apis-base.md#interface-length),[Length](../BasicServicesKit/cj-apis-base.md#interface-length))|Yes|-|Image width and height.|
|verticalAlign|[ImageSpanAlignment](./cj-common-types.md#enum-imagespanalignment)|No|ImageSpanAlignment.Baseline|Image vertical alignment.|
|objectFit|[ImageFit](./cj-common-types.md#enum-imagefit)|No|ImageFit.Cover|Image scaling type.|

#### init(ImageSpanAlignment, ImageFit)

```cangjie
public init(
    verticalAlign!: ImageSpanAlignment = ImageSpanAlignment.Baseline,
    objectFit!: ImageFit = ImageFit.Cover
)
```

**Description:** Creates a RichEditorImageSpanStyle object.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

|Parameter|Type|Mandatory|Default|Description|
|:---|:---|:---|:---|:---|
|verticalAlign|[ImageSpanAlignment](./cj-common-types.md#enum-imagespanalignment)|No|ImageSpanAlignment.Baseline|Image vertical alignment.|
|objectFit|[ImageFit](./cj-common-types.md#enum-imagefit)|No|ImageFit.Cover|Image scaling type.|### class RichEditorLayoutStyle

```cangjie
public class RichEditorLayoutStyle {
    public var margin: Margin
    public var borderRadius: BorderRadiuses
    public init(margin!: Margin = Margin(), borderRadius!: BorderRadiuses = BorderRadiuses())
    public init(margin!: Length, borderRadius!: Length)
}
```

**Function:** Image layout style.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var borderRadius

```cangjie
public var borderRadius: BorderRadiuses
```

**Function:** Border radius type, used to describe the border radius of components.

**Type:** [BorderRadiuses](./cj-common-types.md#class-borderradiuses)

**Read/Write:** Readable and Writable

#### var margin

```cangjie
public var margin: Margin
```

**Function:** Margin type, used to describe margins in different directions of components.

**Type:** [Margin](./cj-common-types.md#class-margin)

**Read/Write:** Readable and Writable

#### init(Margin, BorderRadiuses)

```cangjie
public init(margin!: Margin = Margin(), borderRadius!: BorderRadiuses = BorderRadiuses())
```

**Function:** Creates an object of RichEditorLayoutStyle type.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| margin | [Margin](./cj-common-types.md#class-margin) | No | Margin() | Margin type. |
| borderRadius | [BorderRadiuses](./cj-common-types.md#class-borderradiuses) | No | BorderRadiuses() | Border radius type. |

#### init(Length, Length)

```cangjie
public init(margin!: Length, borderRadius!: Length)
```

**Function:** Creates an object of RichEditorLayoutStyle type.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| margin | [Length](../BasicServicesKit/cj-apis-base.md#interface-length) | Yes | - | Margin value. |
| borderRadius | [Length](../BasicServicesKit/cj-apis-base.md#interface-length) | Yes | - | Border radius value. |

### class RichEditorParagraphStyle

```cangjie
public class RichEditorParagraphStyle {
    public var textAlign: TextAlign
    public var leadingMargin: LeadingMarginType
    public init(textAlign!: TextAlign = TextAlign.Start)
    public init(textAlign!: TextAlign = TextAlign.Start, leadingMargin!: Length)
    public init(textAlign!: TextAlign = TextAlign.Start, leadingMargin!: LeadingMarginPlaceholder)
}
```

**Function:** Paragraph style.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var leadingMargin

```cangjie
public var leadingMargin: LeadingMarginType
```

**Function:** Represents text paragraph indentation.

**Type:** [LeadingMarginType](#enum-leadingmargintype)

**Read/Write:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var textAlign

```cangjie
public var textAlign: TextAlign
```

**Function:** Represents the horizontal alignment of text paragraphs.

**Type:** [TextAlign](./cj-common-types.md#enum-textalign)

**Read/Write:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### init(TextAlign)

```cangjie
public init(textAlign!: TextAlign = TextAlign.Start)
```

**Function:** Creates an object of RichEditorParagraphStyle type.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| textAlign | [TextAlign](./cj-common-types.md#enum-textalign) | No | TextAlign.Start | Horizontal alignment of text paragraphs. |

#### init(TextAlign, Length)

```cangjie
public init(textAlign!: TextAlign = TextAlign.Start, leadingMargin!: Length)
```

**Function:** Creates an object of RichEditorParagraphStyle type.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| textAlign | [TextAlign](./cj-common-types.md#enum-textalign) | No | TextAlign.Start | Horizontal alignment of text paragraphs. |
| leadingMargin | [Length](../BasicServicesKit/cj-apis-base.md#interface-length) | Yes | - | Text paragraph indentation. Percentage values are not supported. |

#### init(TextAlign, LeadingMarginPlaceholder)

```cangjie
public init(textAlign!: TextAlign = TextAlign.Start, leadingMargin!: LeadingMarginPlaceholder)
```

**Function:** Creates an object of RichEditorParagraphStyle type.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| textAlign | [TextAlign](./cj-common-types.md#enum-textalign) | No | TextAlign.Start | Horizontal alignment of text paragraphs. |
| leadingMargin | [LeadingMarginPlaceholder](#class-leadingmarginplaceholder) | Yes | - | Text paragraph indentation. Percentage values are not supported. |

### class RichEditorTextSpanOptions

```cangjie
public class RichEditorTextSpanOptions {
    public var offset: Int32
    public var style: RichEditorTextStyle
    public init(offset!: Int32 = Int32.Max, style!: RichEditorTextStyle = RichEditorTextStyle())
}
```

**Function:** Specifies the offset position and text style information for adding text.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var offset

```cangjie
public var offset: Int32
```

**Function:** Specifies the position for adding text. If omitted, text is appended to the end of all text strings. If the value is less than 0, the text is placed at the beginning of the string; if the value exceeds the string length, the text is placed at the end.

**Type:** Int32

**Read/Write:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var style

```cangjie
public var style: RichEditorTextStyle
```

**Function:** Specifies the text style information type. If omitted, the system default text style is used.

**Type:** [RichEditorTextStyle](#class-richeditortextstyle)

**Read/Write:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### init(Int32, RichEditorTextStyle)

```cangjie
public init(offset!: Int32 = Int32.Max, style!: RichEditorTextStyle = RichEditorTextStyle())
```

**Function:** Creates an object of RichEditorTextSpanOptions type.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| offset | Int32 | No | Int32.Max | Position for adding text. If omitted, text is appended to the end of all text strings. If the value is less than 0, the text is placed at the beginning; if the value exceeds the string length, the text is placed at the end. |
| style | [RichEditorTextStyle](#class-richeditortextstyle) | No | RichEditorTextStyle() | Text style information. If omitted, the system default text style is used. |

### class RichEditorTextStyle

```cangjie
public class RichEditorTextStyle {
    public var fontColor: ResourceColor
    public var fontSize: Length
    public var fontStyle: FontStyle
    public var fontWeight: FontWeight
    public var fontFamily: ResourceStr
    public var decoration: TextDecorationOptions
    public init(
        fontColor!: ResourceColor = Color.Black,
        fontSize!: Length = 16.vp,
        fontStyle!: FontStyle = FontStyle.Normal,
        fontWeight!: FontWeight = FontWeight.Normal,
        fontFamily!: ResourceStr = DEFAULT_FONT,
        decoration!: TextDecorationOptions = TextDecorationOptions(decorationType: TextDecorationType.None, color: Color.Black)
    )
}
```

**Function:** Text style information.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var decoration

```cangjie
public var decoration: TextDecorationOptions
```

**Function:** Text decoration line style and its color.

**Type:** [TextDecorationOptions](#class-textdecorationoptions)

**Read/Write:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var fontColor

```cangjie
public var fontColor: ResourceColor
```

**Function:** Text color.

**Type:** [ResourceColor](../BasicServicesKit/cj-apis-base.md#interface-resourcecolor)

**Read/Write:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var fontFamily

```cangjie
public var fontFamily: ResourceStr
```

**Function:** Font list.

**Type:** [ResourceStr](../BasicServicesKit/cj-apis-base.md#interface-resourcestr)

**Read/Write:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var fontSize

```cangjie
public var fontSize: Length
```

**Function:** Font size. When Length is Int64 or Float64, the unit is fp. Percentage values are not supported.

**Type:** [Length](../BasicServicesKit/cj-apis-base.md#interface-length)

**Read/Write:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var fontStyle

```cangjie
public var fontStyle: FontStyle
```

**Function:** Font style.

**Type:** [FontStyle](./cj-common-types.md#enum-fontstyle)

**Read/Write:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var fontWeight

```cangjie
public var fontWeight: FontWeight
```

**Function:** Font weight.

**Type:** [FontWeight](./cj-common-types.md#enum-fontweight)

**Read/Write:** Readable and Writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### init(ResourceColor, Length, FontStyle, FontWeight, ResourceStr, TextDecorationOptions)

```cangjie
public init(
    fontColor!: ResourceColor = Color.Black,
    fontSize!: Length = 16.vp,
    fontStyle!: FontStyle = FontStyle.Normal,
    fontWeight!: FontWeight = FontWeight.Normal,
    fontFamily!: ResourceStr = DEFAULT_FONT,
    decoration!: TextDecorationOptions = TextDecorationOptions(decorationType: TextDecorationType.None, color: Color.Black)
)
```

**Function:** Creates an object of RichEditorTextStyle type.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| fontColor | [ResourceColor](../BasicServicesKit/cj-apis-base.md#interface-resourcecolor) | No | Color.Black | Text color. |
| fontSize | [Length](../BasicServicesKit/cj-apis-base.md#interface-length) | No | 16.vp | Font size. When Length is Int64 or Float64, the unit is fp. Percentage values are not supported. |
| fontStyle | [FontStyle](./cj-common-types.md#enum-fontstyle) | No | FontStyle.Normal | Font style. |
| fontWeight | [FontWeight](./cj-common-types.md#enum-fontweight) | No | FontWeight.Normal | Font weight. |
| fontFamily | [ResourceStr](../BasicServicesKit/cj-apis-base.md#interface-resourcestr) | No | DEFAULT_FONT | Font list. |
| decoration | [TextDecorationOptions](#class-textdecorationoptions) | No | TextDecorationOptions(decorationType: TextDecorationType.None, color: Color.Black) | Text decoration line style and its color. |### class SelectionMenuOptions

```cangjie
public class SelectionMenuOptions {
    public var onAppear: VoidCallback
    public var onDisappear: VoidCallback
    public init(onAppear!: () -> Unit = {=>}, onDisappear!: () -> Unit = {=>})
}
```

**Function:** Menu option type.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var onAppear

```cangjie
public var onAppear: VoidCallback
```

**Function:** Callback function triggered when a custom selection menu appears.

**Type:** [VoidCallback](../BasicServicesKit/cj-apis-base.md#type-voidcallback)

**Readable/Writable:** Readable and writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var onDisappear

```cangjie
public var onDisappear: VoidCallback
```

**Function:** Callback function triggered when a custom selection menu closes.

**Type:** [VoidCallback](../BasicServicesKit/cj-apis-base.md#type-voidcallback)

**Readable/Writable:** Readable and writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### init(() -> Unit, () -> Unit)

```cangjie
public init(onAppear!: () -> Unit = {=>}, onDisappear!: () -> Unit = {=>})
```

**Function:** Creates an object of type SelectionMenuOptions.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| onAppear | () -> Unit | No | { => } | Callback function triggered when a custom selection menu appears. |
| onDisappear | () -> Unit | No | { => } | Callback function triggered when a custom selection menu closes. |

### class TextDecorationOptions

```cangjie
public class TextDecorationOptions {
    public var decorationType: TextDecorationType
    public var color: ResourceColor
    public init(decorationType!: TextDecorationType, color!: ResourceColor = Color.Black)
}
```

**Function:** Configuration options for text decoration lines.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var color

```cangjie
public var color: ResourceColor
```

**Function:** Sets the color of the text decoration line.

**Type:** [ResourceColor](../BasicServicesKit/cj-apis-base.md#interface-resourcecolor)

**Readable/Writable:** Readable and writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### var decorationType

```cangjie
public var decorationType: TextDecorationType
```

**Function:** Sets the type of the text decoration line.

**Type:** [TextDecorationType](./cj-common-types.md#enum-textdecorationtype)

**Readable/Writable:** Readable and writable

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### init(TextDecorationType, ResourceColor)

```cangjie
public init(decorationType!: TextDecorationType, color!: ResourceColor = Color.Black)
```

**Function:** Creates a text decoration line object.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| decorationType | [TextDecorationType](./cj-common-types.md#enum-textdecorationtype) | Yes | - | Type of the decoration line. |
| color | [ResourceColor](../BasicServicesKit/cj-apis-base.md#interface-resourcecolor) | No | Color.Black | Color of the decoration line. |

### enum LeadingMarginType

```cangjie
public enum LeadingMarginType {
    | LengthType(Length)
    | PlaceholderType(LeadingMarginPlaceholder)
    | None
    | ...
}
```

**Function:** Text paragraph indentation type.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### LengthType(Length)

```cangjie
LengthType(Length)
```

**Function:** Text paragraph indentation distance.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### None

```cangjie
None
```

**Function:** No indentation for text paragraphs.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### PlaceholderType(LeadingMarginPlaceholder)

```cangjie
PlaceholderType(LeadingMarginPlaceholder)
```

**Function:** Leading margin placeholder, used to represent the distance between the left side of a text paragraph and the edge of the component.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

### enum RichEditorDeleteDirection

```cangjie
public enum RichEditorDeleteDirection <: Equatable<RichEditorDeleteDirection> {
    | BACKWARD
    | FORWARD
    | ...
}
```

**Function:** Represents the direction of a delete operation.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parent Type:**

- Equatable\<RichEditorDeleteDirection>

#### BACKWARD

```cangjie
BACKWARD
```

**Function:** Represents backward deletion.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### FORWARD

```cangjie
FORWARD
```

**Function:** Represents forward deletion.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### func !=(RichEditorDeleteDirection)

```cangjie
public operator func !=(other: RichEditorDeleteDirection): Bool
```

**Function:** Determines whether two enum values are not equal.

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| other | [RichEditorDeleteDirection](#enum-richeditordeletedirection) | Yes | - | Another enum value. |

**Return Value:**

| Type | Description |
|:----|:----|
| Bool | Returns true if the two enum values are not equal, otherwise returns false. |

#### func ==(RichEditorDeleteDirection)

```cangjie
public operator func ==(other: RichEditorDeleteDirection): Bool
```

**Function:** Determines whether two enum values are equal.

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| other | [RichEditorDeleteDirection](#enum-richeditordeletedirection) | Yes | - | Another enum value. |

**Return Value:**

| Type | Description |
|:----|:----|
| Bool | Returns true if the two enum values are equal, otherwise returns false. |

### enum RichEditorSpanType

```cangjie
public enum RichEditorSpanType <: Equatable<RichEditorSpanType> {
    | TEXT
    | IMAGE
    | MIXED
    | ...
}
```

**Function:** Represents Span type information.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parent Type:**

- Equatable\<RichEditorSpanType>

#### IMAGE

```cangjie
IMAGE
```

**Function:** Represents a Span of image type.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### MIXED

```cangjie
MIXED
```

**Function:** Represents a Span of mixed text and image type.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### TEXT

```cangjie
TEXT
```

**Function:** Represents a Span of text type.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### func !=(RichEditorSpanType)

```cangjie
public operator func !=(other: RichEditorSpanType): Bool
```

**Function:** Determines whether two enum values are not equal.

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| other | [RichEditorSpanType](#enum-richeditorspantype) | Yes | - | Another enum value. |

**Return Value:**

| Type | Description |
|:----|:----|
| Bool | Returns true if the two enum values are not equal, otherwise returns false. |

#### func ==(RichEditorSpanType)

```cangjie
public operator func ==(other: RichEditorSpanType): Bool
```

**Function:** Determines whether two enum values are equal.

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| other | [RichEditorSpanType](#enum-richeditorspantype) | Yes | - | Another enum value. |

**Return Value:**

| Type | Description |
|:----|:----|
| Bool | Returns true if the two enum values are equal, otherwise returns false. |

#### func getValue()

```cangjie
public func getValue(): Int32
```

**Function:** Gets the value of the enum.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Return Value:**

| Type | Description |
|:----|:----|
| Int32 | The value of the enum. |

### enum SpanType

```cangjie
public enum SpanType <: Equatable<SpanType> {
    | TEXT
    | IMAGE
    | ...
}
```

**Function:** Represents the type of Span information.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

**Parent Type:**

- Equatable\<SpanType>

#### IMAGE

```cangjie
IMAGE
```

**Function:** Represents a Span of image type.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### TEXT

```cangjie
TEXT
```

**Function:** Represents a Span of text type.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21

#### func !=(SpanType)

```cangjie
public operator func !=(other: SpanType): Bool
```

**Function:** Determines whether two enum values are not equal.

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| other | [SpanType](#enum-spantype) | Yes | - | Another enum value. |

**Return Value:**

| Type | Description |
|:----|:----|
| Bool | Returns true if the two enum values are not equal, otherwise returns false. |

#### func ==(SpanType)

```cangjie
public operator func ==(other: SpanType): Bool
```

**Function:** Determines whether two enum values are equal.

**Parameters:**

| Parameter Name | Type | Required | Default Value | Description |
|:---|:---|:---|:---|:---|
| other | [SpanType](#enum-spantype) | Yes | - | Another enum value. |

**Return Value:**

| Type | Description |
|:----|:----|
| Bool | Returns true if the two enum values are equal, otherwise returns false. |

### type OnDidChangeCallback

```cangjie
public type OnDidChangeCallback = (rangeBefore: TextRange, rangeAfter: TextRange) -> Unit
```

**Function:** Type alias for (rangeBefore: TextRange, rangeAfter: TextRange) -> Unit.

**System Capability:** SystemCapability.ArkUI.ArkUI.Full

**Since:** 21## Sample Code

<!-- run -->

```cangjie
package ohos_app_cangjie_entry
import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.*
import kit.PerformanceAnalysisKit.*

@Entry
@Component
class EntryView {
    let controller = RichEditorController()

    @State var position: Int64 = 0

    @Builder
    func builder(){
        Column {
            ForEach(["1", "2", "3", "4", "5", "6", "7", "8", "9", "*", "0", "#"], itemGeneratorFunc: {item: String, idx: Int64 =>
                Button(item)
                .width(40.vp)
                .height(40.vp)
                .fontColor(0x66000000)
                .fontSize(16.fp)
            })
        }
        .borderRadius(24.vp)
        .padding(top: 4.vp, bottom: 4.vp, left: 16.vp, right: 16.vp)
        .backgroundColor(Color.Green)
        .margin(right: 24.vp, bottom: 4.vp, top: 0.vp)
        .width(130.vp)
    }

    func build() {
        Column(space: 30) {
            Row {
                Button("getCaretOffset")
                .onClick {
                    evt =>
                    Hilog.info(0, "AppLogCj", controller.getCaretOffset().toString())
                    this.position = controller.getCaretOffset()
                }.width(400.px).height(150.px)

                Text("position: ${this.position.toString()}")
            }

            Row {
                Button("setCaretOffset 0")
                .onClick {
                    evt =>
                    controller.setCaretOffset(0)
                }.width(400.px).height(150.px)

                Text("position: ${this.position.toString()}")
            }

            Row {
                Button("addText Hello")
                .onClick {
                    evt =>
                    controller.addTextSpan(
                        value: "Hello",
                        options: RichEditorTextSpanOptions(
                            style: RichEditorTextStyle(
                                fontColor: Color(0XFF1298),
                                fontSize: 20.fp,
                                fontStyle: FontStyle.Italic,
                                decoration: TextDecorationOptions(
                                    decorationType: TextDecorationType.Overline,
                                    color: Color(0X12FF98)
                                ),
                            )
                        )
                    )
                }.width(400.px).height(150.px)

                Button("addImage")
                .onClick {
                    evt =>
                    controller.addImageSpan(
                        value: @r(app.media.startIcon),
                        options: RichEditorImageSpanOptions(
                            imageStyle: RichEditorImageSpanStyle(
                                size: (24.vp, 24.vp)
                            )
                        )
                    )
                }.width(400.px).height(150.px)
            }

            Row {
                Button("updateParagraphStyle")
                .onClick {
                    evt =>
                    let array = controller.updateParagraphStyle(
                        start: 0,
                        end: 100,
                        style: RichEditorParagraphStyle(
                            textAlign: TextAlign.Center,
                            leadingMargin: 24.px
                        )
                    )
                }.width(400.px).height(150.px)
            }

            RichEditor(controller)
            .customKeyboard(value: bind(builder, this))
            .bindSelectionMenu(
                spantype: RichEditorSpanType.Text,
                content: bind(builder, this),
                responseType: ResponseType.LongPress,
                options: SelectionMenuOptions(onAppear: { => Hilog.info(0, "AppLogCj", "SelectionMenuOptions onAppear")}, onDisappear: { => Hilog.info(0, "AppLogCj", "SelectionMenuOptions onDisappear")})
            )
            .copyOptions(CopyOptions.None)
            .onReady({ => Hilog.info(0, "AppLogCj", "RichEditor onReady!!")})
            .onDeleteComplete({ => Hilog.info(0, "AppLogCj", "RichEditor onDeleteComplete!!")})
            .onSelect({ value =>
                Hilog.info(0, "AppLogCj", "RichEditor onSelect. ${value.selection[0]} ~ ${value.selection[1]}")
            })
        }
    }
}
```

![richeditor](figures/richeditor.gif)