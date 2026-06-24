/**
 * Java cross-language verification for TYP_03_17_006_PASS_TUPLE_AS_OBJECT
 * Java 数组可以赋值给 Object
 */
class TYP_03_17_006 {
    public static void main(String[] args) {
        // Java: 数组可以赋值给 Object
        Object[] tuple = {1, "hello"};
        Object o = tuple;

        System.out.println("verified");
    }
}
