# \@Observed Macro and \@Publish Macro: Nested Class Object Property Changes

The macros mentioned above (including [\@State](./cj-macro-state.md), [\@Prop](./cj-macro-prop.md), [\@Link](./cj-macro-link.md), [\@Provide and \@Consume](./cj-macro-provide-and-consume.md)) can only observe changes in simple types. However, in actual application development, applications may use arrays or encapsulate their own data models based on development needs. For such cases, such as arrays, custom class types, or arrays of custom class types, changes in their member variables' properties cannot be observed. This leads to the introduction of the \@Observed macro and \@Publish macro.

The combination of \@Observed and \@Publish is used to observe property changes in class types, primarily to compensate for the limitation of other macros that can only observe one layer. Developers are advised to first read the basic usage of [\@State](./cj-macro-state.md) to understand the fundamental observation capabilities of macros before comparing and reading this document.

## Overview

The \@Observed macro and \@Publish class property macro are used for two-way data synchronization in scenarios involving custom class types or arrays:

- A class decorated with \@Observed indicates that internal property changes need to be observed.

- The state variable decorated with the \@Publish macro in a child component is used to receive an instance of the class decorated with \@Observed, establishing a two-way data binding with the corresponding state variable in the parent component. This instance can be an item in an array decorated with \@Observed or a property in a class, which also needs to be decorated with \@Observed.

## Macro Description

| \@Observed  | Description                                |
| :-------------- | :--------------------------------- |
| Macro Parameters          | None.                                 |
| Class Macro           | The class decorated with \@Observed must meet the following specifications:<br>1. Can only decorate Cangjie class types and must be placed before the class definition.<br>2. The decorated Cangjie class type is prohibited from inheriting other class extensions and interfaces during class definition. It is supported but not recommended to use extension methods to make the decorated class type implement interfaces.<br>3. Decorating open classes is prohibited, otherwise a compilation error will occur.<br>4. Custom constructors for the class decorated with \@Observed are prohibited. |

| \@Publish | Description                                       |
| :----------------- | :---------------------------------------- |
| Macro Parameters             | None.                                       |
| Allowed Variable Types         | Can only decorate member variables of Cangjie custom types, including simple types, arrays, and class types. It is recommended to use member variables of classes decorated with \@Observed, and the type and initial value must be specified. However, for String, Int64, Float64, and Bool types, if the variable's initial value is a literal of the above types, the type can be omitted.<br> Decorating static types (modified by the static modifier) is prohibited. See [Observing Changes](#observing-changes) for examples.|
| Initial Value of Decorated Variable         | No initial value; must be initialized from the parent component.                                     |

## Variable Passing/Access Rules

| \@Publish Passing/Access | Description                                       |
| :----------------- | :---------------------------------------- |
| Property Initialization           | Must be initialized from the parent component. If the class definition does not have default values, the constructor must be called when declaring the class variable to initialize each member variable that has not been initialized.<br/>Initializing a variable decorated with \@Publish must satisfy the following scenarios simultaneously:<br/>- The type must be a member variable of a Cangjie custom type, preferably a member variable of a class type decorated with \@Observed.<br/>- Variables decorated with \@Publish can only be declared with var, i.e., readable and writable.<br/>- Variables decorated with \@Publish must specify the type and initial value. For String, Int64, Float64, and Bool types, if the variable's initial value is a literal of the above types, the type can be omitted. |

## Observing Changes and Behavior

### Observing Changes

For a class decorated with \@Observed, if its members are non-simple types, such as classes or arrays, the class type needs to be decorated with \@Observed, and the array type is recommended to use ObservedArray or ObservedArrayList; otherwise, changes in their properties will not be observed.


```cangjie
class Child{
    var num: Int64 = 0

    init(num: Int64){
        this.num = num
    }
}

@Observed
class Parent{
    @Publish
    var child: Child
    @Publish
    var count: Int64
    @Publish
    var arr: Array<Int64>
}
```

In the above example, Parent is decorated with \@Observed, and changes in the assignment of its member variables decorated with \@Publish can be observed.

