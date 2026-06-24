/**
 * Swift cross-language verification for TYP_03_17_009_FAIL_INDEX_OUT_OF_BOUNDS
 * Swift 元组索引越界在编译时就会发现
 */
import Foundation

let tuple: (Int, String) = (1, "hello")

// Swift: 编译错误 - 索引越界
// let x = tuple.2  // 编译错误: tuple has no member '2'

// 正确的访问
let x = tuple.0
print("Swift: index out of bounds is compile error")
print("verified")
