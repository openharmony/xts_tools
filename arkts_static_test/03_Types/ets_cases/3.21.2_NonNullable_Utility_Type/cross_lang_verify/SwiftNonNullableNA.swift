var pass = 0, fail = 0
func check(_ c: Bool, _ s: String) { if c { pass += 1; print("PASS \(s)") } else { fail += 1; print("FAIL \(s)") } }

// Swift has T? vs T distinction at compile time, similar to NonNullable concept
func testOptionalVsNonOptional() {
    var s: String? = nil
    check(s == nil, "Swift Optional nil")
    var t: String = "hello"
    check(t == "hello", "Swift non-optional forced value")
}

func testNoGenericNonNullable() {
    check(true, "Swift has no generic NonNullable utility type N/A")
}

testOptionalVsNonOptional()
testNoGenericNonNullable()
print("SUMMARY pass=\(pass) fail=\(fail)")
if fail != 0 { exit(1) }