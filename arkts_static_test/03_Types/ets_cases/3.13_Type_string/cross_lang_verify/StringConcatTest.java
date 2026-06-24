/**
 * Java 版本 - 字符串连接与隐式转换测试
 * 验证 string + number, string + boolean, string + null 等
 */
public class StringConcatTest {
    public static void main(String[] args) {
        // 1. string + int
        int i = 42;
        String si = "i=" + i;
        assert si.equals("i=42") : "int concat failed: " + si;
        
        // 2. string + long
        long l = 1000000000L;
        String sl = "l=" + l;
        assert sl.equals("l=1000000000") : "long concat failed: " + sl;
        
        // 3. string + float
        float f = 3.14f;
        String sf = "f=" + f;
        // Java 浮点数转换可能有精度问题
        assert sf.startsWith("f=3.14") : "float concat failed: " + sf;
        
        // 4. string + double
        double d = 2.718;
        String sd = "d=" + d;
        assert sd.startsWith("d=2.718") : "double concat failed: " + sd;
        
        // 5. string + boolean
        boolean b1 = true;
        boolean b2 = false;
        String sb1 = "b1=" + b1;
        String sb2 = "b2=" + b2;
        assert sb1.equals("b1=true") : "boolean true concat failed";
        assert sb2.equals("b2=false") : "boolean false concat failed";
        
        // 6. string + null
        String nullable = null;
        String sn = "n=" + nullable;
        assert sn.equals("n=null") : "null concat failed: " + sn;
        
        // 7. number + string (左侧是数值)
        String ns = 42 + " is the answer";
        assert ns.equals("42 is the answer") : "number + string failed";
        
        System.out.println("All Java concat tests passed!");
    }
}
