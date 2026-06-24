/**
 * Java cross-language verification for TYP_03_17_012_RUNTIME_TUPLE_LENGTH
 */
class TYP_03_17_012 {
    public static void main(String[] args) {
        Object[] tuple = {1, ""};
        if (tuple.length != 2) throw new AssertionError("length should be 2");

        Object[] tuple2 = {1, 2, "abc", true};
        if (tuple2.length != 4) throw new AssertionError("length should be 4");

        System.out.println("verified");
    }
}
