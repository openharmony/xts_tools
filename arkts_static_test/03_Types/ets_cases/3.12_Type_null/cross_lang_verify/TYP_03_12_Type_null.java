// 001: Null literal - Java allows null only for reference types
class TYP_03_12_001_NullLiteral {
    public static void main(String[] args) {
        String x = null;
        Object y = null;
        System.out.println("TYP_03_12_001 verified: x=" + x + ", y=" + y);
    }
}

// 002: Nullable int - Java uses Integer wrapper
class TYP_03_12_002_NullableInt {
    public static void main(String[] args) {
        Integer x = null;
        x = 42;
        x = null;
        Integer y = 100;
        y = null;
        System.out.println("TYP_03_12_002 verified: x=" + x + ", y=" + y);
    }
}

// 003: Nullable String
class TYP_03_12_003_NullableString {
    public static void main(String[] args) {
        String s = null;
        s = "hello";
        s = null;
        System.out.println("TYP_03_12_003 verified: s=" + s);
    }
}

// 004: Nullable Object
class TYP_03_12_004_NullableObject {
    public static void main(String[] args) {
        Object o = null;
        o = new Object();
        o = null;
        System.out.println("TYP_03_12_004 verified: o=" + o);
    }
}

// 005: Triple union - Java has no T|null|undefined
class TYP_03_12_005_TripleUnion {
    public static void main(String[] args) {
        Object x = null;
        x = 1;
        x = null;
        System.out.println("TYP_03_12_005 verified: x=" + x);
    }
}

// 006: Function returning null
class TYP_03_12_006_FunctionReturnNull {
    static String maybeNull(int v) {
        if (v > 0) return "positive";
        return null;
    }
    public static void main(String[] args) {
        String r1 = maybeNull(1);
        String r2 = maybeNull(-1);
        System.out.println("TYP_03_12_006 verified: r1=" + r1 + ", r2=" + r2);
    }
}

// 007: Function parameter with null
class TYP_03_12_007_FunctionParamNull {
    static int acceptNullable(String p) {
        if (p == null) return -1;
        return p.length();
    }
    public static void main(String[] args) {
        acceptNullable(null);
        acceptNullable("hello");
        System.out.println("TYP_03_12_007 verified");
    }
}

// 008: Null in switch - Java cannot switch on null, must use if-else
class TYP_03_12_008_NullSwitch {
    static String classifyValue(String v) {
        if (v == null) return "is_null";
        switch (v) {
            case "": return "is_empty";
            default: return "is_string";
        }
    }
    public static void main(String[] args) {
        String r1 = classifyValue(null);
        String r2 = classifyValue("");
        String r3 = classifyValue("hello");
        System.out.println("TYP_03_12_008 verified: " + r1 + ", " + r2 + ", " + r3);
    }
}

// 009: Null assigned to Object - KEY DIFF: Java allows, ArkTS forbids for nullish
class TYP_03_12_009_NullAny {
    public static void main(String[] args) {
        Object a = null;
        a = null;
        a = 42;
        System.out.println("TYP_03_12_009 verified: a=" + a);
    }
}

// 013 FAIL equivalent: Java allows null for reference types (KEY DIFFERENCE from ArkTS)
class TYP_03_12_013_NullAssignNonNullish {
    public static void main(String[] args) {
        String s = null;  // Java: OK, but ArkTS: compile-fail
        Object o = null; // Java: OK, but ArkTS: compile-fail
        // int n = null;  // Java: compile error - int is primitive
        System.out.println("TYP_03_12_013 DIFFERENCE: Java allows null for reference types");
    }
}

// 016 FAIL equivalent: Java allows nullish -> Object (KEY DIFFERENCE)
class TYP_03_12_016_NullishToObject {
    public static void main(String[] args) {
        Object nullable = null;
        Object o = nullable; // Java: OK, but ArkTS: compile-fail
        System.out.println("TYP_03_12_016 DIFFERENCE: Java allows null to Object");
    }
}

// 022 RUNTIME: Null type narrowing
class TYP_03_12_022_RuntimeNarrowing {
    static int safeStringLength(String s) {
        if (s == null) return -1;
        return s.length();
    }
    public static void main(String[] args) {
        int r1 = safeStringLength(null);
        if (r1 != -1) throw new RuntimeException("null should return -1, got " + r1);
        int r2 = safeStringLength("hello");
        if (r2 != 5) throw new RuntimeException("hello length should be 5, got " + r2);
        int r3 = safeStringLength("");
        if (r3 != 0) throw new RuntimeException("empty length should be 0, got " + r3);
        System.out.println("TYP_03_12_022 verified");
    }
}

// 025 RUNTIME: Null in conditional
class TYP_03_12_025_RuntimeSwitch {
    static String classifyValue(String v) {
        if (v == null) return "is_null";
        switch (v) {
            case "": return "is_empty";
            default: return "is_string";
        }
    }
    public static void main(String[] args) {
        String r1 = classifyValue(null);
        if (!r1.equals("is_null")) throw new RuntimeException("expected is_null");
        String r2 = classifyValue("");
        if (!r2.equals("is_empty")) throw new RuntimeException("expected is_empty");
        String r3 = classifyValue("hello");
        if (!r3.equals("is_string")) throw new RuntimeException("expected is_string");
        System.out.println("TYP_03_12_025 verified");
    }
}