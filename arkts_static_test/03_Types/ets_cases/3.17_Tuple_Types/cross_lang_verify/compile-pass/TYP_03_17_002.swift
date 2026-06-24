/**
 * Swift cross-language verification for TYP_03_17_002_PASS_TUPLE_INDEX_WRITE
 */
import Foundation

var tuple: (Int, String) = (1, "hello")

tuple.0 = 42
if tuple.0 != 42 { fatalError("tuple.0 should be 42") }

print("verified")
