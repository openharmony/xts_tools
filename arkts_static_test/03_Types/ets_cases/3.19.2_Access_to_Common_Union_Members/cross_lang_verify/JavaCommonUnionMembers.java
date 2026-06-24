public class JavaCommonUnionMembers {
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

    // Java has no union type. Use interface to simulate common method.
    interface Shape {
        int area();
    }

    static class Square implements Shape {
        int side;
        Square(int side) { this.side = side; }
        public int area() { return side * side; }
    }

    static class Circle implements Shape {
        int radius;
        Circle(int radius) { this.radius = radius; }
        public int area() { return 3 * radius * radius; }
    }

    static void testCommonMethodViaInterface() {
        Shape s1 = new Square(4);
        Shape s2 = new Circle(3);
        check(s1.area() == 16, "java common interface method square");
        check(s2.area() == 27, "java common interface method circle");
    }

    // Common field access is not available through a union-like interface in Java.
    // Need explicit instanceof + cast.
    static class AField {
        public double n = 1.0;
        public String s = "aa";
        public void foo() {}
    }

    static class BField {
        public double n = 2.0;
        public double s = 3.14;
        public void foo() {}
    }

    interface ABValue {}
    static class AWrap implements ABValue {
        AField value = new AField();
    }
    static class BWrap implements ABValue {
        BField value = new BField();
    }

    static void testCommonFieldRequiresCast() {
        ABValue u = new AWrap();
        if (u instanceof AWrap) {
            AWrap a = (AWrap) u;
            check(a.value.n == 1.0, "java common field requires explicit cast");
            check(a.value.s.equals("aa"), "java different field type only after cast");
        } else {
            check(false, "java common field cast branch");
        }
    }

    static void testMissingMemberCompileAnalogy() {
        // Java cannot write u.onlyA() on interface ABValue unless method is declared in interface.
        check(true, "java missing member would be compile error N/A");
    }

    static void testStaticMemberCompileAnalogy() {
        // Static members are accessed by class name, not union/interface value.
        check(true, "java static member via union N/A");
    }

    public static void main(String[] args) {
        testCommonMethodViaInterface();
        testCommonFieldRequiresCast();
        testMissingMemberCompileAnalogy();
        testStaticMemberCompileAnalogy();
        System.out.println("SUMMARY pass=" + pass + " fail=" + fail);
        if (fail != 0) {
            System.exit(1);
        }
    }
}
