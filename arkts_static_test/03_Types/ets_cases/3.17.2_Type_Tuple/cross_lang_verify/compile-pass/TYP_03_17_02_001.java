/**
 * Java cross-language verification for TYP_03_17_02_001_PASS_TUPLE_AS_TUPLE_TYPE
 * Java 没有 Tuple 超类型，使用 Object
 */
class TYP_03_17_02_001 {
    public static void main(String[] args) {
        // Java: 使用 Object 数组，赋值给 Object
        Object[] pair = {1, "abc"};
        Object a = pair;

        System.out.println("verified");
    }
}
