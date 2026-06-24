/**
 * Swift cross-language verification for TYP_03_17_01_001_PASS_READONLY_TUPLE_BASIC
 * Swift 使用 let 声明不可变元组
 */
import Foundation

let tuple: (Int, String) = (1, "abc")

if tuple.0 != 1 { fatalError("tuple.0 should be 1") }
if tuple.1 != "abc" { fatalError("tuple.1 should be abc") }

print("verified")
