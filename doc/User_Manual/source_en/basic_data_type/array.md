# Array Types

## Array

The `Array` type can be used to construct an ordered sequence of data with a single element type.

In Cangjie, `Array<T>` is used to represent the Array type, where `T` denotes the element type of the Array. `T` can be any type.

<!-- compile.error -array_example -->

```cangjie
var a: Array<Int64> = [0, 0, 0, 0] // Array whose element type is Int64
var b: Array<String> = ["a1", "a2", "a3"] // Array whose element type is String
```

Arrays with different element types are considered distinct types and thus cannot be assigned to each other.

Therefore, the following example is invalid:

<!-- compile.error -array_example -->

```cangjie
b = a // Type mismatch
```

An Array can be easily initialized using literals by enclosing a comma-separated list of values within square brackets.

The compiler automatically infers the type of the Array literal based on the context.

<!-- compile -->

```cangjie
let a: Array<String> = [] // Created an empty Array whose element type is String
let b = [1, 2, 3, 3, 2, 1] // Created a Array whose element type is Int64, containing elements 1, 2, 3, 3, 2, 1
```

Alternatively, an Array with a specified element type can be constructed using a constructor. Here, `repeat` is a named parameter in the Array constructor.

Note that when initializing an Array with the `repeat` parameter, the constructor does not copy `repeat`. If `repeat` is a reference type, every element in the constructed array will point to the same reference.

<!-- compile -->

```cangjie
let a = Array<Int64>() // Created an empty Array whose element type is Int64
let c = Array<Int64>(3, repeat: 0) // Created an Array whose element type is Int64, length is 3 and all elements are initialized as 0
let d = Array<Int64>(3, {i => i + 1}) // Created an Array whose element type is Int64, length is 3 and all elements are initialized by the initialization function
```

In the example `let d = Array<Int64>(3, {i => i + 1})`, a [lambda expression](../function/lambda.md) is used as the initialization function to initialize each element in the array, i.e., `{i => i + 1}`.

### Accessing Array Members

To access all elements of an Array, a for-in loop can be used to iterate through them.

Arrays maintain the order of element insertion, so the traversal order is always consistent.

<!-- verify -->

```cangjie
main() {
    let arr = [0, 1, 2]
    for (i in arr) {
        println("The element is ${i}")
    }
}
```

Compiling and executing the above code will output:

```text
The element is 0
The element is 1
The element is 2
```

To determine the number of elements in an Array, the `size` property can be used.

<!-- verify -->

```cangjie
main() {
    let arr = [0, 1, 2]
    if (arr.size == 0) {
        println("This is an empty array")
    } else {
        println("The size of array is ${arr.size}")
    }
}
```

Compiling and executing the above code will output:

```text
The size of array is 3
```

To access a single element at a specific position, subscript syntax can be used (the subscript must be of type `Int64`). The first element of a non-empty Array always starts at position 0. Elements can be accessed from 0 up to the last position (Array's `size - 1`). Negative indices or indices greater than or equal to `size` are illegal. If the compiler detects an illegal index, it will report an error at compile time; otherwise, an exception will be thrown at runtime.

<!-- compile.error -->

```cangjie
main() {
    let arr = [0, 1, 2]
    let a = arr[0] // a == 0
    let b = arr[1] // b == 1
    let c = arr[-1] // array size is '3', but access index is '-1', which would overflow
}
```

To retrieve a segment of an Array, a `Range` type value can be passed to the subscript, allowing access to a contiguous subset of the Array.

<!-- compile -->

```cangjie
let arr1 = [0, 1, 2, 3, 4, 5, 6]
let arr2 = arr1[0..5] // arr2 contains the elements 0, 1, 2, 3, 4
```

When a `Range` literal is used in subscript syntax, the `start` or `end` can be omitted.

If `start` is omitted, the `Range` starts from 0; if `end` is omitted, the `Range` extends to the last element.

<!-- compile -->

```cangjie
let arr1 = [0, 1, 2, 3, 4, 5, 6]
let arr2 = arr1[..3] // arr2 contains elements 0, 1, 2
let arr3 = arr1[2..] // arr3 contains elements 2, 3, 4, 5, 6
```

### Modifying Arrays

An Array is a fixed-length [Collection type](../../source_en/collections/collection_overview.md), so it does not provide member functions for adding or removing elements.

However, Arrays allow modification of their elements using subscript syntax.

<!-- verify -->

```cangjie
main() {
    let arr = [0, 1, 2, 3, 4, 5]
    arr[0] = 3
    println("The first element is ${arr[0]}")
}
```

Compiling and executing the above code will output:

```text
The first element is 3
```

Although Arrays are of `struct` type, they internally hold references to elements. Therefore, when used as an expression, they do not create copies. All references to the same Array instance share the same element data.

Thus, modifying an Array element affects all references to that instance.

<!-- compile -->

```cangjie
let arr1 = [0, 1, 2]
let arr2 = arr1
arr2[0] = 3
// arr1 contains elements 3, 1, 2
// arr2 contains elements 3, 1, 2
```

## VArray

In addition to the reference-type Array, Cangjie introduces a value-type array `VArray<T, $N>`, where `T` represents the element type of the value-type array, and `$N` is a fixed syntax. It is denoted by `$` followed by an `Int64` numeric literal indicating the length of the value-type array. Note that `VArray<T, $N>` cannot omit `<T, $N>`, and when using type aliases, the `VArray` keyword and its generic parameters cannot be split.

Compared to frequently using reference-type Arrays, value-type VArrays reduce heap memory allocation and garbage collection pressure. However, due to the inherent copying behavior of value types during passing and assignment, additional performance overhead may occur. Therefore, it is not recommended to use `VArray` with large lengths in performance-sensitive scenarios. For characteristics of value types and reference types, refer to [Value Types and Reference Type Variables](../basic_programming_concepts/program_structure.md#value-types-and-reference-type-variables).

<!-- compile.error -->

```cangjie
type varr1 = VArray<Int64, $3> // OK
type varr2 = VArray // Error
```

> **Note:**
>
> Due to runtime backend limitations, the element type `T` of `VArray<T, $N>` or its members cannot currently contain reference types, enum types, lambda expressions (except `CFunc`), or uninstantiated generic types.

`VArray` can be initialized using an array literal, where the left-hand side `a` must specify the instantiated type of `VArray`:

<!-- compile -->

```cangjie
var a: VArray<Int64, $3> = [1, 2, 3]
```

Additionally, it has two constructors:

<!-- compile -->

```cangjie
// VArray<T, $N>(initElement: (Int64) -> T)
let b = VArray<Int64, $5>({ i => i }) // [0, 1, 2, 3, 4]
// VArray<T, $N>(repeat!: T)
let c = VArray<Int64, $5>(repeat: 0) // [0, 0, 0, 0, 0]
```

Furthermore, the `VArray<T, $N>` type provides two member methods:

- The `[]` operator method for subscript access and modification:

  <!-- compile -->

  ```cangjie
  var a: VArray<Int64, $3> = [1, 2, 3]
  let i = a[1] // i is 2
  a[2] = 4 // a is [1, 2, 4]
  ```

  The subscript must be of type `Int64`.

- The `size` member for obtaining the length of `VArray`:

  <!-- compile -->

  ```cangjie
  var a: VArray<Int64, $3> = [1, 2, 3]
  let s = a.size // s is 3
  ```

  The `size` property is of type `Int64`.

Additionally, `VArray` supports interoperability between Cangjie and C. For related details, refer to [Arrays](../FFI/cangjie-c.md#arrays).