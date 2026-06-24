/**
 * Swift 版本 - 字符串可迭代性测试
 * 验证字符串遍历、for-in 循环
 */

import Foundation

// 1. 字符串直接遍历 (Character)
let s = "hello"
var chars: [Character] = []
for ch in s {
    chars.append(ch)
}
assert(String(chars) == "hello", "character iteration failed")

// 2. 空字符串遍历
let empty = ""
var count = 0
for _ in empty {
    count += 1
}
assert(count == 0, "empty string should have no chars")

// 3. 单字符字符串
let single = "A"
var singleChars: [Character] = []
for ch in single {
    singleChars.append(ch)
}
assert(String(singleChars) == "A", "single char iteration failed")

// 4. Unicode 字符串
let unicode = "你好"
var unicodeChars: [Character] = []
for ch in unicode {
    unicodeChars.append(ch)
}
assert(unicodeChars.count == 2, "unicode string should have 2 characters")
assert(String(unicodeChars) == "你好", "unicode iteration failed")

// 5. 使用 indices 遍历
let str = "hello"
var indexedChars: [Character] = []
for i in str.indices {
    indexedChars.append(str[i])
}
assert(String(indexedChars) == "hello", "indexed iteration failed")

// 6. emoji 字符串 (多字节 Unicode)
let emoji = "😀🎉"
var emojiChars: [Character] = []
for ch in emoji {
    emojiChars.append(ch)
}
assert(emojiChars.count == 2, "emoji should have 2 characters")

// 7. 混合字符串
let mixed = "a你b好"
var mixedChars: [Character] = []
for ch in mixed {
    mixedChars.append(ch)
}
assert(mixedChars.count == 4, "mixed string should have 4 characters")

print("All Swift iterable tests passed!")
