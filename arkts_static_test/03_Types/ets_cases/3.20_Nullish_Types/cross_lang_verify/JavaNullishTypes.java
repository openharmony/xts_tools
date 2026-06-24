import java.util.Optional;

public class JavaNullishTypes {
    static int pass = 0;
    static int fail = 0;

    static void check(boolean cond, String name) {
        if (cond) { pass++; System.out.println("PASS " + name); }
        else { fail++; System.out.println("FAIL " + name); }
    }

    static class Person {
        String name;
        Person spouse;
        Person(String name) { this.name = name; }
        String greet() { return "hi " + name; }
    }

    static void testNullReference() {
        String s = null;
        check(s == null, "java null reference allowed for String");

        Object o = null;
        check(o == null, "java Object accepts null");
    }

    static void testOptionalAsNullishAnalog() {
        Optional<String> a = Optional.empty();
        String r1 = a.orElse("fallback");
        check(r1.equals("fallback"), "java Optional fallback empty");

        Optional<String> b = Optional.of("value");
        String r2 = b.orElse("fallback");
        check(r2.equals("value"), "java Optional fallback value");
    }

    static void testSafeAccessAnalog() {
        Person p = null;
        String name = (p == null) ? null : p.name;
        check(name == null, "java manual safe field null");

        p = new Person("Bob");
        name = (p == null) ? null : p.name;
        check(name.equals("Bob"), "java manual safe field value");
    }

    static void testNullPointerException() {
        Person p = null;
        try {
            String s = p.name;
            check(false, "java direct null member should throw");
        } catch (NullPointerException e) {
            check(true, "java direct null member throws NPE");
        }
    }

    static void testNoUndefined() {
        check(true, "java has null but no undefined N/A");
        check(true, "java Object accepts null unlike ArkTS Object N/A");
    }

    public static void main(String[] args) {
        testNullReference();
        testOptionalAsNullishAnalog();
        testSafeAccessAnalog();
        testNullPointerException();
        testNoUndefined();
        System.out.println("SUMMARY pass=" + pass + " fail=" + fail);
        if (fail != 0) System.exit(1);
    }
}
