/**
 * Swift cross-language verification for 3.16 Array Types
 */
import Foundation

print("=== 3.16 Array Types ===")

// 1. Swift 数组声明
let arr1: [Int] = [1, 2, 3]
let arr2: [String] = ["a", "b", "c"]
print("Swift: [Int] count=\(arr1.count)")
print("Swift: [String] count=\(arr2.count)")

// 2. Swift 数组是值类型（struct）
var arr3 = arr1
arr3.append(4)
print("Swift: arr1.count=\(arr1.count) arr3.count=\(arr3.count)")

// 3. Swift 数组可迭代
var sum = 0
for n in arr1 {
    sum += n
}
print("Swift: sum=\(sum)")

// 4. Swift 数组索引访问
print("Swift: arr1[0]=\(arr1[0]) arr1[1]=\(arr1[1])")

// 5. Swift 数组可变性
var mutableArr = [1, 2, 3]
mutableArr.append(4)
mutableArr.remove(at: 0)
print("Swift: mutableArr=\(mutableArr)")

// 6. Swift Array 与 NSArray
let nsArray: NSArray = [1, 2, 3] as NSArray
print("Swift: NSArray bridge=\(nsArray)")
