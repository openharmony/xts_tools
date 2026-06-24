/**
 * Swift cross-language verification for 3.7 Reference Types
 */
print("=== 3.07 Reference Types ===")
// Swift: classes are reference types, structs are value types
class RefType { var x: Int = 0 }
var ref: RefType? = nil  // Swift uses Optional for nullability
ref = RefType()
print("Swift: reference types use Optional (matches ArkTS nullish pattern)")
