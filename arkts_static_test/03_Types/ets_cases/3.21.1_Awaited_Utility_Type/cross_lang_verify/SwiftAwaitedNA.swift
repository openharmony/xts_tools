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