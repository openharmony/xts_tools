import java.util.ArrayList;
import java.util.List;

/**
 * Java cross-language verification for 3.16.1 Resizable Array Types
 * Java 使用 ArrayList 实现可变长度数组
 */
class TYP_03_16_01_Resizable_Array_Types {
    public static void main(String[] args) {
        // 1. Java 数组长度固定
        int[] arr1 = {1, 2, 3};
        System.out.println("3.16.1: Java array length is fixed: " + arr1.length);

        // 2. Java ArrayList 是可变长度
        List<Integer> arr2 = new ArrayList<>();
        arr2.add(1);
        arr2.add(2);
        arr2.add(3);
        System.out.println("3.16.1: ArrayList size: " + arr2.size());

        // 3. Java ArrayList 索引访问
        arr2.set(1, 200);
        System.out.println("3.16.1: ArrayList[1]=" + arr2.get(1));

        // 4. Java ArrayList 添加元素
        arr2.add(4);
        System.out.println("3.16.1: ArrayList size after add: " + arr2.size());

        // 5. Java ArrayList 删除元素
        arr2.remove(arr2.size() - 1);
        System.out.println("3.16.1: ArrayList size after remove: " + arr2.size());

        // 6. Java 没有 length 收缩概念
        System.out.println("3.16.1: Java has no array length shrink concept");

        // 7. Java 数组是 Object 子类型
        Object o = arr1;
        System.out.println("3.16.1: array instanceof Object: " + (o instanceof Object));
    }
}
