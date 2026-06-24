/**
 * Java 版本 - void 函数返回值测试
 * 此文件用于验证 void 函数不能返回值
 * 
 * 编译命令: javac JavaVoidReturnFail.java
 * 预期结果: 编译失败
 */
public class JavaVoidReturnFail {
    // void 函数不能返回值
    static void test() {
        return 42;  // 编译错误: incompatible types: unexpected return value
    }
    
    public static void main(String[] args) {
        test();
    }
}
