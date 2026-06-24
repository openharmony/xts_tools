/**
 * Java cross-language verification for TYP_03_17_01_004_FAIL_INDEX_WRITE
 * Java final 数组的元素仍然可以修改
 */
class TYP_03_17_01_004 {
    public static void main(String[] args) {
        final Object[] tuple = {1, "abc"};

        // Java: final 数组的元素可以修改（只有引用不可变）
        tuple[0] = 42;
        System.out.println("Java: final array elements can be modified: " + tuple[0]);

        System.out.println("verified");
    }
}
