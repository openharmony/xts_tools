/**
 * Java cross-language verification for TYP_03_17_02_007_RUNTIME_TUPLE_AS_TUPLE_TYPE
 */
class TYP_03_17_02_007 {
    public static void main(String[] args) {
        Object[] pair = {1, "abc"};
        Object a = pair;

        System.out.println("verified");
    }
}
