/**
 * Swift 版本 - Void 编译失败测试
 * 这些代码应该产生编译错误
 * 
 * 注意: 此文件用于验证编译错误，实际编译会失败
 */

import Foundation

// 以下代码在 Swift 中都是编译错误

// 1. Void 函数不能返回非 Void 值
// func test() -> Void {
//     return 42  // 编译错误: cannot convert return expression of type 'Int' to return type 'Void'
// }

// 2. 无 undefined 关键字
// let u = undefined  // 编译错误: cannot find 'undefined' in scope

// 3. Void? 不能直接赋值给 Void
// let v: Void = nil  // 编译错误: 'nil' cannot be assigned to type 'Void'

print("This should not compile if uncommented")
