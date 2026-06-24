// 3.10 Type never - Java equivalent tests
// Java has no 'never' type; closest equivalent is methods that always throw

// 001: never as return type (throw function)
class TYP_03_10_001 {
    static void neverReturn() {
        throw new RuntimeException("never returns");
    }
    public static void main(String[] args) {
        try { neverReturn(); } catch (RuntimeException e) { /* expected */ }
        System.out.println("TYP_03_10_001 verified");
    }
}

// 002: never as return type (infinite loop) - Java equivalent
class TYP_03_10_002 {
    static void infiniteLoop() {
        while (true) {}
    }
    // Cannot easily test infinite loop in Java without thread interruption
    public static void main(String[] args) {
        System.out.println("TYP_03_10_002: Java has no 'never' type for infinite loops");
    }
}

// 003: never as parameter type - Java has no equivalent
class TYP_03_10_003 {
    // Java: No way to declare a parameter that prevents function execution
    public static void main(String[] args) {
        System.out.println("TYP_03_10_003: Java has no 'never' parameter type");
    }
}

// 005: never in union (absorbed) - Java has no union types
class TYP_03_10_005 {
    public static void main(String[] args) {
        System.out.println("TYP_03_10_005: Java has no union types, 'never' not applicable");
    }
}

// 009 runtime: function that throws - Java equivalent
class TYP_03_10_009 {
    static String alwaysThrow() {
        throw new RuntimeException("always throws");
    }
    public static void main(String[] args) {
        try {
            alwaysThrow();
            throw new AssertionError("Should have thrown");
        } catch (RuntimeException e) {
            // expected
        }
        System.out.println("TYP_03_10_009 verified");
    }
}

// Key differences summary:
// Java: No 'never' type. Methods that never return use throws or infinite loops.
// Java: No exhaustive check mechanism. Switch exhaustiveness not enforced.
// Java: Cannot use 'never' as parameter type to prevent execution.