/**
 * Swift cross-language verification for 3.18.1 Type Function
 *
 * KEY TEST: Swift function types can be called directly
 * 
 * Result: Swift function types (e.g., () -> Void) can be called directly.
 * There is no "unsafeCall" equivalent. Swift's design is different from ArkTS Spec.
 */
func greet(name: String) -> String {
    return "Hello, \(name)"
}

// Test 1: Function type assignment - Swift allows direct call
var f: (String) -> String = greet
let result = f("World")
print("Swift: f(\"World\") = \(result)")

// Test 2: Swift has no "Function" top type with unsafeCall
// Swift function types are directly callable by design
print("Swift: Function types can be called directly - no unsafeCall concept")
print("Swift: Type-safe by design - no equivalent to ArkTS Function type")

// Test 3: Swift closures assigned to variables
let x: () -> Void = { print("hello") }
print("Swift: closure name is not accessible (no .name property)")