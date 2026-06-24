/**
 * Java cross-language verification for TYP_03_17_02_005_FAIL_DIRECT_ACCESS
 * Java 数组可以直接访问
 */
class TYP_03_17_02_005 {
    public static void main(String[] args) {
        Object[] pair = {1, "abc"};
        Object a = pair;

        // Java: 可以直接访问（需要类型转换）
        Object[] arr = (Object[]) a;
        Object x = arr[0];
        System.out.println("Java: direct access allowed with cast: " + x);

        System.out.println("verified");
    }
}
