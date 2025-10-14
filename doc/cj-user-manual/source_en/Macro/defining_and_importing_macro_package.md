# Macro Package Definition and Import

In the Cangjie language, macro definitions must be placed within a package declared with `macro package`. A package constrained by `macro package` only allows macro definitions to be externally visible, while other declarations remain package-private.

> **Note:**
>
> Re-exported declarations are also permitted to be externally visible. For concepts related to package management and re-exporting, please refer to the [Package Import](../package/import.md) chapter.

<!-- compile.error -macro4 -->
<!-- cfg="--compile-macro" -->

```cangjie
// file define.cj
macro package define         // Compiling define.cjo with macro attribute
import std.ast.*

public func A() {}          // Error: Macro packages prohibit non-macro definitions from being externally visible. This will raise an error.

public macro M(input: Tokens): Tokens { // macro M is externally visible
    return input
}
```

It is important to note that within a macro package, declarations from other macro packages and non-macro packages can be re-exported. In non-macro packages, only declarations from non-macro packages can be re-exported.

Refer to the following examples:

- Define macro `M1` in macro package A

  <!-- compile -macro5 -->
  <!-- cfg="--compile-macro" -->

  ```cangjie
  macro package A
  import std.ast.*

  public macro M1(input: Tokens): Tokens {
      return input
  }
  ```

  Compilation command:

  ```shell
  cjc A.cj --compile-macro
  ```

- Define a public function `f1` in non-macro package B. Note that symbols from `macro package` cannot be re-exported in a non-`macro package`.

  <!-- compile -macro5 -->
  <!-- cfg="--output-type=dylib -o libB.so" -->

  ```cangjie
  package B
  // public import A.* // Error: Re-exporting a macro package in a regular package is not allowed.

  public func f1(input: Int64): Int64 {
      return input
  }
  ```

  Compilation command (here we use the `--output-type` option to compile package B into a dynamic library. For details about cjc compilation options, refer to the "Appendix > cjc Compilation Options" chapter):

  ```shell
  cjc B.cj --output-type=dylib -o libB.so
  ```

- Define macro `M2` in macro package C, which depends on contents from packages A and B. Note that a `macro package` can re-export symbols from both `macro package` and non-`macro package`.

  <!-- compile -macro5 -->
  <!-- cfg="--compile-macro -L. -lB" -->

  ```cangjie
  macro package C
  public import A.* // Correct: Macro packages allow re-exporting within a macro package.
  public import B.* // Correct: Non-macro packages are also allowed to be re-exported within a macro package.
  import std.ast.*

  public macro M2(input: Tokens): Tokens {
      return @M1(input) + Token(TokenKind.NL) + quote(f1(1))
  }
  ```

  Compilation command (note that explicit linking of package B's dynamic library is required here):

  ```bash
  cjc C.cj --compile-macro -L. -lB
  ```

- Use macro `M2` in `main.cj`

  <!-- compile -macro5 -->
  <!-- cfg="--debug-macro -L. -lB" -->

  ```cangjie
  import C.*

  main() {
      @M2(let a = 1)
  }
  ```

  Compilation command:

  ```cangjie
  cjc main.cj -o main -L. -lB
  ```

  The expanded result of macro `M2` in `main.cj` is as follows:

  ```bash
  import C.*

  main() {
      let a = 1
      f1(1)
  }
  ```

Observe that the symbol `f1` from package B appears in `main.cj`. Macro authors can re-export symbols from package B within package C, enabling macro users to correctly compile macro-expanded code by simply importing the macro package. If `main.cj` only imports the macro symbol using `import C.M2`, it will result in an `undeclared identifier 'f1'` error message.