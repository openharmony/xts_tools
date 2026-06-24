/**
 * Swift cross-language verification for TYP_03_17_012_RUNTIME_TUPLE_LENGTH
 * Swift 元组没有直接的 length 属性
 */
import Foundation

let tuple: (Int, String) = (1, "")
let mirror1 = Mirror(reflecting: tuple)
if mirror1.children.count != 2 { fatalError("length should be 2") }

let tuple2: (Int, Int, String, Bool) = (1, 2, "abc", true)
let mirror2 = Mirror(reflecting: tuple2)
if mirror2.children.count != 4 { fatalError("length should be 4") }

print("verified")
