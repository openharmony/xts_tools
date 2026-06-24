public class JavaReadonlyNA {
    static int p=0,f=0;static void c(boolean b,String s){if(b){p++;System.out.println("PASS "+s);}else{f++;System.out.println("FAIL "+s);}}
    public static void main(String[]a){c(true,"Java has final fields but no Readonly type N/A");System.out.println("SUMMARY pass="+p+" fail="+f);if(f!=0)System.exit(1);}
}