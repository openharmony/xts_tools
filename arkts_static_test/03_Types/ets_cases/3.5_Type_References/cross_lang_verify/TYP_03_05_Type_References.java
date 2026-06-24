/**
 * Java cross-language verification for 3.5 Type References
 */
class TYP_03_05_Type_References {
    public static void main(String[] args) {
        // Java uses generics similarly
        java.util.List<String> list = new java.util.ArrayList<>();
        list.add("hello");
        System.out.println("3.05: List<String>=" + list.get(0));
    }
}
