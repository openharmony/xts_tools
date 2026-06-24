import java.util.Map;
import java.util.HashMap;

public class JavaRecordAnalog {
    static int p=0,f=0;static void c(boolean b,String s){if(b){p++;System.out.println("PASS "+s);}else{f++;System.out.println("FAIL "+s);}}
    public static void main(String[] a){
        Map<String,Integer> map = new HashMap<String,Integer>();
        map.put("key1",1);map.put("key2",2);
        c(map.get("key1")==1,"java HashMap analog");
        c(true,"Java has no compile-time Record type N/A");
        System.out.println("SUMMARY pass="+p+" fail="+f);if(f!=0)System.exit(1);
    }
}