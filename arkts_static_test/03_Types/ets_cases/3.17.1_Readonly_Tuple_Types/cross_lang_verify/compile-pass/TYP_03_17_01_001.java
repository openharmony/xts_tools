/**
 * Java cross-language verification for TYP_03_17_01_001_PASS_READONLY_TUPLE_BASIC
 * Java 使用 final 数组模拟只读
 */
class TYP_03_17_01_001 {
    public static void main(String[] args) {
        // Java: 使用 final 数组（引用不可变，但元素可变）
        final Object[] tuple = {1, "abc"};

        if (!tuple[0].equals(1)) throw new AssertionError("tuple[0] should be 1");
        if (!tuple[1].equals("abc")) throw new AssertionError("tuple[1] should be abc");

        System.out.println("verified");
    }
}
