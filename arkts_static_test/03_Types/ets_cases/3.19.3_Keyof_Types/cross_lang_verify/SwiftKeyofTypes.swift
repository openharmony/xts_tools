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
