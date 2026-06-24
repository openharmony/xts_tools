/**
 * Java 版本 - 字符串比较与转义字符测试
 * 验证相等比较、关系比较、转义字符
 */
public class StringComparisonTest {
    public static void main(String[] args) {
        // 1. 相等比较 - 使用 equals()
        String a = "hello";
        String b = "hello";
        String c = new String("hello");
        
        assert a.equals(b) : "equals should work";
        assert a.equals(c) : "equals should work for new String";
        assert !a.equals("world") : "not equal should work";
        
        // 2. == 比较引用 (字符串常量池)
        assert a == b : "string literals are interned";
        // assert a == c; // 可能失败，因为是不同对象
        
        // 3. compareTo() 关系比较 (字典序)
        assert "apple".compareTo("banana") < 0 : "apple < banana";
        assert "banana".compareTo("apple") > 0 : "banana > apple";
        assert "abc".compareTo("abc") == 0 : "abc == abc";
        assert "abc".compareTo("abd") < 0 : "abc < abd";
        
        // 4. 转义字符
        String tab = "hello\tworld";
        assert tab.length() == 11 : "tab should be counted";
        
        String newline = "hello\nworld";
        assert newline.length() == 11 : "newline should be counted";
        
        String backslash = "hello\\world";
        assert backslash.length() == 11 : "backslash should be counted";
        
        String quote = "hello\"world";
        assert quote.length() == 11 : "quote should be counted";
        
        // 5. \0 字符
        String nullChar = "a\0b";
        assert nullChar.length() == 3 : "null char should be counted";
        assert nullChar.charAt(1) == '\0' : "null char should be at index 1";
        
        // 6. 空字符串比较
        String empty1 = "";
        String empty2 = new String("");
        assert empty1.equals(empty2) : "empty strings should be equal";
        assert empty1.length() == 0 : "empty string length should be 0";
        
        // 7. 大小写比较
        String upper = "HELLO";
        String lower = "hello";
        assert !upper.equals(lower) : "case sensitive comparison";
        assert upper.equalsIgnoreCase(lower) : "ignore case comparison";
        
        System.out.println("All Java comparison tests passed!");
    }
}
