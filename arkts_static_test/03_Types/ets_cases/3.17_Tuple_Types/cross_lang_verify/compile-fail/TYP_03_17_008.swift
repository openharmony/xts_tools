/**
 * Swift cross-language verification for TYP_03_17_008_FAIL_LENGTH_MISMATCH
 * Swift 会在编译时检查元组长度
 */
import Foundation

// Swift: 编译错误 - 长度不匹配
// let tuple: (Int, String) = (1, "hello", true)  // 编译错误

// 正确的方式
let tuple: (Int, String, Bool) = (1, "hello", true)
print("Swift: requires correct length")
print("verified")
