/**
 * Swift cross-language verification for TYP_03_17_01_002_PASS_READONLY_TUPLE_LENGTH
 * Swift 元组没有直接的 length 属性
 */
import Foundation

let tuple: (Int, String, Bool) = (1, "hello", true)
let mirror = Mirror(reflecting: tuple)

if mirror.children.count != 3 { fatalError("length should be 3") }

print("verified")
