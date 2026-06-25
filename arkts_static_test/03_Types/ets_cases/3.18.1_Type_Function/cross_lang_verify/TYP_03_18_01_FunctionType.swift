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
 * Swift cross-language verification for 3.18.1 Type Function
 *
 * KEY TEST: Swift function types can be called directly
 * 
 * Result: Swift function types (e.g., () -> Void) can be called directly.
 * There is no "unsafeCall" equivalent. Swift's design is different from ArkTS Spec.
 */
func greet(name: String) -> String {
    return "Hello, \(name)"
}

// Test 1: Function type assignment - Swift allows direct call
var f: (String) -> String = greet
let result = f("World")
print("Swift: f(\"World\") = \(result)")

// Test 2: Swift has no "Function" top type with unsafeCall
// Swift function types are directly callable by design
print("Swift: Function types can be called directly - no unsafeCall concept")
print("Swift: Type-safe by design - no equivalent to ArkTS Function type")

// Test 3: Swift closures assigned to variables
let x: () -> Void = { print("hello") }
print("Swift: closure name is not accessible (no .name property)")