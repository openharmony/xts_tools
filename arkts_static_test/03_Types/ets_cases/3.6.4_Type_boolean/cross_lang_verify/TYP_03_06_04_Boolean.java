/**
 * Java cross-language verification for 3.6.4 Type boolean
 */
class TYP_03_06_04_Boolean {
    public static void main(String[] args) {
        boolean t = true;
        boolean f = false;
        System.out.println("3.6.4: true&&false=" + (t && f) + " true||false=" + (t || f) + " !true=" + (!t));
    }
}
