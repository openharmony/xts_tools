/**
 * Java cross-language verification for 3.6.2 Integer Types and Operations
 */
class TYP_03_06_02_Integer_Types {
    public static void main(String[] args) {
        // KEY DIFF: Java int/int = int (truncates), same as ArkTS
        int a = 1 / 2;  // = 0 (integer division)
        System.out.println("3.6.2: 1/2 = " + a + " (Java: integer division truncates)");

        // Division by zero
        try {
            int zero = 0;
            int result = 1 / zero;
            System.out.println("UNEXPECTED: no exception");
        } catch (ArithmeticException e) {
            System.out.println("3.6.2: ArithmeticException caught");
        }
    }
}
