/**
 * Java cross-language verification for 3.6.3 Floating-Point Types and Operations
 */
class TYP_03_06_03_Floating_Point {
    public static void main(String[] args) {
        double nan = Double.NaN;
        double inf = Double.POSITIVE_INFINITY;
        System.out.println("3.6.3: NaN != NaN = " + (nan != nan));
        System.out.println("3.6.3: Infinity > 1e308 = " + (inf > 1e308));
    }
}
