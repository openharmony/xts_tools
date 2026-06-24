/**
 * Swift cross-language verification for TYP_03_17_02_009_RUNTIME_INSTANCEOF_TUPLE
 */
import Foundation

let pair: (Int, String) = (1, "abc")

if !(pair is Any) {
    fatalError("pair should be Any")
}

print("verified")
