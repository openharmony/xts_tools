import java.math.BigInteger;

/**
 * Java 版本 - 3.14 Type bigint 测试
 * 验证 BigInteger 的基本操作、与数值类型的关系
 */
public class BigIntTest {
    public static void main(String[] args) {
        // 1. BigInteger 创建
        BigInteger b1 = new BigInteger("123");
        BigInteger b2 = BigInteger.valueOf(456);
        BigInteger b3 = BigInteger.ZERO;
        
        assert b1.equals(new BigInteger("123")) : "b1 assert failed";
        assert b2.equals(BigInteger.valueOf(456)) : "b2 assert failed";
        assert b3.equals(BigInteger.ZERO) : "b3 assert failed";
        
        // 2. BigInteger 是 Object 子类型
        Object obj = b1;
        assert obj instanceof BigInteger : "BigInteger should be instanceof Object";
        
        // 3. BigInteger 算术运算
        BigInteger a = new BigInteger("100");
        BigInteger b = new BigInteger("3");
        
        assert a.add(b).equals(new BigInteger("103")) : "add failed";
        assert a.subtract(b).equals(new BigInteger("97")) : "sub failed";
        assert a.multiply(b).equals(new BigInteger("300")) : "mul failed";
        assert a.divide(b).equals(new BigInteger("33")) : "div failed";
        assert a.mod(b).equals(new BigInteger("1")) : "mod failed";
        assert a.negate().equals(new BigInteger("-100")) : "neg failed";
        
        // 4. BigInteger 关系运算
        BigInteger x = new BigInteger("100");
        BigInteger y = new BigInteger("200");
        
        assert x.compareTo(y) < 0 : "x should be less than y";
        assert y.compareTo(x) > 0 : "y should be greater than x";
        assert x.compareTo(new BigInteger("100")) == 0 : "x should equal 100";
        
        // 5. BigInteger 与 int 的关系（Java 允许比较）
        int n = 42;
        // Java 中 BigInteger 不能直接与 int 比较，需要转换
        assert x.compareTo(BigInteger.valueOf(n)) > 0 : "x should be greater than n";
        
        // 6. BigInteger 任意精度特性
        BigInteger big = new BigInteger("9223372036854775808"); // long max + 1
        assert big.compareTo(BigInteger.valueOf(Long.MAX_VALUE)) > 0 : "should be greater than long max";
        
        // 7. BigInteger 数组
        BigInteger[] arr = {new BigInteger("1"), new BigInteger("2"), new BigInteger("3")};
        assert arr.length == 3 : "array length should be 3";
        
        // 8. BigInteger 作为函数参数
        BigInteger result = doubleValue(new BigInteger("50"));
        assert result.equals(new BigInteger("100")) : "result should be 100";
        
        System.out.println("All Java BigInteger tests passed!");
    }
    
    static BigInteger doubleValue(BigInteger b) {
        return b.multiply(BigInteger.valueOf(2));
    }
}
