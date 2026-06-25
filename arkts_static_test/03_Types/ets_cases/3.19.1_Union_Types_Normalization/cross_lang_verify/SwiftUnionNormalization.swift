/*
* Copyright (c) 2021-2026 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
*/
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

enum UnionValue {
    case int(Int)
    case string(String)
    case bool(Bool)
}

func testNestedUnionEquivalent() {
    let v1 = UnionValue.int(1)
    let v2 = UnionValue.string("x")
    let v3 = UnionValue.bool(true)

    if case .int(let n) = v1 {
        check(n == 1, "swift union int variant")
    } else { check(false, "swift union int variant") }

    if case .string(let s) = v2 {
        check(s == "x", "swift union string variant")
    } else { check(false, "swift union string variant") }

    if case .bool(let b) = v3 {
        check(b == true, "swift union bool variant")
    } else { check(false, "swift union bool variant") }
}

func testStringLiteralAbsorbEquivalent() {
    let literal = "a"
    let general = "not literal"
    check(type(of: literal) == String.self, "swift string literal is String")
    check(type(of: general) == String.self, "swift general string is String")
}

func testNeverEquivalent() {
    check(true, "swift Never exists but no union normalization N/A")
}

func testReadonlyUnionEquivalent() {
    let mutable = [1.0, 2.0]
    let immutable = mutable
    check(immutable[0] == 1.0, "swift immutable array read")
    check(true, "swift mutability controlled by let/var, no readonly union N/A")
}

func testBaseDerivedNoNormalizationEquivalent() {
    class Base {}
    class Derived: Base {}
    let b: Base = Base()
    let d: Base = Derived()
    check(b is Base, "swift base instance")
    check(d is Base, "swift derived as base instance")
}

testNestedUnionEquivalent()
testStringLiteralAbsorbEquivalent()
testNeverEquivalent()
testReadonlyUnionEquivalent()
testBaseDerivedNoNormalizationEquivalent()

print("SUMMARY pass=\(pass) fail=\(fail)")
if fail != 0 {
    exit(1)
}
