/**
 * Java cross-language verification for TYP_03_17_01_007_RUNTIME_READONLY_TUPLE_BASIC
 */
class TYP_03_17_01_007 {
    public static void main(String[] args) {
        final Object[] tuple = {1, "abc"};

        if (!tuple[0].equals(1)) throw new AssertionError("tuple[0] should be 1");
        if (!tuple[1].equals("abc")) throw new AssertionError("tuple[1] should be abc");

        System.out.println("verified");
    }
}
