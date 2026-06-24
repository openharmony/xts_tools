import java.lang.reflect.*;
import java.util.*;

public class JavaKeyofTypes {
    static int pass = 0;
    static int fail = 0;
    static void check(boolean cond, String name) {
        if (cond) { pass++; System.out.println("PASS " + name); }
        else { fail++; System.out.println("FAIL " + name); }
    }

    static class A {
        public double field = 0;
        public void method() {}
    }

    interface I {
        String name = "";
        void run();
    }

    static Set<String> keysOfClass(Class<?> clazz) {
        Set<String> keys = new HashSet<String>();
        for (Field f : clazz.getFields()) {
            keys.add(f.getName());
        }
        for (Method m : clazz.getMethods()) {
            if (m.getDeclaringClass() == clazz) {
                keys.add(m.getName());
            }
        }
        return keys;
    }

    static void testReflectiveKeyofClass() {
        Set<String> keys = keysOfClass(A.class);
        check(keys.contains("field"), "java reflective keyof field");
        check(keys.contains("method"), "java reflective keyof method");
        check(!keys.contains("missing"), "java reflective keyof invalid missing");
    }

    static void testReflectiveKeyofInterface() {
        Set<String> keys = keysOfClass(I.class);
        check(keys.contains("name"), "java interface field name");
        check(keys.contains("run"), "java interface method run");
    }

    static void testEmptyClassKeys() {
        class Empty {}
        Set<String> keys = keysOfClass(Empty.class);
        check(keys.isEmpty(), "java empty local class declared members empty");
    }

    static void testNoCompileTimeKeyof() {
        check(true, "java has no compile-time keyof N/A");
    }

    public static void main(String[] args) {
        testReflectiveKeyofClass();
        testReflectiveKeyofInterface();
        testEmptyClassKeys();
        testNoCompileTimeKeyof();
        System.out.println("SUMMARY pass=" + pass + " fail=" + fail);
        if (fail != 0) System.exit(1);
    }
}
