/**
 * Java cross-language verification for 3.9 Type Object
 */
class TYP_03_09_Type_Object {
    public static void main(String[] args) {
        // Key diff: Java Object can hold null
        Object o = null;
        o = new Object();
        System.out.println("3.09: Object can hold null (ArkTS: Object cannot hold null)");

        // Subtypes
        Object num = 42;  // autoboxing
        Object str = "hello";
        System.out.println("3.09: Object accepts all subtypes");
    }
}
