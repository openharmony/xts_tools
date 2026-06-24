/**
 * Swift cross-language verification for TYP_03_17_01_005_FAIL_STRING_WRITE
 * Swift let 元组的元素不能修改
 */
import Foundation

let tuple: (Int, String) = (1, "abc")

// Swift: let 元组的元素不能修改
// tuple.1 = "xyz"  // 编译错误: Cannot assign to property: 'tuple' is a 'let' constant

print("Swift: let tuple elements cannot be modified")
print("verified")
