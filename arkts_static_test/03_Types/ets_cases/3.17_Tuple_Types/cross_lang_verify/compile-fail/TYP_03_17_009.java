/**
 * Java cross-language verification for TYP_03_17_009_FAIL_INDEX_OUT_OF_BOUNDS
 * Java 数组索引越界在运行时才会发现
 */
class TYP_03_17_009 {
    public static void main(String[] args) {
        // Java: 使用数组，索引越界在运行时抛出异常
        Object[] tuple = {1, "hello"};

        try {
            Object x = tuple[2];  // 运行时 ArrayIndexOutOfBoundsException
            System.out.println("Java: index out of bounds (unexpected)");
        } catch (ArrayIndexOutOfBoundsException e) {
            System.out.println("Java: index out of bounds caught at runtime");
        }

        System.out.println("verified");
    }
}
