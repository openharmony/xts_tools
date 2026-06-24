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
