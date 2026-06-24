var pass = 0
var fail = 0

func check(_ cond: Bool, _ name: String) {
    if cond { pass += 1; print("PASS \(name)") }
    else { fail += 1; print("FAIL \(name)") }
}

// Swift has async/await but no compile-time Awaited equivalent
func testNoCompileTimeAwaited() {
    check(true, "Swift has no compile-time Awaited N/A")
}

func testSwiftAwait() {
    // Runtime only: await expression
    check(true, "Swift await is runtime only N/A")
}

testNoCompileTimeAwaited()
testSwiftAwait()

print("SUMMARY pass=\(pass) fail=\(fail)")
if fail != 0 { exit(1) }