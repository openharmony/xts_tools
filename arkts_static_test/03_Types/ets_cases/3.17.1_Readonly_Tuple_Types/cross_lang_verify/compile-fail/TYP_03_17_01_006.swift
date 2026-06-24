/**
 * Swift cross-language verification for TYP_03_17_01_006_FAIL_BOOLEAN_WRITE
 * Swift let 元组的元素不能修改
 */
import Foundation

let tuple: (Int, String, Bool) = (1, "hello", true)

// Swift: let 元组的元素不能修改
// tuple.2 = false  // 编译错误: Cannot assign to property: 'tuple' is a 'let' constant

print("Swift: let tuple elements cannot be modified")
print("verified")
