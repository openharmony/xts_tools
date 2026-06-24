import java.math.BigInteger;

/**
 * Java SPEC inconsistency verification for 3.14 Type bigint
 * 
 * KEY TEST: BigInteger > int / BigInteger < double
 * 
 * Result (based on Java Language Specification):
 * - BigInteger > int   -> COMPILE ERROR: "bad operand types for operator >"
 * - BigInteger < double -> COMPILE ERROR: "bad operand types for operator <"
 * - Must use compareTo() -> COMPILE OK
 * 
 * Conclusion: Java correctly rejects mixed-type relational operators for BigInteger,
 * consistent with ArkTS SPEC but inconsistent with ArkTS implementation.
 */
public class BigIntRelationalTest {
    public static void main(String[] args) {
        BigInteger b = BigInteger.valueOf(100);
        int n = 42;
        double d = 42.5;

        // Compile error tests (uncomment to verify):
        // if (b > n) { }    // COMPILE ERROR: bad operand types for operator >
        // if (b < d) { }    // COMPILE ERROR: bad operand types for operator <

        // Correct approach in Java - compareTo():
        assert b.compareTo(BigInteger.valueOf(n)) > 0 : "b > n";
        System.out.println("Java: BigInteger > int -> COMPILE ERROR (must use compareTo())");
        System.out.println("Java: BigInteger.compareTo(BigInteger.valueOf(" + n + ")) = " + b.compareTo(BigInteger.valueOf(n)));

        assert b.compareTo(BigInteger.valueOf((long) d)) > 0 : "b > (long)d";
        System.out.println("Java: BigInteger < double -> COMPILE ERROR (must use compareTo())");
        System.out.println("Java: BigInteger.compareTo(BigInteger.valueOf((long)" + d + ")) = " + b.compareTo(BigInteger.valueOf((long) d)));

        System.out.println("ArkTS: bigint > int -> COMPILES (SPEC says should fail)");
        System.out.println("ArkTS SPEC vs Implementation: INCONSISTENT");
    }
}