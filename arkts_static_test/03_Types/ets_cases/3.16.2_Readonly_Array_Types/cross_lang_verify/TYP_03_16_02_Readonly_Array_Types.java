import java.util.Collections;
import java.util.List;
import java.util.ArrayList;
import java.util.Arrays;

/**
 * Java cross-language verification for 3.16.2 Readonly Array Types
 * Java 使用 Collections.unmodifiableList 创建不可变列表
 */
class TYP_03_16_02_Readonly_Array_Types {
    public static void main(String[] args) {
        // 1. Java 原生数组是可变的
        int[] arr1 = {1, 2, 3};
        arr1[0] = 42;
        System.out.println("3.16.2: Java native array is mutable: " + arr1[0]);

        // 2. Java Collections.unmodifiableList 创建不可变列表
        List<Integer> arr2 = Collections.unmodifiableList(Arrays.asList(1, 2, 3));
        System.out.println("3.16.2: unmodifiableList size: " + arr2.size());

        // 3. Java 不可变列表尝试修改会抛出异常
        try {
            arr2.set(0, 42);
            System.out.println("3.16.2: unmodifiableList set succeeded (unexpected)");
        } catch (UnsupportedOperationException e) {
            System.out.println("3.16.2: unmodifiableList set threw UnsupportedOperationException");
        }

        // 4. Java 不可变列表尝试添加元素会抛出异常
        try {
            arr2.add(4);
            System.out.println("3.16.2: unmodifiableList add succeeded (unexpected)");
        } catch (UnsupportedOperationException e) {
            System.out.println("3.16.2: unmodifiableList add threw UnsupportedOperationException");
        }

        // 5. Java 不可变列表只读访问
        int x = arr2.get(0);
        System.out.println("3.16.2: unmodifiableList[0]=" + x);

        // 6. Java 没有嵌套数组自动 readonly 的概念
        List<List<Integer>> nested = new ArrayList<>();
        nested.add(new ArrayList<>(Arrays.asList(1, 2)));
        nested.add(new ArrayList<>(Arrays.asList(3, 4)));
        nested.get(0).set(0, 42);
        System.out.println("3.16.2: nested array inner modification allowed: " + nested.get(0).get(0));
    }
}
