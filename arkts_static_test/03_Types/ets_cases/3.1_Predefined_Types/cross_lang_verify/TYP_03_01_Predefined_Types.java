/**
 * Java cross-language verification for 3.1 Predefined Types
 */
class TYP_03_01_Predefined_Types {
    public static void main(String[] args) {
        // Integer types
        byte b = 1;
        short s = 2;
        int i = 3;
        long l = 4L;
        float f = 3.14f;
        double d = 3.14;
        boolean bool = true;
        char c = 'a';
        System.out.println("3.01: byte=" + b + " int=" + i + " double=" + d + " bool=" + bool);

        // Key diff: Java has no separate 'number' type (double only)
        // ArkTS: number = double (alias)
        double num = 3.14;
        System.out.println("3.01: number(double)=" + num);

        // Key diff: Java primitive int cannot be null
        // Integer wrapper can be null
        Integer nullable = null;
        System.out.println("3.01: Integer=null is OK in Java (ArkTS: compile-fail for int)");
    }
}
