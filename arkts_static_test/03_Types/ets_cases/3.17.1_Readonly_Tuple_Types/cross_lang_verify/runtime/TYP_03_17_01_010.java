/**
 * Java cross-language verification for TYP_03_17_01_010_RUNTIME_READONLY_TUPLE_DIFFERENT_TYPES
 */
class TYP_03_17_01_010 {
    public static void main(String[] args) {
        final Object[] tuple = {1, "hello", true, 42};

        if (!tuple[0].equals(1)) throw new AssertionError("tuple[0] should be 1");
        if (!tuple[1].equals("hello")) throw new AssertionError("tuple[1] should be hello");
        if (!tuple[2].equals(true)) throw new AssertionError("tuple[2] should be true");
        if (!tuple[3].equals(42)) throw new AssertionError("tuple[3] should be 42");

        System.out.println("verified");
    }
}
