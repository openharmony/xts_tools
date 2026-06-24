/**
 * Swift cross-language verification for TYP_03_17_005_PASS_TUPLE_DIFFERENT_TYPES
 */
import Foundation

let tuple: (Int, String, Bool, Int) = (1, "hello", true, 42)

if tuple.0 != 1 { fatalError("tuple.0 should be 1") }
if tuple.1 != "hello" { fatalError("tuple.1 should be hello") }
if tuple.2 != true { fatalError("tuple.2 should be true") }
if tuple.3 != 42 { fatalError("tuple.3 should be 42") }

print("verified")
