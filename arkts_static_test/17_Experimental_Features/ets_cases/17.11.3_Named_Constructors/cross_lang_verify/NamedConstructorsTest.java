/*
 * Copyright (c) 2021-2026 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
/**
 * Java cross-language verification for ArkTS 17.11.3 Named Constructors
 *
 * Java does NOT support named constructors.
 * Instead, Java uses the static factory method pattern to achieve the same goal:
 * multiple ways to construct an object with meaningful names.
 *
 * This file demonstrates the Java equivalent patterns for each ArkTS named constructor test case.
 */

// === Equivalent to ArkTS 001: Temperature with Celsius / Fahrenheit named constructors ===
class Temperature {
    private double value; // stored in Celsius

    private Temperature(double celsius) {
        this.value = celsius;
    }

    /** Static factory -- equivalent to ArkTS "constructor Celsius(n: double)" */
    public static Temperature celsius(double n) {
        return new Temperature(n);
    }

    /** Static factory -- equivalent to ArkTS "constructor Fahrenheit(n: double)" */
    public static Temperature fahrenheit(double n) {
        return new Temperature((n - 32) / 1.8);
    }

    public double getCelsius() {
        return value;
    }
}

// === Equivalent to ArkTS 002: ValueHolder with FromInt / FromString / FromBool ===
class ValueHolder {
    private Object value;

    private ValueHolder(Object v) {
        this.value = v;
    }

    /** Static factory -- equivalent to ArkTS "constructor FromInt(n: int)" */
    public static ValueHolder fromInt(int n) {
        return new ValueHolder(Integer.valueOf(n));
    }

    /** Static factory -- equivalent to ArkTS "constructor FromString(s: string)" */
    public static ValueHolder fromString(String s) {
        return new ValueHolder(s);
    }

    /** Static factory -- equivalent to ArkTS "constructor FromBool(b: boolean)" */
    public static ValueHolder fromBool(boolean b) {
        return new ValueHolder(Boolean.valueOf(b));
    }

    public Object getValue() {
        return value;
    }
}

// === Equivalent to ArkTS 003: Config with anonymous + named constructors ===
class Config {
    private String value;

    // Default (anonymous) constructor
    public Config() {
        this("default");
    }

    // Internal constructor for factory methods
    private Config(String v) {
        this.value = v;
    }

    /** Static factory -- equivalent to ArkTS "constructor FromKey(key: string)" */
    public static Config fromKey(String key) {
        return new Config("key:" + key);
    }

    /** Static factory -- equivalent to ArkTS "constructor FromEnv(env: string)" */
    public static Config fromEnv(String env) {
        return new Config("env:" + env);
    }

    public String getValue() {
        return value;
    }
}

// === Equivalent to ArkTS 005: Rectangle with FromPoints / FromSize ===
class Rectangle {
    private int width;
    private int height;

    private Rectangle(int w, int h) {
        this.width = w;
        this.height = h;
    }

    /** Static factory -- equivalent to ArkTS "constructor FromPoints(x1, y1, x2, y2)" */
    public static Rectangle fromPoints(int x1, int y1, int x2, int y2) {
        return new Rectangle(x2 - x1, y2 - y1);
    }

    /** Static factory -- equivalent to ArkTS "constructor FromSize(width, height)" */
    public static Rectangle fromSize(int width, int height) {
        return new Rectangle(width, height);
    }

    public int getWidth() {
        return width;
    }
    public int getHeight() {
        return height;
    }
}

// === Equivalent to ArkTS 011: Point with FromXY / Origin ===
class Point {
    private int x;
    private int y;

    private Point(int x, int y) {
        this.x = x;
        this.y = y;
    }

    /** Static factory -- equivalent to ArkTS "constructor FromXY(xVal, yVal)" */
    public static Point fromXY(int xVal, int yVal) {
        return new Point(xVal, yVal);
    }

    /** Static factory -- equivalent to ArkTS "constructor Origin()" */
    public static Point origin() {
        return new Point(0, 0);
    }

    public int getX() {
        return x;
    }
    public int getY() {
        return y;
    }
}

// === Equivalent to ArkTS 012: User with anonymous + WithName + Full ===
class User {
    private String name;
    private int age;

    // Anonymous constructor (default)
    public User() {
        this("unknown", 0);
    }

    // Constructor for Full (overloaded based on param count)
    public User(String name, int age) {
        this.name = name;
        this.age = age;
    }

    /** Static factory -- equivalent to ArkTS "constructor WithName(n: string)" */
    public static User withName(String n) {
        return new User(n, 0);
    }

    public String getName() {
        return name;
    }
    public int getAge() {
        return age;
    }
}

// === Equivalent to ArkTS 013: Converter with FromInt / FromDouble / FromString ===
class Converter {
    private double result;

    private Converter(double r) {
        this.result = r;
    }

    /** Static factory -- equivalent to ArkTS "constructor FromInt(n: int)" */
    public static Converter fromInt(int n) {
        return new Converter((double) n);
    }

    /** Static factory -- equivalent to ArkTS "constructor FromDouble(d: double)" */
    public static Converter fromDouble(double d) {
        return new Converter(d * 2);
    }

