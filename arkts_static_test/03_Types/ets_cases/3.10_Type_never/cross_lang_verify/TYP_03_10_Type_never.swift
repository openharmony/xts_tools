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
// 3.10 Type never - Swift equivalent tests
// Swift has 'Never' type (equivalent to ArkTS 'never')

// 001: Never as return type (throw function)
enum CustomError: Error {
    case neverReturn
}

func neverReturn() -> Never {
    fatalError("never returns")
}

// 003: Never as parameter type
func neverParam(_ p: Never) {
    // Cannot be called - unreachable
}

// 005: Never in union - Swift uses separate handling
// Swift does NOT support T | Never syntax directly
// But Never is absorbed in exhaustive switch cases

// 009 runtime: function that throws
func alwaysThrow() -> String {
    fatalError("always throws")
}

print("=== TYP_03_10_001 ===")
print("Swift: Never type exists, fatalError() never returns")

print("=== TYP_03_10_003 ===")
print("Swift: Never as parameter type compiles but cannot be called")

print("=== TYP_03_10_005 ===")
print("Swift: Never is absorbed in exhaustive switch (no T | Never syntax)")

print("=== TYP_03_10_009 ===")
// Test that function returning Never crashes as expected
// We verify it exists, not that we can catch it cleanly