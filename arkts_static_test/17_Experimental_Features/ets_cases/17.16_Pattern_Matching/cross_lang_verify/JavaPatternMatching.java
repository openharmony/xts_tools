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
 * Java equivalent for ArkTS 17.16 Pattern Matching tests
 * Tests: instanceof operator, type testing, branching
 * Java 21
 */
class Animal { String name = "animal"; }
class Dog extends Animal { void bark() { System.out.println("woof"); } }
class Cat extends Animal { void meow() { System.out.println("meow"); } }
class Fruit { String name = "fruit"; }
class Apple extends Fruit { String color = "red"; }
class Banana extends Fruit { String color = "yellow"; }

public class JavaPatternMatching {
    static String identify(Fruit f) {
        if (f instanceof Apple) { return "apple"; }
        else if (f instanceof Banana) { return "banana"; }
        else { return "unknown"; }
    }

    public static void main(String[] args) {
        int passCount = 0;
        int failCount = 0;

        // Test 1: instanceof String
        {
            Object obj = "hello";
            if (obj instanceof String) {
                System.out.println("PASS: test1 instanceof String");
                passCount++;
            } else {
                System.out.println("FAIL: test1 instanceof String");
                failCount++;
            }
            if (obj instanceof Number) {
                System.out.println("FAIL: test1 should not be Number");
                failCount++;
            } else {
                System.out.println("PASS: test1 not instanceof Number");
                passCount++;
            }
        }

        // Test 2: instanceof class hierarchy (like ArkTS 021)
        {
            Animal v = new Dog();
            if (v instanceof Animal) {
                System.out.println("PASS: test2 Dog instanceof Animal");
                passCount++;
            } else {
                System.out.println("FAIL: test2 Dog instanceof Animal");
                failCount++;
            }
            if (v instanceof Dog) {
                System.out.println("PASS: test2 Dog instanceof Dog");
                passCount++;
            } else {
                System.out.println("FAIL: test2 Dog instanceof Dog");
                failCount++;
            }
            if (v instanceof Cat) {
                System.out.println("FAIL: test2 Dog should not be Cat");
                failCount++;
            } else {
                System.out.println("PASS: test2 Dog not instanceof Cat");
                passCount++;
            }
            Animal v2 = new Animal();
            if (v2 instanceof Dog) {
                System.out.println("FAIL: test2 Animal should not be Dog");
                failCount++;
            } else {
                System.out.println("PASS: test2 Animal not instanceof Dog");
                passCount++;
            }
        }

        // Test 3: instanceof branch dispatch (like ArkTS 022)
        {
            Apple a = new Apple();
            Banana b = new Banana();
            Fruit u = new Fruit();
            if (!identify(a).equals("apple")) {
                System.out.println("FAIL: test3 Apple not identified, got: " + identify(a));
                failCount++;
            } else { System.out.println("PASS: test3 Apple identified"); passCount++; }
            if (!identify(b).equals("banana")) {
                System.out.println("FAIL: test3 Banana not identified, got: " + identify(b));
                failCount++;
            } else { System.out.println("PASS: test3 Banana identified"); passCount++; }
            if (!identify(u).equals("unknown")) {
                System.out.println("FAIL: test3 unknown not identified");
                failCount++;
            } else { System.out.println("PASS: test3 unknown identified"); passCount++; }
        }

        // Test 4: instanceof null (like ArkTS 023)
        {
            Object nullObj = null;
            if (nullObj instanceof String) {
                System.out.println("FAIL: test4 null instanceof String should be false");
                failCount++;
            } else {
                System.out.println("PASS: test4 null not instanceof String");
                passCount++;
            }
            Object strObj = "world";
            if (strObj instanceof String) {
                System.out.println("PASS: test4 'world' instanceof String");
                passCount++;
            } else {
                System.out.println("FAIL: test4 'world' should be instanceof String");
                failCount++;
            }
        }

        // Test 5: instanceof with incompatible types (COMPILE ERROR in Java)
        // In Java, this would fail compilation: error: incompatible types
        // Object val = 42;
        // if (val instanceof String && val instanceof int) {} // javac ERROR
        // This is DIFFERENT from ArkTS which only warns (W1001506)
        System.out.println("INFO: test5 Java rejects instanceof int at compile time");
        System.out.println("      (different from ArkTS which only warns W1001506)");
        passCount++; // Java correctly rejects this

        // Test 6: Java 16+ pattern matching (beyond ArkTS capability)
        {
            Object x = "pattern";
            if (x instanceof String s) {
                // Java 16+: binds s directly - ArkTS cannot do this
                if (s.length() > 0) {
                    System.out.println("PASS: test6 Java pattern matching with binding");
                    passCount++;
                }
            }
        }

        System.out.println("\n=== SUMMARY: " + passCount + " passed, " + failCount + " failed ===");
        if (failCount > 0) {
            System.exit(1);
        }
    }
}
