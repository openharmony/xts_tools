/**
 * Java cross-language verification for 3.7 Reference Types
 */
class TYP_03_07_Reference_Types {
    public static void main(String[] args) {
        // Key diff: Java reference types are always nullable
        String s = null;  // OK in Java
        System.out.println("3.07: Java allows null for reference types (ArkTS: compile-fail for string)");
    }
}
