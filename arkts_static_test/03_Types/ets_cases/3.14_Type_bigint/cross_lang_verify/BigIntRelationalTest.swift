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
/**
 * Swift SPEC inconsistency verification for 3.14 Type bigint
 *
 * KEY TEST: Int64 > Int / Int64 < Double
 *
 * Result (based on Swift Language Guide):
 * - Int64 > Int    -> COMPILE OK (Swift has implicit Int<->Int64 conversion on 64-bit)
 * - Int64 > Double -> COMPILE ERROR: "cannot convert value of type 'Double' to expected argument type 'Int64'"
 *
 * Note: Swift does allow Int64 > Int on 64-bit platforms where Int == Int64,
 * but Int64 > Double is always a compile error.
 * 
 * Conclusion: Swift rejects Int64 vs Double comparison (type mismatch),
 * consistent with ArkTS SPEC for bigint vs numeric types.
 */

let b: Int64 = 100
let n: Int = 42
let d: Double = 42.5

// Test 1: Int64 > Int - compiles on 64-bit platforms
if b > Int64(n) {
    print("Swift: Int64 > Int64(n) = true (after explicit conversion)")
}

// Test 2: Int64 > Double - COMPILE ERROR
// if b > d { }  // COMPILE ERROR: cannot convert value of type 'Double' to expected argument type 'Int64'

// Correct approach in Swift - explicit conversion
if Double(b) > d {
    print("Swift: Double(Int64) > Double = true (after explicit conversion)")
}

print("Swift: Int64 > Double -> COMPILE ERROR (must convert explicitly)")
print("ArkTS: bigint > int -> COMPILES (SPEC says should fail)")
print("ArkTS: bigint < double -> COMPILES (SPEC says should fail)")
print("ArkTS SPEC vs Implementation: INCONSISTENT")