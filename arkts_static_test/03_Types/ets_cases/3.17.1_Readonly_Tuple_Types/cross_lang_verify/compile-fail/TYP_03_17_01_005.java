/**
 * Java cross-language verification for TYP_03_17_01_005_FAIL_STRING_WRITE
 * Java final 数组的元素仍然可以修改
 */
class TYP_03_17_01_005 {
    public static void main(String[] args) {
        final Object[] tuple = {1, "abc"};

        // Java: final 数组的元素可以修改
        tuple[1] = "xyz";
        System.out.println("Java: final array elements can be modified: " + tuple[1]);

        System.out.println("verified");
    }
}
