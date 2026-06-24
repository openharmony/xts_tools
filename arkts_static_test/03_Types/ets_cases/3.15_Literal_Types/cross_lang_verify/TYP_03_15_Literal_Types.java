/**
 * Java cross-language verification for 3.15 Literal Types
 * Java 没有字面量类型，使用常量和枚举替代
 */
class TYP_03_15_Literal_Types {
    // Java 使用 final 常量模拟字面量类型
    static final String STRING_LITERAL = "string literal";

    public static void main(String[] args) {
        // 1. Java 没有 string literal 类型，使用常量
        String a = "string literal";
        System.out.println("3.15: Java has no string literal type, uses String");

        // 2. Java null 可以赋给引用类型
        String b = null;
        System.out.println("3.15: Java allows null for reference types");

        // 3. Java 没有 undefined 概念
        System.out.println("3.15: Java has no undefined concept");

        // 4. Java 使用常量作为参数
        printThem("string literal", null);
    }

    static void printThem(String p1, String p2) {
        System.out.println("3.15: p1=" + p1 + " p2=" + p2);
    }
}