For child, since its type Child is not decorated with \@Observed and its properties are not decorated with the \@Publish attribute, changes in its properties cannot be observed. For the array arr, as a complex type, it is recommended to replace it with the ObservedArray type.


```cangjie
var parent: Parent = (child: Child(1), count: 1);

// Assignment changes can be observed
this.parent.child = new Child(5);
this.parent.count = 5;

// Child is not decorated with @Observed, so changes in its properties cannot be observed
this.parent.child.num = 5;
```

When \@Publish decorates a member variable of a class decorated with \@Observed, it is recommended to design a separate custom component to render each array or object. In this case, object arrays or nested objects (objects whose properties are objects are called nested objects) require two custom components: one to present the external array/object and another to present the class objects nested within the array/object. The following can be observed:

When the decorated object is DateTime, the overall assignment of DateTime can be observed, and its properties can be updated by calling DateTime's functions addDays(Int64), addHours(Int64), addMinutes(Int64), addMonths(Int64), addNanoseconds(Int64), addSeconds(Int64), addWeeks(Int64), addYears(Int64).

 <!-- run -->

```cangjie
package ohos_app_cangjie_entry

import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import std.time.DateTime

@Observed
class TimeClass{
    @Publish
    var time: DateTime
}

@Entry
@Component
class EntryView{

    @State
    var Time: TimeClass = TimeClass(time: DateTime.now())

    func build(){
        Flex(FlexParams(justifyContent: FlexAlign.Center, alignItems: ItemAlign.Center)){
            Column(){
                Text("Time: ${Time.time.format("HH:mm:ss")}").margin(10)
                Button("time update").onClick{
                    =>
                        Time.time = DateTime.now()
                }
                Button("time addHours by 2").onClick{
                    =>
                        Time.time = Time.time.addHours(2)
                }
                Button("time addMinutes by 31").onClick{
                    =>
                        Time.time = Time.time.addMinutes(31)
                }
                Button("add 31 seconds").onClick{
                    =>
                        Time.time = Time.time.addSeconds(31)
                }
            }
        }
    }
}
```

![img1](figures/observed_1_DateTime.gif)

### Framework Behavior

1. Initial Rendering:

   a. A class decorated with \@Observed automatically inherits ObservedObject, generates a constructor automatically, and creates setter and getter functions bound to triggering events on the class.

   b. In child components, variables decorated with \@Publish are initialized from the parent component, receiving instances of the class decorated with \@Observed. The wrapper class of \@Publish registers itself with the \@Observed class.

2. When properties decorated with \@Publish in a class decorated with \@Observed change:
   a. When a state variable is used, the get function in ObservedProperty is triggered, recording the component IDs related to the state variable, preparing for subsequent component modifications when the state variable changes.
   b. When a state variable is changed, the set function in ObservedProperty is triggered, then traverses the dependent component UIs, notifies data updates, and re-renders the UI based on the array of component IDs that need updating.

## Limitations

1. A class decorated with \@Observed cannot inherit other class extensions and interfaces during class definition, nor can it decorate an open class as the parent class of other classes; otherwise, a compilation error will occur.

2. A class decorated with \@Observed cannot define constructors. The class decorated with \@Observed automatically generates a constructor with named parameters.

3. The variable type decorated with \@Publish needs to be a member variable owned by a custom type, and if it is not a member variable of a class decorated with \@Observed, its content updates will not trigger UI updates.

4. \@Publish can only decorate member variables of Cangjie custom types declared with var, not let variables or static variables.

5. In a class decorated with \@Observed, member variables decorated with \@Publish must be initialized.

## Usage Scenarios

### Member Variables as Custom Types

 <!-- run -->

```cangjie
package ohos_app_cangjie_entry

import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*

@Observed
class Book{
    @Publish
    var name: String
}

@Observed
class Bag{
    @Publish
    var book: Book
}

@Entry
@Component
class EntryView{
    @State
    var bag: Bag = Bag(book: Book(name: "Cangjie"))

    func build(){
        Column{
            Text("Index: ${this.bag.book.name}")
            Button("change book.name").onClick{
                =>
                    this.bag.book.name = "ArkUI"
            }
        }
    }
}
```

