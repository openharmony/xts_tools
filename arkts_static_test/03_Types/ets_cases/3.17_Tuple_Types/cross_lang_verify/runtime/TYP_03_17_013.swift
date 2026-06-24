/**
 * Swift cross-language verification for TYP_03_17_013_RUNTIME_TUPLE_AS_TUPLE
 * Swift 没有 Tuple 超类型
 */
import Foundation

let tuple: (Int, String) = (1, "hello")
let t: Any = tuple

print("verified")
