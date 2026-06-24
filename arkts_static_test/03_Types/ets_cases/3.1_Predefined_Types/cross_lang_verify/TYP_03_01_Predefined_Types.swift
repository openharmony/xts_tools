/**
 * Swift cross-language verification for 3.1 Predefined Types
 */
print("=== 3.01 Predefined Types ===")
let b: Int8 = 1
let s: Int16 = 2
let i: Int32 = 3
let l: Int64 = 4
let f: Float32 = 3.14
let d: Float64 = 3.14
let bool = true
print("byte=\(b) short=\(s) int=\(i) long=\(l) float=\(f) double=\(d) bool=\(bool)")

// Key diff: Swift Int cannot be nil (matches ArkTS)
// var x: Int = nil  // compile error
