/**
 * Swift cross-language verification for TYP_03_17_007_FAIL_TYPE_MISMATCH
 * Swift 会在编译时检查元组类型
 */
import Foundation

// Swift: 编译错误 - 类型不匹配
// let tuple: (Int, String) = ("hello", 1)  // 编译错误

// 正确的方式
let tuple: (String, Int) = ("hello", 1)
print("Swift: requires correct type order")
print("verified")
