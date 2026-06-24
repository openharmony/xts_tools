/**
 * Swift cross-language verification for TYP_03_17_02_010_RUNTIME_UNSAFE_GET
 */
import Foundation

let a: (String, String) = ("aa", "bb")
let t: Any = a

if let tuple = t as? (String, String) {
    let elem = tuple.1
    if elem != "bb" {
        fatalError("elem should be bb")
    }
}

print("verified")
