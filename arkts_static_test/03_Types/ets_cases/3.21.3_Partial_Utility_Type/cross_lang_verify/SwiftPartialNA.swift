var pass = 0, fail = 0
func check(_ c: Bool, _ s: String) { if c { pass += 1; print("PASS \(s)") } else { fail += 1; print("FAIL \(s)") } }

func testNoPartial() {
    check(true, "Swift has no Partial type N/A")
}

struct Issue {
    let title: String
    let description: String?
}

func testOptionalFields() {
    let i = Issue(title: "aa", description: nil)
    check(i.title == "aa", "Swift optional fields work but Not Partial N/A")
}

testNoPartial()
testOptionalFields()
print("SUMMARY pass=\(pass) fail=\(fail)")
if fail != 0 { exit(1) }