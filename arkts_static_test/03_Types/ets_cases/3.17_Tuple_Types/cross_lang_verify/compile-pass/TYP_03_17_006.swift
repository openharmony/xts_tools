/**
 * Swift cross-language verification for TYP_03_17_006_PASS_TUPLE_AS_OBJECT
 * Swift 元组可以赋值给 Any
 */
import Foundation

let tuple: (Int, String) = (1, "hello")
let o: Any = tuple

print("verified")
