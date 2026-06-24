/**
 * Swift cross-language verification for TYP_03_17_001_PASS_BASIC_TUPLE
 */
import Foundation

let tuple: (Int, Int, String, Bool, Any) = (6, 7, "abc", true, 42)

if tuple.0 != 6 { fatalError("tuple.0 should be 6") }
if tuple.1 != 7 { fatalError("tuple.1 should be 7") }
if tuple.2 != "abc" { fatalError("tuple.2 should be abc") }
if tuple.3 != true { fatalError("tuple.3 should be true") }

print("verified")
