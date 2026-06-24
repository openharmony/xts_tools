// 3.10 Type never - Swift equivalent tests
// Swift has 'Never' type (equivalent to ArkTS 'never')

// 001: Never as return type (throw function)
enum CustomError: Error {
    case neverReturn
}

func neverReturn() -> Never {
    fatalError("never returns")
}

// 003: Never as parameter type
func neverParam(_ p: Never) {
    // Cannot be called - unreachable
}

// 005: Never in union - Swift uses separate handling
// Swift does NOT support T | Never syntax directly
// But Never is absorbed in exhaustive switch cases

// 009 runtime: function that throws
func alwaysThrow() -> String {
    fatalError("always throws")
}

print("=== TYP_03_10_001 ===")
print("Swift: Never type exists, fatalError() never returns")

print("=== TYP_03_10_003 ===")
print("Swift: Never as parameter type compiles but cannot be called")

print("=== TYP_03_10_005 ===")
print("Swift: Never is absorbed in exhaustive switch (no T | Never syntax)")

print("=== TYP_03_10_009 ===")
// Test that function returning Never crashes as expected
// We verify it exists, not that we can catch it cleanly