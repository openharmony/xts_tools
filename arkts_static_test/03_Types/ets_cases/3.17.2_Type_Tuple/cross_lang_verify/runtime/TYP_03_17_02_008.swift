/**
 * Swift cross-language verification for TYP_03_17_02_008_RUNTIME_EMPTY_TUPLE
 */
import Foundation

let empty: () = ()

// Swift 空元组是 Any 类型
if !(empty is Any) {
    fatalError("empty should be Any")
}

print("verified")
