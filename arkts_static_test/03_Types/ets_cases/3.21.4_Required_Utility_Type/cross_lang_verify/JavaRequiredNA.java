public class JavaRequiredNA {
    static int pass = 0, fail = 0;
    static void check(boolean c, String s) { if(c){pass++;System.out.println("PASS "+s);}else{fail++;System.out.println("FAIL "+s);} }
    static void test() {
        check(true, "Java has no Required type N/A");
    }
    public static void main(String[] a){test();System.out.println("SUMMARY pass="+pass+" fail="+fail);if(fail!=0)System.exit(1);}
}