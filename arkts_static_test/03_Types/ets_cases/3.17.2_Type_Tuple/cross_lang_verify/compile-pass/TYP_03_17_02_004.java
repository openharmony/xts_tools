/**
 * Java cross-language verification for TYP_03_17_02_004_PASS_UNSAFE_GET
 * Java 使用数组索引访问
 */
class TYP_03_17_02_004 {
    static void logTuple(Object x) {
        if (x instanceof Object[]) {
            Object[] arr = (Object[]) x;
            System.out.println(arr[1]);
        }
    }

    public static void main(String[] args) {
        Object[] a = {"aa", "bb"};
        logTuple(a);

        System.out.println("verified");
    }
}
