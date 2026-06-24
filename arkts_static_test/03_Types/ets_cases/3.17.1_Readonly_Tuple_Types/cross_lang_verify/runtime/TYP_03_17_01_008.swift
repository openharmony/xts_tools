/**
 * Swift cross-language verification for TYP_03_17_01_008_RUNTIME_READONLY_TUPLE_LENGTH
 */
import Foundation

let tuple: (Int, String, Bool) = (1, "hello", true)
let mirror = Mirror(reflecting: tuple)

if mirror.children.count != 3 { fatalError("length should be 3") }

print("verified")
