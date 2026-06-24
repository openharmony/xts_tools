/**
 * Swift cross-language verification for TYP_03_17_02_004_PASS_UNSAFE_GET
 * Swift 使用元组索引
 */
import Foundation

func logTuple(_ x: Any) {
    if let tuple = x as? (String, String) {
        print(tuple.1)
    }
}

let a: (String, String) = ("aa", "bb")
logTuple(a)

print("verified")
