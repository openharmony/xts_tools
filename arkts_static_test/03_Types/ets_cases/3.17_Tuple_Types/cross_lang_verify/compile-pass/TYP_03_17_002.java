/**
 * Java cross-language verification for TYP_03_17_002_PASS_TUPLE_INDEX_WRITE
 * Java 使用数组或自定义类模拟
 */
class TYP_03_17_002 {
    public static void main(String[] args) {
        // Java: 使用数组（类型不安全）
        Object[] tuple = {1, "hello"};

        // 修改元素
        tuple[0] = 42;

        if (!tuple[0].equals(42)) throw new AssertionError("tuple[0] should be 42");

        System.out.println("verified");
    }
}
