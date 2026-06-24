/**
 * Java cross-language verification for TYP_03_17_011_RUNTIME_TUPLE_INDEX_WRITE
 */
class TYP_03_17_011 {
    public static void main(String[] args) {
        Object[] tuple = {1, "hello"};

        tuple[0] = 42;
        if (!tuple[0].equals(42)) throw new AssertionError("tuple[0] should be 42");

        tuple[1] = "world";
        if (!tuple[1].equals("world")) throw new AssertionError("tuple[1] should be world");

        System.out.println("verified");
    }
}
