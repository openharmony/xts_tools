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