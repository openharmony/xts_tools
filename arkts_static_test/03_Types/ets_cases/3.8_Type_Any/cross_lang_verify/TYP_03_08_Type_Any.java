/**
 * Java cross-language verification for 3.8 Type Any
 */
class TYP_03_08_Type_Any {
    public static void main(String[] args) {
        // Key diff: Java Object is top type (not Any)
        Object a = null;     // OK in Java
        a = 42;              // autoboxing
        a = "hello";
        System.out.println("3.08: Object accepts null and all types (ArkTS Any similar but no methods)");

        // Key diff: Object allows null, ArkTS Any also allows null
        // But ArkTS Any has no methods, Java Object has toString/equals/hashCode
        Object obj = new Object();
        System.out.println("3.08: Object.toString() = " + obj.toString());
    }
}
