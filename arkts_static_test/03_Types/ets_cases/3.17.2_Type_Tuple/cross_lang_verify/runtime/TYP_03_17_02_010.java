/**
 * Java cross-language verification for TYP_03_17_02_010_RUNTIME_UNSAFE_GET
 */
class TYP_03_17_02_010 {
    public static void main(String[] args) {
        Object[] a = {"aa", "bb"};
        Object t = a;

        Object[] arr = (Object[]) t;
        Object elem = arr[1];
        if (!elem.equals("bb")) {
            throw new AssertionError("elem should be bb");
        }

        System.out.println("verified");
    }
}
