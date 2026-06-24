/**
 * Java cross-language verification for TYP_03_17_010_RUNTIME_BASIC_TUPLE
 */
class TYP_03_17_010 {
    public static void main(String[] args) {
        Object[] tuple = {6, 7, "abc", true, 42};

        if (!tuple[0].equals(6)) throw new AssertionError("tuple[0] should be 6");
        if (!tuple[1].equals(7)) throw new AssertionError("tuple[1] should be 7");
        if (!tuple[2].equals("abc")) throw new AssertionError("tuple[2] should be abc");
        if (!tuple[3].equals(true)) throw new AssertionError("tuple[3] should be true");
        if (!tuple[4].equals(42)) throw new AssertionError("tuple[4] should be 42");

        System.out.println("verified");
    }
}
