var pass = 0
var fail = 0

func check(_ cond: Bool, _ name: String) {
    if cond {
        pass += 1
        print("PASS \(name)")
    } else {
        fail += 1
        print("FAIL \(name)")
    }
}

protocol Shape {
    func area() -> Int
}

struct Square: Shape {
    let side: Int
    func area() -> Int { side * side }
}

struct Circle: Shape {
    let radius: Int
    func area() -> Int { 3 * radius * radius }
}

func testCommonMethodViaProtocol() {
    let s1: any Shape = Square(side: 4)
    let s2: any Shape = Circle(radius: 3)
    check(s1.area() == 16, "swift common protocol method square")
    check(s2.area() == 27, "swift common protocol method circle")
}

struct AField {
    var n: Double = 1.0
    var s: String = "aa"
    func foo() {}
}

struct BField {
    var n: Double = 2.0
    var s: Double = 3.14
    func foo() {}
}

enum ABValue {
    case a(AField)
    case b(BField)
}

func testCommonFieldRequiresSwitch() {
    let u = ABValue.a(AField())
    switch u {
    case .a(let a):
        check(a.n == 1.0, "swift common field via switch")
        check(a.s == "aa", "swift different field type only after switch")
    case .b:
        check(false, "swift common field switch branch")
    }
}

func testMissingMemberCompileAnalogy() {
    check(true, "swift missing member requires switch/protocol N/A")
}

func testStaticMemberCompileAnalogy() {
    check(true, "swift static member via union N/A")
}

testCommonMethodViaProtocol()
testCommonFieldRequiresSwitch()
testMissingMemberCompileAnalogy()
testStaticMemberCompileAnalogy()

print("SUMMARY pass=\(pass) fail=\(fail)")
if fail != 0 {
    exit(1)
}
