/**
 * Java cross-language verification for 3.16 Array Types
 */
class TYP_03_16_Array_Types {
    public static void main(String[] args) {
        // 1. Java 数组声明
        int[] arr1 = {1, 2, 3};
        String[] arr2 = {"a", "b", "c"};
        System.out.println("3.16: int[] length=" + arr1.length);
        System.out.println("3.16: String[] length=" + arr2.length);

        // 2. Java 数组是 Object 子类型
        Object o = arr1;
        System.out.println("3.16: array instanceof Object: " + (o instanceof Object));

        // 3. Java 数组可迭代（使用 for-each）
        int sum = 0;
        for (int n : arr1) {
            sum += n;
        }
        System.out.println("3.16: sum=" + sum);

        // 4. Java 数组索引访问
        System.out.println("3.16: arr1[0]=" + arr1[0] + " arr1[1]=" + arr1[1]);

        // 5. Java 没有 FixedArray 概念
        System.out.println("3.16: Java has no FixedArray concept");

        // 6. Java 数组长度固定
        System.out.println("3.16: Java array length is fixed after creation");
    }
}
