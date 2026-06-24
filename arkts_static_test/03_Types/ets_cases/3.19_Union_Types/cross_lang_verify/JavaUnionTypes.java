public class JavaUnionTypes {
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

    // Java has no native union type; use interface hierarchy as analog.
    interface Value {}
    static final class IntValue implements Value {
        int value;
        IntValue(int value) { this.value = value; }
    }
    static final class StringValue implements Value {
        String value;
        StringValue(String value) { this.value = value; }
    }
    static final class BoolValue implements Value {
        boolean value;
        BoolValue(boolean value) { this.value = value; }
    }

    enum Status { OK, FAIL }

    static void testBasicUnionAnalog() {
        Value v = new IntValue(42);
        check(v instanceof IntValue, "java union analog int");
        v = new StringValue("hello");
        check(v instanceof StringValue, "java union analog string");
        v = new BoolValue(true);
        check(v instanceof BoolValue, "java union analog bool");
    }

    static void testEnumUnionAnalog() {
        Object v = Status.OK;
        check(v == Status.OK, "java enum as Object analog");
        v = "text";
        check(v instanceof String, "java enum|string analog via Object");
    }

    static void testInstanceofNarrowingAnalog() {
        Value v = new StringValue("abc");
        if (v instanceof StringValue) {
            StringValue s = (StringValue) v;
            check(s.value.length() == 3, "java instanceof narrowing analog");
        } else {
            check(false, "java instanceof narrowing analog");
        }
    }

    static int process(Value v) {
        if (v instanceof IntValue) {
            return ((IntValue) v).value;
        }
        if (v instanceof StringValue) {
            return ((StringValue) v).value.length();
        }
        return -1;
    }

    static void testFunctionParamAnalog() {
        check(process(new IntValue(7)) == 7, "java union parameter int analog");
        check(process(new StringValue("abcd")) == 4, "java union parameter string analog");
    }

    // Common field requires explicit cast in Java, unlike ArkTS native union field.
    static class A { double n = 1; String s = "aa"; void foo() {} }
    static class B { double n = 2; double s = 3.14; void foo() {} }

    static void testCommonMemberAnalog() {
        Object u = new A();
        if (u instanceof A) {
            A a = (A) u;
            check(a.n == 1.0, "java common field via explicit cast");
            check(a.s.equals("aa"), "java diff field type via explicit cast");
            a.foo();
            check(true, "java common method via explicit cast");
        } else {
            check(false, "java common member analog");
        }
    }

    static void testNA() {
        check(true, "java has no native union type N/A");
        check(true, "java no compile-time common union field checking N/A");
    }

    public static void main(String[] args) {
        testBasicUnionAnalog();
        testEnumUnionAnalog();
        testInstanceofNarrowingAnalog();
        testFunctionParamAnalog();
        testCommonMemberAnalog();
        testNA();
        System.out.println("SUMMARY pass=" + pass + " fail=" + fail);
        if (fail != 0) System.exit(1);
    }
}