In this example, after changes in nested class properties, UI update triggers can be observed. If a property in a class is also of a class type and needs to be monitored, that class must also be decorated with \@Observed.

## Common Issues

### \@Observed Decorated Class Cannot Define Constructors

When defining a class decorated with \@Observed, custom constructors cannot be defined; otherwise, a compilation error will occur. \@Observed will generate a constructor for the class, instantiating it through the class name and passing named parameters.

【Anti-pattern】


```cangjie

@Observed
class Info1{
  @Publish
  var count: Int64 = 0
  init(count: Int64){
      this.count = count
  }
}
```

【Correct Pattern】


```cangjie

@Observed
class Info2{
    @Publish
    var count: Int64 = 0
}

@Component
class Test{
    // When creating this class to set member variable values, named parameters must be specified.
    var info: Info2 = Info2(count: 5)

    func build(){
        Column{
            Text("info.count: ${info.count}")
        }
    }
}
```

### \@Publish Decorated Member Variable Does Not Trigger UI Updates

If changes in member variables of custom types need to be observed to trigger UI re-rendering, the variable decorated with \@Publish needs to be a member variable of a custom type, and this custom type needs to be decorated with \@Observed. Otherwise, if any condition is missing, its content updates will not trigger UI updates.


```cangjie
@Observed
class Info{
    var count: Int64 = 0
}

class Test{
    @Publish
    var msg: Int64 = 0

    init(msg: Int64){
        this.msg = msg
    }
}

@Component
class Page{
    // info.count is not decorated with @Publish, so content updates will not trigger UI updates
    @State var info: Info = Info(count: 5)
    // Test.msg is not decorated with @Observed, so content updates will not trigger UI updates
    @State var test: Test = Test(5)

    func build(){}
}
```

### Custom Type as Member Variable Changes Fail

【Anti-pattern】

The following example creates a Parent class containing a custom type Child.


```cangjie
package ohos_app_cangjie_entry

import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*

@Observed
class Parent{
    @Publish
    var parentId: Int64
    @Publish
    var child: Child
}

class Child{
    var childId: Int64=1
}

@Entry
@Component
class EntryView{
    @State
    var parent1: Parent = Parent(parentId: 0,child: Child())
    func build(){
        Column(10){
            Text("parentId: ${parent1.parentId}")
            Button("change parentId by 1").onClick{
                =>
                    parent1.parentId += 1
            }

            Text("childId: ${parent1.child.childId}")
            Button("change childId by 1").onClick{
                =>
                    parent1.child.childId += 1
            }
        }
    }
}
```

For `Text("parentId: ${parent1.parentId}")` and its corresponding Button's onClick event, executing `parent1.parentId += 1` increments the parentId value, which triggers UI refresh and allows observation of member variable changes.

In `Text("parentId: ${parent1.parentId}")` and its corresponding Button's onClick event, calling `parent1.child.childId += 1` increments the `parentId.child.childId` value. However, since the custom type `Child` is not decorated with `@Observed`, changes to member variables cannot be observed, and the UI will not refresh.

【Correct Example】

To directly observe member variable changes and ensure `parent1.child.childId += 1` triggers UI refresh, you can add `@Observed` to the `Child` class and decorate member variables with `@Publish`, indicating that changes to member variables of this custom type will trigger UI refresh.

 <!-- run -->

```cangjie
package ohos_app_cangjie_entry

import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*

@Observed
class Parent{
    @Publish
    var parentId: Int64
    @Publish
    var child: Child
}

@Observed
class Child{
    @Publish
    var childId: Int64
}


@Entry
@Component
class EntryView{
    @State
    var parent1: Parent = Parent(parentId: 0,child: Child(childId: 1))
    func build(){
        Column(10){
            Text("parentId: ${parent1.parentId}")
            Button("change parentId by 1").onClick{
                =>
                    parent1.parentId += 1
            }

            Text("childId: ${parent1.child.childId}")
            Button("change childId by 1").onClick{
                =>
                    parent1.child.childId += 1
            }
        }
    }
}
```