/**
 * Swift cross-language verification for 3.16.1 Resizable Array Types
 */
import Foundation

print("=== 3.16.1 Resizable Array Types ===")

// 1. Swift 数组是可变长度
var arr1: [Int] = [1, 2, 3]
print("Swift: Array count=\(arr1.count)")

// 2. Swift 数组索引访问
arr1[1] = 200
print("Swift: arr1[1]=\(arr1[1])")

// 3. Swift 数组添加元素
arr1.append(4)
print("Swift: Array count after append=\(arr1.count)")

// 4. Swift 数组删除元素
arr1.removeLast()
print("Swift: Array count after remove=\(arr1.count)")

// 5. Swift 数组长度收缩
arr1 = Array(arr1.prefix(2))
print("Swift: Array count after shrink=\(arr1.count)")

// 6. Swift 数组是值类型
var arr2 = arr1
arr2.append(100)
print("Swift: arr1.count=\(arr1.count) arr2.count=\(arr2.count)")

// 7. Swift 数组可赋值给 Any
let o: Any = arr1
print("Swift: array is Any: \(o is [Int])")
