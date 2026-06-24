public class JavaDefaults {
    static int defaultInt;
    static boolean defaultBool;
    static Object defaultObj;
    static int pass=0,fail=0;
    static void c(boolean b,String s){if(b){pass++;System.out.println("PASS "+s);}else{fail++;System.out.println("FAIL "+s);}}
    public static void main(String[]a){
        c(defaultInt==0,"java int field default 0");
        c(defaultBool==false,"java boolean field default false");
        c(defaultObj==null,"java Object field default null");
        System.out.println("SUMMARY pass="+pass+" fail="+fail);if(fail!=0)System.exit(1);
    }
}