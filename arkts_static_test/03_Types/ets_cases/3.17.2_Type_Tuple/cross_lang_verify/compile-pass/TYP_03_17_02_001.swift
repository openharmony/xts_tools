/**
 * Swift cross-language verification for TYP_03_17_02_001_PASS_TUPLE_AS_TUPLE_TYPE
 * Swift 没有 Tuple 超类型，使用 Any
 */
import Foundation

let pair: (Int, String) = (1, "abc")
let a: Any = pair

print("verified")
