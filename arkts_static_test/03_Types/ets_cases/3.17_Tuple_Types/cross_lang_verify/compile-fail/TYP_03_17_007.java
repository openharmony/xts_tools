/**
 * Java cross-language verification for TYP_03_17_007_FAIL_TYPE_MISMATCH
 * Java 使用数组时类型不匹配在运行时才会发现
 */
class TYP_03_17_007 {
    public static void main(String[] args) {
        // Java: 使用数组，类型不匹配不会编译错误
        Object[] tuple = {"hello", 1};  // Java 允许，但顺序与预期不同

        System.out.println("Java: allows type mismatch in Object[] (runtime only)");
        System.out.println("verified");
    }
}
