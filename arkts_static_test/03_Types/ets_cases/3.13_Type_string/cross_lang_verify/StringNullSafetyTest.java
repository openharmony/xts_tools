/**
 * Java 版本 - 字符串 null 安全测试
 * 验证 null 赋值、null 检查、null 与 Object 的关系
 */
public class StringNullSafetyTest {
    public static void main(String[] args) {
        // 1. String 可以是 null (Java 没有原生 null 安全)
        String s1 = null;
        assert s1 == null : "null should be assignable";
        
        // 2. null 可以赋值给 Object
        Object obj = null;
        assert obj == null : "null should be assignable to Object";
        
        // 3. null 检查
        String s2 = "hello";
        String s3 = null;
        
        assert s2 != null : "non-null string should not be null";
        assert s3 == null : "null string should be null";
        
        // 4. null 安全访问需要手动检查
        if (s3 != null) {
            assert false : "should not reach here";
        }
        
        // 5. 字符串数组中的 null
        String[] arr = {"hello", null, "world"};
        assert arr[0].equals("hello") : "first element should be hello";
        assert arr[1] == null : "second element should be null";
        assert arr[2].equals("world") : "third element should be world";
        
        // 6. null 与字符串连接
        String s4 = null;
        String result = "value=" + s4;
        assert result.equals("value=null") : "null concat should produce 'null'";
        
        // 7. 字符串方法调用前需要 null 检查
        String s5 = null;
        boolean threwNPE = false;
        try {
            s5.length(); // 应该抛出 NullPointerException
        } catch (NullPointerException e) {
            threwNPE = true;
        }
        assert threwNPE : "null.length() should throw NPE";
        
        System.out.println("All Java null safety tests passed!");
    }
}
