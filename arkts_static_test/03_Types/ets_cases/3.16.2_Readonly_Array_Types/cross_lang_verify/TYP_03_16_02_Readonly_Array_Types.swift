/**
 * Swift cross-language verification for 3.16.2 Readonly Array Types
 * Swift 使用 let 声明不可变数组
 */
import Foundation

print("=== 3.16.2 Readonly Array Types ===")

// 1. Swift let 数组是不可变的
let arr1: [Int] = [1, 2, 3]
print("Swift: let array count=\(arr1.count)")

// 2. Swift let 数组不能修改
// arr1[0] = 42  // 编译错误: Cannot assign to subscript: 'arr1' is a 'let' constant
// arr1.append(4)  // 编译错误: Cannot use mutating member on immutable value: 'arr1' is a 'let' constant

// 3. Swift var 数组是可变的
var arr2: [Int] = [1, 2, 3]
arr2[0] = 42
print("Swift: var array[0]=\(arr2[0])")

// 4. Swift let 数组只读访问
let x = arr1[0]
print("Swift: let array[0]=\(x)")

// 5. Swift 嵌套数组中 let 内层数组也是不可变的
let nested: [[Int]] = [[1, 2], [3, 4]]
// nested[0][0] = 42  // 编译错误: Cannot assign through subscript: subscript is get-only
print("Swift: nested array[0][0]=\(nested[0][0])")

// 6. Swift Array 是值类型
var arr3 = arr1
arr3.append(4)
print("Swift: arr1.count=\(arr1.count) arr3.count=\(arr3.count)")
