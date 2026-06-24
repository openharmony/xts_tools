/**
 * Java cross-language verification for 3.15.1 String Literal Types
 * Java 没有 string literal type，使用常量和 String 类型替代
 */
class TYP_03_15_01_String_Literal_Types {
    // Java 使用 final 常量模拟 string literal type
    static final String STRING_LITERAL = "string literal";

    public static void main(String[] args) {
        // 1. Java 没有 string literal type，使用 String
        String s0 = "string literal";
        System.out.println("3.15.1: Java has no string literal type, uses String");

        // 2. Java String 赋值
        String s1 = s0;
        System.out.println("3.15.1: s1=" + s1);

        // 3. Java String + 运算结果为 String
        String s2 = s0 + s0;
        System.out.println("3.15.1: s0+s0=" + s2);

        // 4. Java 使用常量作为参数
        String result = greet("World");
        System.out.println("3.15.1: greet=" + result);

        // 5. Java String 比较
        String s3 = "hello";
        String s4 = "hello";
        System.out.println("3.15.1: s3==s4: " + (s3 == s4) + " s3.equals(s4): " + s3.equals(s4));
    }

    static String greet(String name) {
        return "Hello, " + name;
    }
}
