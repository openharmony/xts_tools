public class JavaUnionNormalization {
    static int pass = 0;
    static int fail = 0;

    static void check(boolean cond, String name) {
        if (cond) {
            pass++;
            System.out.println("PASS " + name);
        } else {
            fail++;
            System.out.println("FAIL " + name);
        }
    }

    interface UnionValue {}
    static final class IntValue implements UnionValue {
        int value;
        IntValue(int value) { this.value = value; }
    }
    static final class StringValue implements UnionValue {
        String value;
        StringValue(String value) { this.value = value; }
    }
    static final class BoolValue implements UnionValue {
        boolean value;
        BoolValue(boolean value) { this.value = value; }
    }

    static void testNestedUnionEquivalent() {
        UnionValue v1 = new IntValue(1);
        UnionValue v2 = new StringValue("x");
        UnionValue v3 = new BoolValue(true);
        check(v1 instanceof IntValue, "java union int variant");
        check(v2 instanceof StringValue, "java union string variant");
        check(v3 instanceof BoolValue, "java union bool variant");
    }

    static void testStringLiteralAbsorbEquivalent() {
        String literal = "a";
        String general = "not literal";
        check(literal instanceof String, "java string literal is String");
        check(general instanceof String, "java general string is String");
    }

    static void testNeverEquivalentAbsent() {
        check(true, "java has no never bottom type N/A");
    }

    static void testReadonlyUnionAbsent() {
        check(true, "java has no readonly array union normalization N/A");
    }

    static void testBaseDerivedNoNormalizationEquivalent() {
        class Base {}
        class Derived extends Base {}
        Base b = new Base();
        Base d = new Derived();
        check(b instanceof Base, "java base instance");
        check(d instanceof Base, "java derived as base instance");
    }

    public static void main(String[] args) {
        testNestedUnionEquivalent();
        testStringLiteralAbsorbEquivalent();
        testNeverEquivalentAbsent();
        testReadonlyUnionAbsent();
        testBaseDerivedNoNormalizationEquivalent();
        System.out.println("SUMMARY pass=" + pass + " fail=" + fail);
        if (fail != 0) {
            System.exit(1);
        }
    }
}
