/**
 * Java 版本 - 3.13 Type string 基础测试
 * 验证字符串字面量、创建、长度、连接、索引、比较
 */
public class StringBasicTest {
    public static void main(String[] args) {
        // 1. 字符串字面量声明
        String s1 = "hello";
        String s2 = "";
        String s3 = "ArkTS";
        
        assert s1.equals("hello") : "s1 assert failed";
        assert s2.equals("") : "s2 assert failed";
        assert s3.equals("ArkTS") : "s3 assert failed";
        
        // 2. new String 创建
        String s4 = new String();
        assert s4.equals("") : "new String() should be empty";
        
        // 3. String 是 Object 子类型
        Object obj = s1;
        assert obj instanceof String : "String should be instanceof Object";
        
        // 4. 字符串不可变性
        String s5 = "hello";
        // s5[0] = 'H'; // 编译错误 - Java 不支持数组语法访问
        s5 = "Hello"; // 重新赋值是允许的
        assert s5.equals("Hello") : "reassignment should work";
        
        // 5. String.length() 方法
        assert "hello".length() == 5 : "length should be 5";
        assert "".length() == 0 : "empty string length should be 0";
        
        // 6. 字符串连接
        String concat = "hello" + " " + "world";
        assert concat.equals("hello world") : "concat failed";
        
        // 7. 字符串索引 - charAt() 返回 char
        char c = "hello".charAt(0);
        assert c == 'h' : "charAt should return 'h'";
        
        // 8. 字符串比较 - 使用 equals()
        String a = "hello";
        String b = "hello";
        String c2 = new String("hello");
        assert a.equals(b) : "equals should work";
        assert a.equals(c2) : "equals should work for new String";
        // 注意: == 比较引用，不是值
        assert a == b : "string literals are interned";
        // assert a == c2; // 可能失败，因为是不同对象
        
        // 9. 字符串可迭代性 (Java 8+)
        StringBuilder sb = new StringBuilder();
        for (char ch : "hello".toCharArray()) {
            sb.append(ch);
        }
        assert sb.toString().equals("hello") : "iteration failed";
        
        // 10. 字符串包含 \0 字符
        String withNull = "a\0b";
        assert withNull.length() == 3 : "null char should be counted";
        
        System.out.println("All Java tests passed!");
    }
}
