/**
 * Swift 版本 - 3.13 Type string 基础测试
 * 验证字符串字面量、创建、长度、连接、索引、比较
 */

import Foundation

// 1. 字符串字面量声明
let s1: String = "hello"
let s2: String = ""
let s3: String = "ArkTS"

assert(s1 == "hello", "s1 assert failed")
assert(s2 == "", "s2 assert failed")
assert(s3 == "ArkTS", "s3 assert failed")

// 2. Swift 不支持 new String()，使用字面量或初始化
let s4 = String()
assert(s4 == "", "String() should be empty")

// 3. Swift 中 String 是值类型，不是引用类型
// Any 类型可以接受 String
let obj: Any = s1
assert(obj is String, "String should be Any")

// 4. 字符串不可变性 (let)
let s5 = "hello"
// s5[s5.startIndex] = "H" // 编译错误 - let 不可变
var s6 = "hello"
// s6[s6.startIndex] = "H" // Swift 5.9+ 需要特殊处理
s6 = "Hello" // 重新赋值是允许的
assert(s6 == "Hello", "reassignment should work")

// 5. String.count 属性
assert("hello".count == 5, "count should be 5")
assert("".count == 0, "empty string count should be 0")

// 6. 字符串连接
let concat = "hello" + " " + "world"
assert(concat == "hello world", "concat failed")

// 7. 字符串索引 - 返回 Character
let str = "hello"
let index = str.startIndex
let c: Character = str[index]
assert(c == "h", "index should return 'h'")

// 8. 字符串比较 - 使用 ==
let a = "hello"
let b = "hello"
assert(a == b, "== should work for value comparison")

// 9. 字符串可迭代性
var chars: [Character] = []
for ch in "hello" {
    chars.append(ch)
}
assert(String(chars) == "hello", "iteration failed")

// 10. 字符串包含 \0 字符
let withNull = "a\0b"
assert(withNull.count == 3, "null char should be counted")

// 11. 关系比较 (字典序)
assert("apple" < "banana", "lexicographic comparison")
assert("abc" < "abd", "lexicographic comparison")

print("All Swift tests passed!")
