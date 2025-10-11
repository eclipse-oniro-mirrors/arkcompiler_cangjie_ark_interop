# Visibility of Top-Level Declarations

In the Cangjie programming language, access modifiers can be used to control the visibility of top-level declarations such as types, variables, and functions. Cangjie provides four access modifiers: `private`, `internal`, `protected`, and `public`. The semantics of these modifiers when applied to top-level elements are as follows:

- `private`: Visible only within the current file. Members with this modifier cannot be accessed from different files.
- `internal`: Visible only within the current package and its subpackages (including nested subpackages). Members can be accessed without import within the same package, while subpackages (including nested subpackages) can access these members through imports.
- `protected`: Visible only within the current module. Members can be accessed without import within files of the same package, other packages within the same module can access these members through imports, but packages from different modules cannot access them.
- `public`: Visible both inside and outside the module. Members can be accessed without import within the same package, while other packages can access these members through imports.

| Modifier      | File | Package & Subpackages | Module | All Packages |
|--------------|------|-----------------------|--------|--------------|
| `private`    | Y    | N                     | N      | N            |
| `internal`   | Y    | Y                     | N      | N            |
| `protected`  | Y    | Y                     | Y      | N            |
| `public`     | Y    | Y                     | Y      | Y            |

The supported access modifiers and default modifiers (default modifiers refer to the semantics when the modifier is omitted; these default modifiers can also be explicitly written) for different top-level declarations are as follows:

- `package`: Supports `internal`, `protected`, and `public`, with `public` as the default modifier.
- `import`: Supports all access modifiers, with `private` as the default modifier.
- Other top-level declarations support all access modifiers, with `internal` as the default modifier.

<!-- compile -->

```cangjie
package a

private func f1() { 1 }   // f1 is visible only within the current file
func f2() { 2 }           // f2 is visible only within the current package and subpackages
protected func f3() { 3 } // f3 is visible only within the current module
public func f4() { 4 }    // f4 is visible both inside and outside the module
```

The access level hierarchy in Cangjie is `public > protected > internal > private`. The access modifier of a declaration cannot be higher than the access level of the types used in that declaration. Refer to the following examples:

- Parameters and return values in function declarations

    <!-- compile.error -->

    ```cangjie
    // a.cj
    package a
    class C {}
    public func f1(a1: C) // Error, public declaration f1 cannot use internal type C.
    {
        return 0
    }
    public func f2(a1: Int8): C // Error, public declaration f2 cannot use internal type C.
    {
        return C()
    }
    public func f3 (a1: Int8) // Error, public declaration f3 cannot use internal type C.
    {
        return C()
    }
    ```

- Variable declarations

    <!-- compile.error -->

    ```cangjie
    // a.cj
    package a
    class C {}
    public let v1: C = C() // Error, public declaration v1 cannot use internal type C.
    public let v2 = C() // Error, public declaration v2 cannot use internal type C.
    ```

- Type arguments for generic types

    <!-- compile.error -->

    ```cangjie
    // a.cj
    package a
    public class C1<T> {}
    class C2 {}
    public let v1 = C1<C2>() // Error, public declaration v1 cannot use internal type C2.
    ```

- Type bounds in `where` constraints

    <!-- compile.error -->

    ```cangjie
    // a.cj
    package a
    interface I {}
    public class B<T> where T <: I {}  // Error, public declaration B cannot use internal type I.
    ```

Notably:

- `public` declarations can use any types visible within their package in their initialization expressions or function bodies, including types marked as `public` and those not marked as `public`.

    <!-- compile -->

    ```cangjie
    // a.cj
    package a
    class C1 {}
    func f1(a1: C1)
    {
      return 0
    }
    public func f2(a1: Int8) // OK.
    {
      var v1 = C1()
      return 0
    }
    public let v1 = f1(C1()) // OK.
    public class C2 // OK.
    {
      var v2 = C1()
    }
    ```

- `public` top-level declarations can use anonymous functions or any top-level functions, including those marked as `public` and those not marked as `public`.

    <!-- compile -toplevel-->

    ```cangjie
    public var t1: () -> Unit = { => } // OK.
    func f1(): Unit {}
    public let t2 = f1 // OK.

    public func f2() // OK.
    {
      return f1
    }
    ```

- Built-in types such as `Rune` and `Int64` have `public` as their default modifier.

    <!-- compile -toplevel-->

    ```cangjie
    var num = 5
    public var t3 = num // OK.
    ```