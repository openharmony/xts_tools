/**
 * Java 版本 - void 编译失败测试
 * 这些代码应该产生编译错误
 * 
 * 注意: 此文件用于验证编译错误，实际编译会失败
 */

public class JavaVoidCompileFailTest {
    public static void main(String[] args) {
        // 以下代码在 Java 中都是编译错误
        
        // 1. void 不能作为变量类型
        // void v = null;  // error: illegal start of expression
        
        // 2. void 不能作为泛型参数
        // java.util.List<void> list;  // error: illegal start of type
        
        // 3. void 不能作为数组元素
        // void[] arr;  // error: illegal start of expression
        
        // 4. void 函数不能返回值
        // 需要在单独的函数中测试
        
        // 5. 无 undefined 关键字
        // Object u = undefined;  // error: cannot find symbol
        
        System.out.println("This should not compile if uncommented");
    }
    
    // 测试 void 函数返回值 - 编译错误
    // static void test() {
    //     return 42;  // error: incompatible types: unexpected return value
    // }
}
