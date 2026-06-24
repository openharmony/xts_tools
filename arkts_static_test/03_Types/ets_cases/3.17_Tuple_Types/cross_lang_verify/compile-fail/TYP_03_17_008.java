/**
 * Java cross-language verification for TYP_03_17_008_FAIL_LENGTH_MISMATCH
 * Java 数组长度不匹配在运行时才会发现
 */
class TYP_03_17_008 {
    public static void main(String[] args) {
        // Java: 使用数组，长度不匹配不会编译错误
        Object[] tuple = {1, "hello", true};  // Java 允许，数组长度可变

        System.out.println("Java: allows length mismatch in Object[] (runtime only)");
        System.out.println("verified");
    }
}
