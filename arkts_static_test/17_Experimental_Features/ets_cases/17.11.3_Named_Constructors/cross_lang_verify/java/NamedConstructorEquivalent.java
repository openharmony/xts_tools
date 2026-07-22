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
 * Java cross-verification: Named constructor equivalent patterns
 * Java does NOT have named constructors. Common equivalent patterns:
 * 1. Static factory methods (most direct equivalent)
 * 2. Builder pattern
 *
 * Equivalent to ArkTS 17.11.3 Named Constructors
 * ArkTS: constructor Celsius(n: double) / constructor Fahrenheit(n: double)
 * Java:  static factory methods Temperature.celsius(n) / Temperature.fahrenheit(n)
 */

class Temperature {
    private double value; // in Celsius

    // Private constructor - forces use of factory methods
    private Temperature(double celsius) {
        this.value = celsius;
    }

    /**
     * Static factory -- equivalent to ArkTS "constructor Celsius(n: double)"
     */
    public static Temperature celsius(double n) {
        return new Temperature(n);
    }

    /**
     * Static factory -- equivalent to ArkTS "constructor Fahrenheit(n: double)"
     */
    public static Temperature fahrenheit(double n) {
        return new Temperature((n - 32) / 1.8);
    }

    public double getValue() {
        return value;
    }
}

class Point {
    private int x;
    private int y;

    private Point(int x, int y) {
        this.x = x;
        this.y = y;
    }

    /**
     * Static factory -- equivalent to ArkTS "constructor FromXY(x, y)"
     */
    public static Point fromXY(int x, int y) {
        return new Point(x, y);
    }

    /**
     * Static factory -- equivalent to ArkTS "constructor Origin()"
     * @return Point origin
     */
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

/**
 * Java cross-verification: Named constructor equivalent patterns
 */
public class NamedConstructorEquivalent {
    public static void main(String[] args) {
        // Equivalent to: new Temperature.Celsius(100)
        Temperature t1 = Temperature.celsius(100);
        assert Math.abs(t1.getValue() - 100.0) < 0.001 : "Celsius should be 100";

        // Equivalent to: new Temperature.Fahrenheit(212)
        Temperature t2 = Temperature.fahrenheit(212);
        assert Math.abs(t2.getValue() - 100.0) < 0.001 : "212F should be 100C";

        // Equivalent to: new Point.FromXY(5, 10)
        Point p1 = Point.fromXY(5, 10);
        assert p1.getX() == 5 : "p1.x should be 5";
        assert p1.getY() == 10 : "p1.y should be 10";

        // Equivalent to: new Point.Origin()
        Point p2 = Point.origin();
        assert p2.getX() == 0 : "p2.x should be 0";
        assert p2.getY() == 0 : "p2.y should be 0";

        System.out.println("verified");
    }
}
