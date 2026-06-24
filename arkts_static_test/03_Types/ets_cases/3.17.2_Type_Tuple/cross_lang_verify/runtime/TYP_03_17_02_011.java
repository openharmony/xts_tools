/**
 * Java cross-language verification for TYP_03_17_02_011_RUNTIME_UNSAFE_GET_INDEX_OUT_OF_BOUNDS
 * Java 数组索引越界抛出 ArrayIndexOutOfBoundsException
 */
class TYP_03_17_02_011 {
    public static void main(String[] args) {
        Object[] b = {"aa"};
        Object t = b;

        try {
            Object[] arr = (Object[]) t;
            Object elem = arr[1];  // 运行时 ArrayIndexOutOfBoundsException
            System.out.println("Java: index out of bounds (unexpected)");
        } catch (ArrayIndexOutOfBoundsException e) {
            System.out.println("Java: index out of bounds caught");
        }

        System.out.println("verified");
    }
}
