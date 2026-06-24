/**
 * Swift cross-language verification for TYP_03_17_011_RUNTIME_TUPLE_INDEX_WRITE
 */
import Foundation

var tuple: (Int, String) = (1, "hello")

tuple.0 = 42
if tuple.0 != 42 { fatalError("tuple.0 should be 42") }

tuple.1 = "world"
if tuple.1 != "world" { fatalError("tuple.1 should be world") }

print("verified")
