# Generic Structs

Generic structs are similar to generic classes. Below is an example of using a struct to define a binary tuple-like type:

<!-- verify -->

```cangjie
struct Pair<T, U> {
    let x: T
    let y: U
    public init(a: T, b: U) {
        x = a
        y = b
    }
    public func first(): T {
        return x
    }
    public func second(): U {
        return y
    }
}

main() {
    var a: Pair<String, Int64> = Pair<String, Int64>("hello", 0)
    println(a.first())
    println(a.second())
}
```

The program output is:

```text
hello
0
```

The `Pair` struct provides two functions `first` and `second` to retrieve the first and second elements of the tuple respectively.