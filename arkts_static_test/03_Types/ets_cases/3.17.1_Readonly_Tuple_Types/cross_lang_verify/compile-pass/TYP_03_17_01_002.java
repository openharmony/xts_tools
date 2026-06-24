/**
 * Java cross-language verification for TYP_03_17_01_002_PASS_READONLY_TUPLE_LENGTH
 * Java 使用 final 数组，有 length 属性
 */
class TYP_03_17_01_002 {
    public static void main(String[] args) {
        final Object[] tuple = {1, "hello", true};

        if (tuple.length != 3) throw new AssertionError("length should be 3");

        System.out.println("verified");
    }
}
