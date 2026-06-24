import Foundation

var pass = 0
var fail = 0

func check(_ cond: Bool, _ name: String) {
    if cond { pass += 1; print("PASS \(name)") }
    else { fail += 1; print("FAIL \(name)") }
}

struct A {
    var field: Double = 0
    func method() {}
}

protocol I {
    var name: String { get }
    func run()
}

func testMirrorKeyofStruct() {
    let a = A()
    let names = Mirror(reflecting: a).children.compactMap { $0.label }
    check(names.contains("field"), "swift Mirror field")
    // Swift Mirror does not include methods
    check(!names.contains("method"), "swift Mirror does not include methods")
}

func testNoCompileTimeKeyof() {
    check(true, "swift has no compile-time keyof N/A")
}

func testEmptyStructKeys() {
    struct Empty {}
    let e = Empty()
    let names = Mirror(reflecting: e).children.compactMap { $0.label }
    check(names.isEmpty, "swift empty struct mirror empty")
}

testMirrorKeyofStruct()
testNoCompileTimeKeyof()
testEmptyStructKeys()

print("SUMMARY pass=\(pass) fail=\(fail)")
if fail != 0 { exit(1) }
