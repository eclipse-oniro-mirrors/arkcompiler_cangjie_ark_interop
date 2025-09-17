# Access Rules

## Extension Modifiers

Extensions themselves cannot be modified with modifiers.

For example, in the following example, using the `public` modifier before directly extending `A` will result in a compilation error.

<!-- compile.error -->

```cangjie
public class A {}

public extend A {}  // Error, expected no modifier before extend
```

Modifiers that can be used for extension members include: `static`, `public`, `protected`, `internal`, `private`, `mut`.

- Members modified with `private` can only be used within the extension and are not visible externally.
- Members modified with `internal` can be used within the current package and its sub-packages (including sub-packages of sub-packages), which is the default behavior.
- Members modified with `protected` can be accessed within the module (subject to export rules). When the extended type is a class, the class's subclasses can also access these members.
- Members modified with `static` can only be accessed via the type name, not through instance objects.
- Extensions for `struct` types can define `mut` functions.

<!-- compile -->

```cangjie
package p1

public open class A {}

extend A {
    public func f1() {}
    protected func f2() {}
    private func f3() {}
    static func f4() {}
}

main() {
    A.f4()
    var a = A()
    a.f1()
    a.f2()
}
```

Member definitions within extensions do not support the use of `open`, `override`, or `redef` modifiers.

<!-- compile.error -->

```cangjie
class Foo {
    public open func f() {}
    static func h() {}
}

extend Foo {
    public override func f() {} // Error
    public open func g() {} // Error
    redef static func h() {} // Error
}
```

## Orphan Rule for Extensions

Implementing an interface from another `package` for a type in a different `package` can cause confusion.

To prevent a type from accidentally implementing an inappropriate interface, Cangjie does not allow orphan extensions—extensions that are neither in the same package as the interface (including all interfaces in the interface inheritance chain) nor in the same package as the extended type.

As shown in the following code, it is not allowed to implement the `Bar` interface from `package b` for the `Foo` type from `package a` within `package c`.

This can only be done in `package a` or `package b`.

<!-- compile.error -->

```cangjie
// package a
public class Foo {}

// package b
public interface Bar {}

// package c
import a.Foo
import b.Bar

extend Foo <: Bar {} // Error
```

## Access and Shadowing in Extensions

Instance members in extensions can use `this` just like in type definitions, with the same functionality. `this` can also be omitted when accessing members. Instance members in extensions cannot use `super`.

<!-- compile -->

```cangjie
class A {
    var v = 0
}

extend A {
    func f() {
        print(this.v) // OK
        print(v) // OK
    }
}
```

Extensions cannot access members modified with `private` in the extended type.

<!-- compile.error -->

```cangjie
class A {
    private var v1 = 0
    protected var v2 = 0
}

extend A {
    func f() {
        print(v1) // Error
        print(v2) // OK
    }
}
```

Extensions cannot shadow any members of the extended type.

<!-- compile.error -->

```cangjie
class A {
    func f() {}
}

extend A {
    func f() {} // Error
}
```

Extensions are also not allowed to shadow any members added by other extensions.

<!-- compile.error -->

```cangjie
class A {}

extend A {
    func f() {}
}

extend A {
    func f() {} // Error
}
```

Within the same package, a type can be extended multiple times, and within an extension, non-`private` functions from other extensions of the extended type can be directly called.

<!-- compile.error -->

```cangjie
class Foo {}

extend Foo { // OK
    private func f() {}
    func g() {}
}

extend Foo { // OK
    func h() {
        g() // OK
        f() // Error
    }
}
```

When extending a generic type, additional generic constraints can be used. The visibility rules between any two extensions of a generic type are as follows:

- If two extensions have the same constraints, they are mutually visible, meaning functions or properties from one extension can be directly used in the other.
- If two extensions have different constraints, and one constraint is a superset of the other, the extension with the looser constraint is visible to the extension with the stricter constraint, but not vice versa.
- If two extensions have different constraints that are not subsets of each other, they are mutually invisible.

Example: Suppose two extensions for the same type `E<X>` are Extension 1 and Extension 2. If the constraint for `X` in Extension 1 is stricter than in Extension 2, then functions and properties in Extension 1 are invisible to Extension 2, while those in Extension 2 are visible to Extension 1.

<!-- compile.error -->

```cangjie
open class A {}
class B <: A {}
class E<X> {}

interface I1 {
    func f1(): Unit
}
interface I2 {
    func f2(): Unit
}

extend<X> E<X> <: I1 where X <: B {  // extension 1
    public func f1(): Unit {
        f2() // OK
    }
}

extend<X> E<X> <: I2 where X <: A   { // extension 2
    public func f2(): Unit {
        f1() // Error
    }
}
```

## Import and Export of Extensions

Extensions can also be imported and exported, but extensions themselves cannot be modified with visibility modifiers. The export of extensions follows special rules.

For direct extensions, when the extension is in the same package as the extended type, whether the extension is exported depends on the access modifiers of the extended type and its generic constraints (if any). If all generic constraints are exported types (as defined in the [Top-Level Declaration Visibility](../package/toplevel_access.md) chapter), the extension will be exported. If the extension is not in the same package as the extended type, it will not be exported.

As shown in the following code, `Foo` is exported. The extension containing the `f1` function is not exported because its generic constraint is not exported. The extensions containing `f2` and `f3` are exported because their generic constraints are exported. The extension containing `f4` has multiple generic constraints, and since `I1` is not exported, the extension is not exported. The extension containing `f5` has multiple generic constraints, all of which are exported, so it is exported.

