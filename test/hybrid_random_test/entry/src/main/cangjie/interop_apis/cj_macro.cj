package ohos_app_cangjie_entry.interop_apis

import ohos.ark_interop.*
import ohos.ark_interop_macro.*

@Interop[ArkTS]
public func macroAdd(a: Float64, b: Float64): Float64 {
    a + b
}

@Interop[ArkTS]
public func macroGreet(name: String, times!: Int64): String {
    var r = ""
    var i: Int64 = 0
    while (i < times) {
        r = r + "Hello " + name + " "
        i = i + 1
    }
    r
}

@Interop[ArkTS, Async]
public func macroAsyncDouble(a: Float64): Float64 {
    a * 2.0
}

@Interop[ArkTS]
public interface IMacroCallback {
    func onResult(code: Float64, msg: String): Float64
}

@Interop[ArkTS]
public func macroWithCallback(cb: IMacroCallback, seed: Float64): Float64 {
    cb.onResult(seed, "from-cj")
}

@Interop[ArkTS]
public class MacroCounter {
    public var count: Float64 = 0.0
    @Interop[ArkTS, Invisible]
    public var hiddenField: Float64 = -1.0
    public init(initial: Float64) {
        count = initial
    }
    public func inc(): Float64 {
        count = count + 1.0
        count
    }
    public func get(): Float64 {
        count
    }
    public func add(n: Float64): Float64 {
        count = count + n
        count
    }
    @Interop[ArkTS, Invisible]
    public func hiddenMethod(): Float64 {
        -2.0
    }
}

@Interop[ArkTS]
public func macroColorToCode(color: Int64): Float64 {
    if (color == 0) {
        1.0
    } else if (color == 1) {
        2.0
    } else {
        3.0
    }
}

@Interop[ArkTS]
public func macroEchoUtf16(s: String): String {
    s
}

@Interop[ArkTS]
public enum MacroColor {
    Red | Green | Blue
}

@Interop[ArkTS]
public func macroColorByName(name: String): Int64 {
    if (name == "Red") {
        0
    } else if (name == "Green") {
        1
    } else {
        2
    }
}
