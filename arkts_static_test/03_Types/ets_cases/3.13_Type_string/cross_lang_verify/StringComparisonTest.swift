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
 * Swift 版本 - 字符串比较与转义字符测试
 * 验证相等比较、关系比较、转义字符
 */

import Foundation

// 1. 相等比较 - 使用 ==
let a = "hello"
let b = "hello"
assert(a == b, "== should work")
assert(a != "world", "!= should work")

// 2. 字典序比较 - 使用 <, >, <=, >=
assert("apple" < "banana", "apple < banana")
assert("banana" > "apple", "banana > apple")
assert("abc" <= "abc", "abc <= abc")
assert("abc" >= "abc", "abc >= abc")
assert("abc" < "abd", "abc < abd")

// 3. 转义字符
let tab = "hello\tworld"
assert(tab.count == 11, "tab should be counted")

let newline = "hello\nworld"
assert(newline.count == 11, "newline should be counted")

let backslash = "hello\\world"
assert(backslash.count == 11, "backslash should be counted")

let quote = "hello\"world"
assert(quote.count == 11, "quote should be counted")

// 4. \0 字符
let nullChar = "a\0b"
assert(nullChar.count == 3, "null char should be counted")

// 5. 空字符串比较
let empty1 = ""
let empty2 = String()
assert(empty1 == empty2, "empty strings should be equal")
assert(empty1.count == 0, "empty string count should be 0")

// 6. 大小写比较
let upper = "HELLO"
let lower = "hello"
assert(upper != lower, "case sensitive comparison")
assert(upper.lowercased() == lower, "lowercased comparison")
assert(lower.uppercased() == upper, "uppercased comparison")

// 7. hasPrefix / hasSuffix
let str = "Hello, World!"
assert(str.hasPrefix("Hello"), "should have prefix")
assert(str.hasSuffix("World!"), "should have suffix")

// 8. contains
assert(str.contains("World"), "should contain World")
assert(!str.contains("xyz"), "should not contain xyz")

print("All Swift comparison tests passed!")
