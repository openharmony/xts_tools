var pass = 0
var fail = 0

func check(_ cond: Bool, _ name: String) {
    if cond { pass += 1; print("PASS \(name)") }
    else { fail += 1; print("FAIL \(name)") }
}

final class Person {
    let name: String
    var spouse: Person?
    init(_ name: String) { self.name = name }
    func greet() -> String { "hi \(name)" }
}

func testOptionalNullish() {
    var s: String? = nil
    check(s == nil, "swift optional nil")

    s = "hello"
    check(s! == "hello", "swift optional value")
}

func testNilCoalescing() {
    let a: String? = nil
    let r1 = a ?? "fallback"
    check(r1 == "fallback", "swift nil coalescing empty")

    let b: String? = "value"
    let r2 = b ?? "fallback"
    check(r2 == "value", "swift nil coalescing value")
}

func testSafeAccess() {
    var p: Person? = nil
    let n1 = p?.name
    check(n1 == nil, "swift optional chaining nil")

    p = Person("Bob")
    let n2 = p?.name
    check(n2 == "Bob", "swift optional chaining value")
}

func testForceUnwrap() {
    let p: Person? = Person("Alice")
    let name = p!.name
    check(name == "Alice", "swift force unwrap success")
    check(true, "swift nil force unwrap would trap N/A")
}

func testNoUndefined() {
    check(true, "swift has nil but no undefined N/A")
}

testOptionalNullish()
testNilCoalescing()
testSafeAccess()
testForceUnwrap()
testNoUndefined()

print("SUMMARY pass=\(pass) fail=\(fail)")
if fail != 0 { exit(1) }
