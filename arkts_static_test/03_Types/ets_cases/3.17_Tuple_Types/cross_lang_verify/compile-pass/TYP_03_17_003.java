/**
 * Java cross-language verification for TYP_03_17_003_PASS_TUPLE_LENGTH
 * Java 数组有 length 字段，但元组没有
 */
class TYP_03_17_003 {
    public static void main(String[] args) {
        // Java: 使用数组，有 length 属性
        Object[] tuple = {1, ""};
        int len = tuple.length;

        if (len != 2) throw new AssertionError("length should be 2");

        System.out.println("verified");
    }
}
