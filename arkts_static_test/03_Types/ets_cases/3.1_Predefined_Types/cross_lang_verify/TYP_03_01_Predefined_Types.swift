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
 * Swift cross-language verification for 3.1 Predefined Types
 */
print("=== 3.01 Predefined Types ===")
let b: Int8 = 1
let s: Int16 = 2
let i: Int32 = 3
let l: Int64 = 4
let f: Float32 = 3.14
let d: Float64 = 3.14
let bool = true
print("byte=\(b) short=\(s) int=\(i) long=\(l) float=\(f) double=\(d) bool=\(bool)")

// Key diff: Swift Int cannot be nil (matches ArkTS)
// var x: Int = nil  // compile error