```cangjie
// package a.b
package a.b

private interface I1 {}
internal interface I2 {}
protected interface I3 {}

extend Int64 <: I1 & I2 & I3 {}

public class Foo<T> {}
// The extension will not be exported
extend<T> Foo<T> where T <: I1 {
    public func f1() {}
}
// The extension will be exported, and only packages that import both Foo and I2 will be able to access it.
extend<T> Foo<T> where T <: I2 {
    public func f2() {}
}
// The extension will be exported, and only packages that import both Foo and I3 will be able to access it.
extend<T> Foo<T> where T <: I3 {
    public func f3() {}
}
// The extension will not be exported. The I1 with the lowest access level determines the export.
extend<T> Foo<T> where T <: I1 & I2 & I3 {
    public func f4() {}
}
// The extension is exported. Only the package that imports Foo, I2, and I3 can access the extension.
extend<T> Foo<T> where T <: I2 & I3 {
    public func f5() {}
}

// package a.c
package a.c
import a.b.*

main() {
    Foo<Int64>().f1() // Cannot access.
    Foo<Int64>().f2() // Cannot access. Visible only for sub-pkg.
    Foo<Int64>().f3() // OK.
    Foo<Int64>().f4() // Cannot access.
    Foo<Int64>().f5() // Cannot access. Visible only for sub-pkg.
}

// package a.b.d
package a.b.d
import a.b.*

main() {
    Foo<Int64>().f1() // Cannot access.
    Foo<Int64>().f2() // OK.
    Foo<Int64>().f3() // OK.
    Foo<Int64>().f4() // Cannot access.
    Foo<Int64>().f5() // OK.
}
```

For interface extensions, there are two scenarios:

1. When the interface extension is in the same `package` as the extended type, the extension will be exported along with the extended type and its generic constraints (if any), regardless of the interface's access level. Packages outside do not need to import the interface type to access the extension's members.
2. When the interface extension is in a different `package` from the extended type, whether the extension is exported depends on the lowest access level among the interface type and its generic constraints (if any). Other packages must import the extended type, the relevant interface, and any constraint types (if any) to access the extension's members.

As shown in the following code, in `package a`, even though the interface modifier is `private`, the extension for `Foo` will still be exported.

```cangjie
// package a
package a

private interface I0 {}

public class Foo<T> {}

// The extension is exported.
extend<T> Foo<T> <: I0 {}
```

When extending the `Foo` type in another package, whether the extension is exported depends on the access modifiers of the implemented interface and its generic constraints. The extension will be exported if at least one implemented interface is exported and all generic constraints are exportable.

```cangjie
// package b
package b

import a.Foo

private interface I1 {}
internal interface I2 {}
protected interface I3 {}
public interface I4 {}

// The extension will not be exported because I1 is not visible outside the file.
extend<T> Foo<T> <: I1 {}

// The extension is exported.
extend<T> Foo<T> <: I2 {}

// The extension is exported.
extend<T> Foo<T> <: I3 {}

// The extension is exported
extend<T> Foo<T> <: I1 & I2 & I3 {}

// The extension will not be exported. The I1 with the lowest access level determines the export.
extend<T> Foo<T> <: I4 where T <: I1 & I2 & I3 {}

// The extension is exported.
extend<T> Foo<T> <: I4 where T <: I2 & I3 {}

// The extension is exported.
extend<T> Foo<T> <: I4 & I3 where T <: I2 {}
```

Notably, the exported members of an interface extension are limited to those defined in the interface.

<!-- compile.error -access_rules3 -->
<!-- cfg="-p a --output-type=staticlib" -->

```cangjie
// package a
package a

public class Foo {}
```

<!-- compile.error -access_rules3 -->
<!-- cfg="-p b --output-type=staticlib" -->

```cangjie
// package b
package b

import a.Foo

public interface I1 {
    func f1(): Unit
}

public interface I2 {
    func f2(): Unit
}

extend Foo <: I1 & I2 {
    public func f1(): Unit {}
    public func f2(): Unit {}
    public func f3(): Unit {} // f3 will not be exported
}
```

<!-- compile.error -access_rules3 -->
<!-- cfg="-p c --output-type=staticlib" -->
<!-- cfg="liba.a libb.a" -->

```cangjie
// package c
package c

import a.Foo
import b.I1

main() {
    let x: Foo = Foo()
    x.f1() // OK, because f1 is a member of I1.
    x.f2() // error, I2 is not imported
    x.f3() // error, f3 not found
}
```

Similar to the export of extensions, importing extensions does not require explicit `import` statements. Importing the extended type, interface, and generic constraints automatically imports all accessible extensions.

As shown in the following code, in `package b`, importing `Foo` alone allows the use of the `f` function from its corresponding extension.

For interface extensions, importing the extended type, the interface, and any generic constraints (if any) is required to use the extension. Thus, in `package c`, importing both `Foo` and `I` is necessary to use the `g` function from the corresponding extension.

<!-- run -access_rules4 -->
<!-- cfg="-p a --output-type=staticlib" -->

```cangjie
// package a
package a
public class Foo {}
extend Foo {
    public func f() {}
}
```

<!-- run -access_rules4 -->
<!-- cfg="-p b --output-type=staticlib liba.a" -->

```cangjie
// package b
package b
import a.Foo

public interface I {
    func g(): Unit
}
extend Foo <: I {
    public func g() {
        this.f() // OK
    }
}
```

<!-- run -access_rules4 -->
<!-- cfg="liba.a libb.a" -->

```cangjie
// package c
package c
import a.Foo
import b.I

func test() {
    let a = Foo()
    a.f() // OK
    a.g() // OK
}
```