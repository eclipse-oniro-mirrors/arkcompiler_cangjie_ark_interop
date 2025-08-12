# Token-Related Types and Quote Expressions

## Token Type

The fundamental type for macro operations is `Tokens`, representing a code fragment. `Tokens` consists of multiple `Token` elements, where each `Token` can be understood as a user-operable lexical unit. A `Token` may be an identifier (e.g., variable names), literal (e.g., integers, floats, strings), keyword, or operator. Each `Token` contains its type, content, and positional information.

The type of a `Token` is an enum value from `TokenKind`. For available values of `TokenKind`, refer to the *Cangjie Programming Language Library API* documentation. By providing a `TokenKind` and its corresponding value (identifier or literal), any `Token` can be directly constructed. The specific constructors are as follows:

```cangjie
Token(k: TokenKind)
Token(k: TokenKind, v: String)
```

Below are some examples of `Token` construction:

<!-- compile -->

```cangjie
import std.ast.*

let tk1 = Token(TokenKind.ADD)   // '+' operator
let tk2 = Token(TokenKind.FUNC)   // func keyword
let tk3 = Token(TokenKind.IDENTIFIER, "x")   // x identifier
let tk4 = Token(TokenKind.INTEGER_LITERAL, "3")  // integer literal
let tk5 = Token(TokenKind.STRING_LITERAL, "xyz")  // string literal
```

## Tokens Type

A `Tokens` represents a sequence of multiple `Token` elements. `Tokens` can be constructed directly from an array of `Token`. Below are three basic ways to construct `Tokens` instances:

```cangjie
Tokens()   // construct an empty list
Tokens(tks: Array<Token>)
Tokens(tks: ArrayList<Token>)
```

Additionally, the `Tokens` type supports the following functionalities:

- `size`: Returns the number of `Token` elements in `Tokens`
- `get(index: Int64)`: Retrieves the `Token` element at the specified index
- `[]`: Retrieves the `Token` element at the specified index
- `+`: Concatenates two `Tokens` or directly concatenates `Tokens` with a `Token`
- `dump()`: Prints all contained `Token` elements for debugging purposes
- `toString()`: Prints the code fragment corresponding to `Tokens`

In the following example, constructors are used to directly create `Token` and `Tokens`, followed by printing detailed debugging information:

<!-- run -->

```cangjie
import std.ast.*

let tks = Tokens([
    Token(TokenKind.INTEGER_LITERAL, "1"),
    Token(TokenKind.ADD),
    Token(TokenKind.INTEGER_LITERAL, "2")
])
main() {
    println(tks)
    tks.dump()
}
```

The expected output is as follows (specific positional information may vary):

```text
1 + 2
description: integer_literal, token_id: 140, token_literal_value: 1, fileID: 1, line: 4, column: 5
description: add, token_id: 12, token_literal_value: +, fileID: 1, line: 5, column: 5
description: integer_literal, token_id: 140, token_literal_value: 2, fileID: 1, line: 6, column: 5
```

The dump information includes each `Token`'s type (`description`) and value (`token_literal_value`), followed by its positional information.

## Quote Expressions and Interpolation

In most cases, directly constructing and concatenating `Tokens` can be cumbersome. Therefore, the Cangjie language provides `quote` expressions to construct `Tokens` from code templates. These are called code templates because `$(...)` can be used within `quote` to interpolate expressions from the context. The interpolated expressions must be convertible to `Tokens` (specifically, they must implement the `ToTokens` interface). In the standard library, the following types implement `ToTokens`:

- All node types (nodes will be discussed in [Syntax Nodes](./syntax_node.md))
- `Token` and `Tokens` types
- All primitive data types: integers, floats, `Bool`, `Rune`, and `String`
- `Array<T>` and `ArrayList<T>`, where `T` has type restrictions and outputs different delimiters depending on its type. For details, refer to the *Cangjie Programming Language Library API* documentation.

The following example demonstrates interpolation with `Array` and primitive data types:

<!-- verify -->

```cangjie
import std.ast.*

let intList: Array<Int64> = [1, 2, 3, 4, 5]
let float: Float64 = 1.0
let str: String = "Hello"
let tokens = quote(
    arr = $(intList)
    x = $(float)
    s = $(str)
)

main() {
    println(tokens)
}
```

The output is:

```text
arr =[1, 2, 3, 4, 5]
x = 1.0
s = "Hello"
```

For more interpolation usage, refer to [Using Quote to Interpolate Syntax Nodes](./syntax_node.md#using-quote-to-interpolate-syntax-nodes).

Specifically, when a `quote` expression contains certain special `Token` elements, escaping is required:

- Unmatched parentheses are not allowed in `quote` expressions, but escaped parentheses (using `\`) are excluded from the matching rules.
- When `$` represents a regular `Token` rather than code interpolation, it must be escaped using `\`.
- Except for the above cases, any `\` in a `quote` expression will result in a compilation error.

> **Note:**
>
> The `#` symbol can only be used to construct multiline raw string literals and cannot be used alone.

Below are some examples of `quote` expressions containing these special `Token` elements:

<!-- compile.error -->

```cangjie
import std.ast.*

let tks1 = quote((x))       // ok
let tks2 = quote(\()        // ok
let tks3 = quote( ( \) ) )  // ok
let tks4 = quote())         // error: unmatched delimiter: ')'
let tks5 = quote( ( \) )    // error: unclosed delimiter: '('
let tks6 = quote(\$(1))     // ok
let tks7 = quote(\x)        // error: unknown start of token: \
let tks8 = quote(#)         // error: expected '#' or '"' in raw string
```