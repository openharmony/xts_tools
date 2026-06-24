/**
 * Java cross-language verification for 3.18.1 Type Function
 * 
 * KEY TEST: Java has no top-level Function type
 * Java uses functional interfaces instead.
 * 
 * Result: Java correctly requires type-safe invocation via functional interfaces.
 * No equivalent to ArkTS's "Function type with direct call" problem.
 */
import java.util.function.Function;

public class TYP_03_18_01_FunctionType {
    public static void main(String[] args) {
        // Java: Functional interface (type-safe)
        Function<Integer, String> f = Object::toString;
        String result = f.apply(42);  // OK: type-safe call via functional interface
        System.out.println("Java: f.apply(42) = " + result);

        // Java: No top-level Function type
        // Object obj = (Function<Integer, String>) f;
        // obj.apply(1);  // COMPILE ERROR: Object has no method apply

        System.out.println("Java: No top-level Function type - uses functional interfaces instead");
        System.out.println("Java: Type-safe by design - no unsafeCall equivalent needed");
    }
}