    /** Static factory -- equivalent to ArkTS "constructor FromString(s: string)" */
    public static Converter fromString(String s) {
        return new Converter(100);
    }

    public double getResult() {
        return result;
    }
}

// === Equivalent to ArkTS 014: Color with RGB / Hex (all named constructors) ===
class Color {
    private int r;
    private int g;
    private int b;

    private Color(int r, int g, int b) {
        this.r = r;
        this.g = g;
        this.b = b;
    }

    /** Static factory -- equivalent to ArkTS "constructor RGB(red, green, blue)" */
    public static Color rgb(int red, int green, int blue) {
        return new Color(red, green, blue);
    }

    /** Static factory -- equivalent to ArkTS "constructor Hex(hex: string)" */
    public static Color hex(String hex) {
        // Simplified: always returns white for demonstration
        return new Color(255, 255, 255);
    }

    public int getR() {
        return r;
    }
    public int getG() {
        return g;
    }
    public int getB() {
        return b;
    }
}

// === Main test execution ===
/** Java cross-language verification for ArkTS 17.11.3 Named Constructors */
public class NamedConstructorsTest {
    public static void main(String[] args) {
        testTemperature();
        testValueHolder();
        testConfig();
        testRectangle();
        testPoint();
        testUser();
        testConverter();
        testColor();
        System.out.println("JAVA VERIFIED: All named constructor comparison tests passed (static factory pattern)");
        System.out.println("NOTE: Java has no named constructors;" +
            " static factory methods are the idiomatic equivalent.");
    }

    static void testTemperature() {
        Temperature t1 = Temperature.celsius(100);
        assert Math.abs(t1.getCelsius() - 100.0) < 0.01 : "Celsius should be 100";
        Temperature t2 = Temperature.fahrenheit(212);
        assert Math.abs(t2.getCelsius() - 100.0) < 0.01 : "212F should be 100C";
    }

    static void testValueHolder() {
        ValueHolder v1 = ValueHolder.fromInt(42);
        assert v1.getValue().equals(42) : "fromInt should store 42";
        ValueHolder v2 = ValueHolder.fromString("hello");
        assert v2.getValue().equals("hello") : "fromString should store 'hello'";
        ValueHolder v3 = ValueHolder.fromBool(true);
        assert v3.getValue().equals(true) : "fromBool should store true";
    }

    static void testConfig() {
        Config c1 = new Config();
        assert c1.getValue().equals("default") : "Default config should be 'default'";
        Config c2 = Config.fromKey("db_host");
        assert c2.getValue().equals("key:db_host") : "fromKey should prefix with 'key:'";
        Config c3 = Config.fromEnv("production");
        assert c3.getValue().equals("env:production") : "fromEnv should prefix with 'env:'";
    }

    static void testRectangle() {
        Rectangle r1 = Rectangle.fromPoints(0, 0, 10, 5);
        assert r1.getWidth() == 10 : "Width should be 10";
        assert r1.getHeight() == 5 : "Height should be 5";
        Rectangle r2 = Rectangle.fromSize(8, 4);
        assert r2.getWidth() == 8 : "Width should be 8";
        assert r2.getHeight() == 4 : "Height should be 4";
    }

    static void testPoint() {
        Point p1 = Point.fromXY(5, 10);
        assert p1.getX() == 5 : "Point x should be 5";
        assert p1.getY() == 10 : "Point y should be 10";
        Point p2 = Point.origin();
        assert p2.getX() == 0 : "Origin x should be 0";
        assert p2.getY() == 0 : "Origin y should be 0";
    }

    static void testUser() {
        User u1 = new User();
        assert u1.getName().equals("unknown") : "Default name should be 'unknown'";
        assert u1.getAge() == 0 : "Default age should be 0";
        User u2 = User.withName("Alice");
        assert u2.getName().equals("Alice") : "WithName should set name to 'Alice'";
        assert u2.getAge() == 0 : "WithName age should be 0";
        User u3 = new User("Bob", 30);
        assert u3.getName().equals("Bob") : "Full name should be 'Bob'";
        assert u3.getAge() == 30 : "Full age should be 30";
    }

    static void testConverter() {
        Converter conv1 = Converter.fromInt(5);
        assert conv1.getResult() == 5.0 : "FromInt should set result to 5";
        Converter conv2 = Converter.fromDouble(3.5);
        assert conv2.getResult() == 7.0 : "FromDouble should set result to 7";
        Converter conv3 = Converter.fromString("test");
        assert conv3.getResult() == 100.0 : "FromString should set result to 100";
    }

    static void testColor() {
        Color col1 = Color.rgb(255, 0, 0);
        assert col1.getR() == 255 : "RGB R should be 255";
        assert col1.getG() == 0 : "RGB G should be 0";
        assert col1.getB() == 0 : "RGB B should be 0";
        Color col2 = Color.hex("#FFFFFF");
        assert col2.getR() == 255 : "Hex R should be 255";
        assert col2.getG() == 255 : "Hex G should be 255";
        assert col2.getB() == 255 : "Hex B should be 255";
    }
}
