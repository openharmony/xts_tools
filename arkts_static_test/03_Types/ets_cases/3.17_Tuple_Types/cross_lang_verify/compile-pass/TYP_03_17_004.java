/**
 * Java cross-language verification for TYP_03_17_004_PASS_TUPLE_AS_TUPLE
 * Java 没有 Tuple 超类型
 */
class TYP_03_17_004 {
    public static void main(String[] args) {
        // Java: 使用 Object 数组，赋值给 Object
        Object[] tuple = {1, "hello"};
        Object t = tuple;

        System.out.println("verified");
    }
}
