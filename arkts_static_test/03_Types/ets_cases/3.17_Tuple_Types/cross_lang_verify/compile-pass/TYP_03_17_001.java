/**
 * Java cross-language verification for TYP_03_17_001_PASS_BASIC_TUPLE
 * Java 没有原生元组，使用自定义类模拟
 */
class TYP_03_17_001 {
    public static void main(String[] args) {
        // Java: 使用 Object 数组模拟元组（类型不安全）
        Object[] tuple = {6, 7, "abc", true, 42};

        if (!tuple[0].equals(6)) throw new AssertionError("tuple[0] should be 6");
        if (!tuple[1].equals(7)) throw new AssertionError("tuple[1] should be 7");
        if (!tuple[2].equals("abc")) throw new AssertionError("tuple[2] should be abc");
        if (!tuple[3].equals(true)) throw new AssertionError("tuple[3] should be true");

        System.out.println("verified");
    }
}
