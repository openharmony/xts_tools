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
 * Swift cross-language verification for 3.15 Literal Types
 * Swift 支持字面量类型
 */
print("=== 3.15 Literal Types ===")

// 1. Swift 支持字符串字面量类型
let a: String = "string literal"
print("Swift: String literal type = \(a)")

// 2. Swift 使用 Optional 处理 null/nil
let b: String? = nil
print("Swift: Optional for nullability = \(b ?? "nil")")

// 3. Swift 没有 undefined，使用 nil
print("Swift: No undefined, uses nil")

// 4. Swift 使用字面量作为参数
func printThem(_ p1: String, _ p2: String?) {
    print("Swift: p1=\(p1) p2=\(p2 ?? "nil")")
}

printThem("string literal", nil)

// 5. Swift 支持枚举关联值（类似字面量类型）
enum Literal {
    case string(String)
    case null
}

let lit: Literal = .string("hello")
print("Swift: Enum for literal types")
