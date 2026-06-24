/**
 * Java cross-language verification for TYP_03_17_01_006_FAIL_BOOLEAN_WRITE
 * Java final 数组的元素仍然可以修改
 */
class TYP_03_17_01_006 {
    public static void main(String[] args) {
        final Object[] tuple = {1, "hello", true};

        // Java: final 数组的元素可以修改
        tuple[2] = false;
        System.out.println("Java: final array elements can be modified: " + tuple[2]);

        System.out.println("verified");
    }
}
