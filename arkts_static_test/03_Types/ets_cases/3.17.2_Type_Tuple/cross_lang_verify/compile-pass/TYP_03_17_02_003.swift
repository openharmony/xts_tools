/**
 * Swift cross-language verification for TYP_03_17_02_003_PASS_INSTANCEOF_TUPLE
 * Swift 使用 is 操作符
 */
import Foundation

func checkTuple(_ x: Any) {
    if x is (Int, String) {
        print("is (Int, String)")
    }
}

let pair: (Int, String) = (1, "abc")
checkTuple(pair)

print("verified")
