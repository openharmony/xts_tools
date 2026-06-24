/**
 * Java cross-language verification for TYP_03_17_02_009_RUNTIME_INSTANCEOF_TUPLE
 */
class TYP_03_17_02_009 {
    public static void main(String[] args) {
        Object[] pair = {1, "abc"};

        if (!(pair instanceof Object[])) {
            throw new AssertionError("pair should be Object[]");
        }

        System.out.println("verified");
    }
}
