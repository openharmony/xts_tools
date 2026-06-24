// 001: Null literal - Swift uses nil for Optional types
let x001: String? = nil
let y001: String? = nil
print("TYP_03_12_001 verified: x=\(x001 ?? "nil"), y=\(y001 ?? "nil")")

// 002: Nullable int - Swift uses Int? (Optional)
var x002: Int? = nil
x002 = 42
x002 = nil
var y002: Int? = 100
y002 = nil
print("TYP_03_12_002 verified: x=\(x002 ?? -1), y=\(y002 ?? -1)")

// 003: Nullable String
var s003: String? = nil
s003 = "hello"
s003 = nil
print("TYP_03_12_003 verified: s=\(s003 ?? "nil")")

// 004: Nullable Object - Swift uses AnyObject?
class MyClass004 {}
var o004: AnyObject? = nil
o004 = MyClass004()
o004 = nil
print("TYP_03_12_004 verified: o=\(o004 == nil ? "nil" : "object")")

// 005: Triple union - Swift has no T|null|undefined; uses Any?
var x005: Any? = nil
x005 = 1
x005 = nil
print("TYP_03_12_005 verified: x=\(x005 ?? "nil" as Any)")

// 006: Function returning nil
func maybeNull(v: Int) -> String? {
    if v > 0 {
        return "positive"
    }
    return nil
}
let r006a: String? = maybeNull(v: 1)
let r006b: String? = maybeNull(v: -1)
print("TYP_03_12_006 verified: r1=\(r006a ?? "nil"), r2=\(r006b ?? "nil")")

// 007: Function parameter with nil
func acceptNullable(p: String?) -> Int {
    if p == nil { return -1 }
    return p!.count
}
let _007a = acceptNullable(p: nil)
let _007b = acceptNullable(p: "hello")
print("TYP_03_12_007 verified: \(_007a), \(_007b)")

// 008: Nil in switch - Swift uses case nil for Optional
func classifyValue(_ v: String?) -> String {
    switch v {
    case nil: return "is_nil"
    case "": return "is_empty"
    default: return "is_string"
    }
}
let r008a = classifyValue(nil)
let r008b = classifyValue("")
let r008c = classifyValue("hello")
print("TYP_03_12_008 verified: \(r008a), \(r008b), \(r008c)")

// 009: Nil assigned to Any - Swift: Any? can hold nil
var a009: Any? = nil
a009 = nil
a009 = 42
print("TYP_03_12_009 verified: a=\(a009 ?? "nil" as Any)")

// 013 DIFFERENCE: Swift does NOT allow nil for non-Optional types
// let n013: Int = nil      // compile error
// let s013: String = nil   // compile error
// Swift matches ArkTS behavior here (compile error for nil on non-optional)
// But Java allows nil for reference types (key difference)
print("TYP_03_12_013 DIFFERENCE: Swift does not allow nil for non-Optional types (matches ArkTS)")

// 016 DIFFERENCE: Swift requires unwrapping Optional before assigning to non-Optional
// let o016: AnyObject = Optional<AnyObject>.none  // compile error
// Swift matches ArkTS: cannot assign nil/Optional to non-Optional
print("TYP_03_12_016 DIFFERENCE: Swift requires unwrapping (matches ArkTS nullish incompatibility)")

// 022 RUNTIME: Nil type narrowing
func safeLength(_ s: String?) -> Int {
    if s == nil { return -1 }
    return s!.count
}
let r022a = safeLength(nil)
if r022a != -1 { fatalError("null input should return -1, got \(r022a)") }
let r022b = safeLength("hello")
if r022b != 5 { fatalError("'hello' length should be 5, got \(r022b)") }
let r022c = safeLength("")
if r022c != 0 { fatalError("'' length should be 0, got \(r022c)") }
print("TYP_03_12_022 verified")

// 025 RUNTIME: Nil in conditional (Swift uses if-let / switch nil)
func classify025(_ v: String?) -> String {
    if v == nil { return "is_nil" }
    switch v! {
    case "": return "is_empty"
    default: return "is_string"
    }
}
let r025a = classify025(nil)
if r025a != "is_nil" { fatalError("expected is_nil, got \(r025a)") }
let r025b = classify025("")
if r025b != "is_empty" { fatalError("expected is_empty, got \(r025b)") }
let r025c = classify025("hello")
if r025c != "is_string" { fatalError("expected is_string, got \(r025c)") }
print("TYP_03_12_025 verified")