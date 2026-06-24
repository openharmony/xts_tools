/**
 * Java cross-language verification for TYP_03_17_02_008_RUNTIME_EMPTY_TUPLE
 */
class TYP_03_17_02_008 {
    public static void main(String[] args) {
        Object[] empty = {};

        if (!(empty instanceof Object)) {
            throw new AssertionError("empty should be Object");
        }

        System.out.println("verified");
    }
}
