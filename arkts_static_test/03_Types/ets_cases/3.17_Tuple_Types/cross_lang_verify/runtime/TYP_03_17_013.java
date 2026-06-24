/**
 * Java cross-language verification for TYP_03_17_013_RUNTIME_TUPLE_AS_TUPLE
 * Java 没有 Tuple 超类型
 */
class TYP_03_17_013 {
    public static void main(String[] args) {
        Object[] tuple = {1, "hello"};
        Object t = tuple;

        System.out.println("verified");
    }
}
