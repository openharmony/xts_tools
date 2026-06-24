/**
 * Swift SPEC inconsistency verification for 3.8 Type Any
 *
 * KEY TEST: Any.field - Swift compile error
 *
 * Result (based on Swift Language Guide):
 * - let a: Any = WithField(); a.field  -> COMPILE ERROR
 *   "value of type 'Any' has no member 'field'"
 * - Must cast: (a as? WithField)?.field           -> COMPILE OK
 *
 * Conclusion: Swift correctly rejects field access on top-type without cast,
 * consistent with ArkTS SPEC but inconsistent with ArkTS implementation.
 */

class WithField {
    var field: Int = 0
}

// Compile error test (uncomment to verify):
// let a: Any = WithField()
// let f = a.field  // COMPILE ERROR: value of type 'Any' has no member 'field'

// Correct approach in Swift:
let a: Any = WithField()
if let wf = a as? WithField {
    print("Swift: (a as? WithField)?.field = \(wf.field)")  // OK
}

print("Swift: Any.field -> COMPILE ERROR (must cast first)")
print("ArkTS: (a: Any).field -> COMPILES (SPEC says should fail)")
print("ArkTS SPEC vs Implementation: INCONSISTENT")