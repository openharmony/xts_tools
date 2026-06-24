/**
 * Java cross-language verification for TYP_03_17_02_003_PASS_INSTANCEOF_TUPLE
 * Java 使用 instanceof Object
 */
class TYP_03_17_02_003 {
    static void checkTuple(Object x) {
        if (x instanceof Object[]) {
            System.out.println("is Object[]");
        }
    }

    public static void main(String[] args) {
        Object[] pair = {1, "abc"};
        checkTuple(pair);

        System.out.println("verified");
    }
}
