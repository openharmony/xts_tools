/**
 * Swift cross-language verification for 3.6.3 Floating-Point Types and Operations
 */
print("=== 3.6.3 Float ===")
let nanVal = Double.nan
let infVal = Double.infinity
print("NaN != NaN = \(nanVal != nanVal)")
print("Infinity > 1e308 = \(infVal > 1e308)")
