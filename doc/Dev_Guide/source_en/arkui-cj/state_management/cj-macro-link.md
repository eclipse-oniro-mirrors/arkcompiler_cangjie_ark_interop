# @Link Macro: Two-Way Synchronization Between Parent and Child

Variables decorated with \@Link in child components establish two-way data binding with their corresponding data sources in parent components.

Before reading the \@Link documentation, developers are advised to first understand the basic usage of [\@State](./cj-macro-state.md).

## Overview

Variables decorated with \@Link share the same value with their data sources in parent components.

## Macro Usage Rules

|\@Link|Description|
|:---|:---|
|Non-attribute Macro|None.|
|Synchronization Type|Two-way synchronization.<br/>State variables in parent components can establish two-way synchronization with \@Link-decorated variables in child components. Changes in one party will be detected by the other.|
|Allowed Variable Types|Supports basic data types. For String, Int64, Float64, and Bool types, the type can be omitted. Other types must be explicitly specified.<br/>Supports Enum, Option types, and struct types (internal modifications are not allowed for struct types).<br/>Supports class types. To observe internal changes, the class must be decorated with [\@Observed](./cj-macro-observed-and-publish.md), and its properties or nested properties must be decorated with [\@Publish](./cj-macro-observed-and-publish.md) to detect changes.<br/>Supports array types. To observe internal changes, use [ObservedArray\<T\>](../../../../API_Reference/source_zh_cn/arkui-cj/cj-state-rendering-componentstatemanagement.md#class-observedarray) and [ObservedArrayList\<T\>](../../../../API_Reference/source_zh_cn/arkui-cj/cj-state-rendering-componentstatemanagement.md#class-observedarraylist). For custom array items, use [\@Observed](./cj-macro-observed-and-publish.md) and [\@Publish](./cj-macro-observed-and-publish.md) to observe property assignments. Other array and Collection types (e.g., Array, Varray, ArrayList, HashMap, HashSet) support assigning new arrays but cannot detect internal element changes.<br/>Supports [Color](../../../../API_Reference/source_zh_cn/arkui-cj/cj-common-types.md#class-color) type.<br/>For supported scenarios, see [Observing Changes](#observing-changes).<br/>Does not support Any.|
|Initial Value of Decorated Variables|\@Link-decorated variables must be initialized using variables provided by the parent component. Initialization in child components is not allowed.|

## Variable Passing/Access Rules

|Passing/Access|Description|
|:---|:---|
|Initialization and Update from Parent Component|Local initialization is prohibited. Initialization occurs when the custom component instance is created, with the initial value provided by the parent component's state variable. Allows initialization of child component \@Link variables using parent component variables decorated with [\@State](./cj-macro-state.md), \@Link, [\@Prop](./cj-macro-prop.md), [\@Provide](./cj-macro-provide-and-consume.md), or [\@Consume](./cj-macro-provide-and-consume.md).|
|Initializing Child Components|Can be used as a data source to initialize child components. Can initialize regular variables, \@State, \@Link, \@Prop, and \@Provide.|
|Access Outside Component|Private, only accessible within the component.|

## Observing Changes and Behavior

### Observing Changes

- When the decorated data type is a basic type, numerical changes can be observed synchronously. See [\@Link with Simple and Class Types](#\@link-with-simple-and-class-types) for an example.

- When the decorated data type is a class, it must be decorated with [\@Observed](./cj-macro-observed-and-publish.md), and properties requiring change detection must be decorated with [\@Publish](./cj-macro-observed-and-publish.md). Without [\@Observed](./cj-macro-observed-and-publish.md), internal changes (e.g., member variables) cannot be detected. See [\@Link with Simple and Class Types](#\@link-with-simple-and-class-types) for an example.

- When the decorated object is an array, individual array item changes cannot be detected, but overall changes can. To detect internal changes, use [ObservedArray\<T\>](../../../../API_Reference/source_zh_cn/arkui-cj/cj-state-rendering-componentstatemanagement.md#class-observedarray) and [ObservedArrayList\<T\>](../../../../API_Reference/source_zh_cn/arkui-cj/cj-state-rendering-componentstatemanagement.md#class-observedarraylist). See [\@Link with Array Types](#\@link-with-array-types) for an example.

- For other array and Collection types (e.g., Array, Varray, ArrayList, HashMap, HashSet), assigning new arrays is supported, but internal element changes cannot be detected.

### Framework Behavior

\@Link-decorated variables share the lifecycle with their custom components.

To understand the initialization and update mechanism of \@Link variables, it is essential to understand the relationship between the parent component and the child component containing the \@Link variable, as well as the initial rendering and two-way update process (using \@State in the parent component as an example).

1. **Initial Rendering**: After executing the parent component's `build()` function, a new instance of the child component is created. The initialization process is as follows:
   a. The \@State variable in the parent component must be specified to initialize the \@Link variable in the child component. The child component's \@Link variable remains synchronized with the parent component's data source variable (two-way data synchronization).
   b. The parent component's \@State wrapper class is passed to the child component via the constructor. The child component's \@Link wrapper class registers its `this` pointer with the parent component's \@State variable.

2. **Update of \@Link Data Source**: When the state variable in the parent component updates, the child component's \@Link is updated accordingly. Steps:
   a. As seen in the initial rendering step, the child component's \@Link wrapper class registers its `this` pointer with the parent component. After the parent component's \@State variable changes, it traverses and updates all dependent system components (`elementid`) and state variables (e.g., \@Link wrapper classes).
   b. After notifying the \@Link wrapper class of the update, all system components (`elementId`) in the child component that depend on the \@Link state variable are notified. This achieves state data synchronization from the parent to the child component.

3. **Update of \@Link**: When the child component's \@Link updates, the following steps occur (using \@State in the parent component as an example):
   a. After the \@Link updates, the parent component's \@State wrapper class `set` method is called to synchronize the updated value back to the parent component.
   b. The child component's \@Link and parent component's \@State traverse their dependent system components to update the UI accordingly. This achieves synchronization from the child component's \@Link back to the parent component's \@State.

## Constraints

1. The \@Link macro decorates state owned by the current component and can only be defined in child components. It cannot be used in custom components decorated with [\@Entry](../paradigm/cj-create-custom-components.md#basic-structure-of-custom-components).

2. \@Link-decorated variables are mutable and must be declared with `var`. The type must be explicitly specified.

3. \@Link-decorated variables cannot be initialized locally. They must be initialized by the parent component; otherwise, a compilation error occurs.

    ```cangjie
    // Incorrect: Compilation error
    @Link var count: Int64 = 10

    // Correct
    @Link var count: Int64
    ```

4. The type of the \@Link-decorated variable must match the data source type. See [\@Link Decorated State Variable Type Error](#\@link-decorated-state-variable-type-error).

    **Counterexample**:

    ```cangjie
    class Info {
        var info: String = 'Hello'
    }

    class Cousin {
        var name: String = 'Hello'
    }

    @Component
    class Child {
        // Incorrect: \@Link and \@State data source types do not match
        @Link var test: Cousin
        func build() {
            Column() {
                Text(this.test.name)
            }
        }
    }

    @Entry
    @Component
    class EntryView {
        @State var info: Info = Info()
        func build() {
            Column {
                // Incorrect: \@Link and \@State data source types do not match
                Child(test: this.info)
            }
        }
    }
    ```

    **Correct Example**:

    ```cangjie
    class Info {
        var info: String = 'Hello'
    }

    @Component
    class Child {
        // Correct
        @Link var test: Info
        func build() {
            Column() {
                Text(this.test.info)
            }
        }
    }

    @Entry
    @Component
    class EntryView {
        @State
        var info: Info = Info()
        func build() {
            Column {
                // Correct
                Child(test: this.info)
            }
        }
    }
    ```

5. \@Link-decorated variables can only be initialized by state variables (e.g., \@State). Initialization with constants is not allowed, and the data source must be a macro-decorated state variable; otherwise, an editor error occurs.

    **Counterexample**:

    ```cangjie
    class Info {
        var info: String = 'Hello'
    }

    @Component
    class Child {
        @Link var mes: String
        @Link var info: String
        func build() {
            Column() {
                Text(this.mes + this.info)
            }
        }
    }

    @Entry
    @Component
    class EntryView {
        @State var mes: String = "Hello"
        @State var info: Info = Info()
        func build() {
            Column {
                // Incorrect: Regular variables cannot initialize \@Link
                Child(msg: 'World', info: this.info.info)
            }
        }
    }
    ```

    **Correct Example**:

    ```cangjie
    class Info {
        var info: String = 'Hello'
    }

    @Component
    class Child {
        @Link var mes: String
        @Link var info: Info
        func build() {
            Column() {
                Text(this.mes + this.info.info)
            }
        }
    }

    @Entry
    @Component
    class EntryView {
        @State var message: String = "Hello"
        @State var info: Info = Info()
        func build() {
            Column {
                // Correct
                Child(mes: this.message, info: this.info)
            }
        }
    }
    ```

6. \@Link does not support decorating Function-type variables. A compilation error will occur.

## Usage Scenarios

### \@Link with Simple and Class Types

In the following example, clicking "Parent View: Set yellowButton" and "Parent View: Set GreenButton" in the parent component `EntryView` synchronizes changes from the parent to the child component.

1. Clicking the Button in the child components `GreenButton` and `YellowButton` triggers changes in the child components, which are synchronized back to the parent component. Since \@Link is two-way, changes are synchronized to \@State.

2. Clicking the Button in the parent component `EntryView` updates \@State, which is synchronized to \@Link, refreshing the child component accordingly.

 <!-- run -->

```cangjie
package ohos_app_cangjie_entry
import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*

@Observed
class GreenButtonState {
    @Publish var width: Int64 = 0
}

@Component
class GreenButton {
    @Link var greenButtonState: GreenButtonState

    func build() {
        Button("Green Button")
            .width(this.greenButtonState.width)
            .height(40)
            .backgroundColor(Color.GREEN)
            .margin(12)
            .onClick {
                evt => if (this.greenButtonState.width < 700) {
                    // Updating class properties can be observed and synchronized back to the parent
                    this.greenButtonState.width += 60
                } else {
                    // Updating the class itself can be observed and synchronized back to the parent
                    this.greenButtonState = GreenButtonState(width: 180)
                }
            }
    }
}

@Component
class YellowButton {
    @Link var yellowButtonState: Int64

    func build() {
        Button("Yellow Button")
            .width(this.yellowButtonState)
            .height(40)
            .backgroundColor(Color.YELLOW)
            .fontColor(Color.BLACK)
            .margin(12)
            .onClick {
                evt =>
                // Simple types in child components can synchronize back to the parent
                this.yellowButtonState += 40
            }
    }
}

@Entry
@Component
class EntryView {
    @State var greenButtonState: GreenButtonState = GreenButtonState(width: 180)
    @State var yellowButtonProp: Int64 = 180
    func build() {
        Column() {
            Flex(FlexOptions(direction: FlexDirection.Column, alignItems: ItemAlign.Center)) {
                // Simple type synchronization from parent \@State to child \@Link
                Button("Parent View: Set yellowButton")
                    .width(this.yellowButtonProp)
                    .height(40)
                    .margin(12)
                    .onClick {
                        evt => if (this.yellowButtonProp < 700) {
                            this.yellowButtonProp = this.yellowButtonProp + 100
                        } else {
                            this.yellowButtonProp = 100
                        }
                    }
                // Class type synchronization from parent \@State to child \@Link
                Button("Parent View: Set GreenButton")
                    .width(this.greenButtonState.width)
                    .height(40)
                    .margin(12)
                    .onClick {
                        evt => if (this.greenButtonState.width < 700) {
                            this.greenButtonState.width = this.greenButtonState.width + 100
                        } else {
                            this.greenButtonState.width = 100
                        }
                    }
                // Class type initialization with @Link
                GreenButton(greenButtonState: this.greenButtonState)
                // Simple type initialization with @Link
                YellowButton(yellowButtonState: this.yellowButtonProp)
            }
        }
    }
}
```

![Video-link-UsageScenario-one](figures/Video-link-UsageScenario-one.gif)

### Array Type @Link

In the following example, when using ObservedArrayList\<Int\> to decorate items, it can detect the addition, deletion, and replacement of array elements.

<!-- run -->

```cangjie
package ohos_app_cangjie_entry
import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*

@Component
class Child{
    @Link var items: ObservedArrayList<Int>

    func build(){
        Column(){
            Button("Button 1: push")
                .margin(12)
                .size(width: 312, height: 40)
                .onClick{
                    => this.items.append(this.items.size + 1)
                }

            Button("Button 2: replace whole item")
                .margin(12)
                .size(width: 312, height:40)
                .onClick{
                    => this.items = ObservedArrayList<Int>([100,200,300])
                }
        }
    }
}

@Entry
@Component
class EntryView{
    @State var arr: ObservedArrayList<Int> = ObservedArrayList<Int>([1,2,3])
    func build(){
        Column(){
            Child(items: arr)
            ForEach(this.arr,{item: Int,index: Int
                    =>
                    Button("${item}")
                        .margin(12)
                        .size(width: 312,height: 40)
                        .backgroundColor(Color.WHITE)
                        .fontColor(Color.BLACK)
                    })
        }
    }
}
```

![Video-link-UsageScenario-two](figures/Video-link-UsageScenario-two.gif)

### Modifying Local Variables Using Two-Way Synchronization Mechanism

Using [@Watch](./cj-macro-watch.md) allows modifying local variables during two-way synchronization.

In the example below, modifying the @State-decorated variable sourceNumber within @Watch of @Link achieves variable synchronization between parent and child components. However, local modifications to the @State-decorated variable memberMessage do not affect changes in the parent component's variables.

<!-- run -->

```cangjie
package ohos_app_cangjie_entry
import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*

@Component
class Child {
    @State var memberMessage: String = 'Hello World'
    @Link @Watch[onSourceChange] var sourceNumber: Int64
    func onSourceChange() {
        this.memberMessage = this.sourceNumber.toString()
    }
    func build() {
        Column() {
            Text(this.memberMessage)
            Text("Child component's sourceNumber：" + this.sourceNumber.toString())
            Button("Child component modifies memberMessage")
              .onClick {
                  => this.memberMessage = "Hello memberMessage"
            }
        }
        .margin(10)
    }
}

@Entry
@Component
class EntryView {
    @State var sourceNumber: Int64 = 0;
    func build() {
        Column() {
            Text("Parent component's sourceNumber：" + this.sourceNumber.toString())
            Child(sourceNumber: this.sourceNumber)
            Button("Parent component modifies sourceNumber")
              .onClick {
                  => this.sourceNumber++
            }
        }
    }
}
```

![Video-link-UsageScenario-three](figures/Video-link-UsageScenario-three.gif)

## Common Issues

### Incorrect @Link Decorated State Variable Type

When using @Link to decorate state variables in child components, ensure the variable type exactly matches the data source type, and the data source must be a state variable decorated with @State or similar.

【Counterexample】

<!-- run -->

```cangjie
package ohos_app_cangjie_entry
import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*

@Observed
class Info {
    @Publish var age: Int64
}

@Component
class LinkChild {
    @Link var testNum: Int64
    func build() {
        Column() {
            Text("LinkChild testNum ${this.testNum}")
        }
    }
}

@Entry
@Component
class EntryView {
    @State var info: Info = Info(age: 1)
    func build() {
        Column {
            Text("Parent testNum ${this.info.age}").onClick({
                evt => this.info.age += 1
            })
            // @Link-decorated variable must match the data source @State type
            LinkChild(testNum: this.info.age)
        }
    }
}
```

`@Link var testNum: Int64` is initialized from the parent component's `LinkChild(testNum: this.info.age)`. The data source for @Link must be a state variable decorated with a macro. In short, the @Link-decorated data must match the data source type, e.g., @Link: T and @State: T. Therefore, this should be modified to `@Link var testNum: Info`, with initialization from the parent component as `LinkChild(testNum: this.info)`.

![Video-link-typeerror](figures/Video-link-typeerror.gif)

【Correct Example】

<!-- run -->

```cangjie
package ohos_app_cangjie_entry
import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*

@Observed
class Info {
    @Publish var age: Int64
}

@Component
class LinkChild {
    @Link var testNum: Info
    func build() {
        Column() {
            Text("LinkChild testNum ${this.testNum.age}")
                .onClick({
                evt => this.testNum.age += 1
            })
        }
    }
}

@Entry
@Component
class EntryView {
    @State var info: Info = Info(age: 1)
    func build() {
        Column {
            Text("Parent testNum ${this.info.age}").onClick({
                evt => this.info.age += 1
            })
            // @Link-decorated variable must match the data source @State type
            LinkChild(testNum: this.info)
        }
    }
}
```

![Video-link-type](figures/Video-link-type.gif)
