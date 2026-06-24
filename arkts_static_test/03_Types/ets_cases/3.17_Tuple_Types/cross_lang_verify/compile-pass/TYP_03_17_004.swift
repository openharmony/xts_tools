/**
 * Swift cross-language verification for TYP_03_17_004_PASS_TUPLE_AS_TUPLE
 * Swift 没有 Tuple 超类型
 */
import Foundation

let tuple: (Int, String) = (1, "hello")
// Swift 没有 Tuple 超类型，但可以赋值给 Any
let t: Any = tuple

print("verified")
