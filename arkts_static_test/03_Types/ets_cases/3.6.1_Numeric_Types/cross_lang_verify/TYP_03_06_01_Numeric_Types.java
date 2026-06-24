/**
 * Java cross-language verification for 3.6.1 Numeric Types
 */
class TYP_03_06_01_Numeric_Types {
    public static void main(String[] args) {
        byte b = 127;
        short s = 32767;
        int i = 2147483647;
        long l = 9223372036854775807L;
        float f = 3.14f;
        double d = 3.14;
        System.out.println("3.6.1: byte=" + b + " short=" + s + " int=" + i);
        System.out.println("3.6.1: long=" + l + " float=" + f + " double=" + d);
    }
}
