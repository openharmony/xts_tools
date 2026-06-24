/**
 * Java cross-language verification for TYP_03_17_01_008_RUNTIME_READONLY_TUPLE_LENGTH
 */
class TYP_03_17_01_008 {
    public static void main(String[] args) {
        final Object[] tuple = {1, "hello", true};

        if (tuple.length != 3) throw new AssertionError("length should be 3");

        System.out.println("verified");
    }
}
