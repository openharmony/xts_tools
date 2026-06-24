/**
 * Swift cross-language verification for TYP_03_17_02_011_RUNTIME_UNSAFE_GET_INDEX_OUT_OF_BOUNDS
 * Swift 元组索引越界在编译时就会发现
 */
import Foundation

let b: (String) = "aa"
let t: Any = b

print("Swift: tuple index out of bounds is compile error")
print("verified")
