/**
 * Swift cross-language verification for TYP_03_17_02_005_FAIL_DIRECT_ACCESS
 * Swift Any 类型不能直接访问元组元素
 */
import Foundation

let pair: (Int, String) = (1, "abc")
let a: Any = pair

// Swift: Any 类型不能直接访问元组元素
// let x = a.0  // 编译错误: Value of type 'Any' has no member '0'

// 需要类型转换
if let tuple = a as? (Int, String) {
    let x = tuple.0
    print("Swift: direct access requires cast: \(x)")
}

print("verified")
