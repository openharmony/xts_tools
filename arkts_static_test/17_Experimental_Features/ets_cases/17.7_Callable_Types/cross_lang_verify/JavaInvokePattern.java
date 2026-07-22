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
 * Java equivalent of ArkTS $_invoke callable type pattern.
 * Java has no direct callable type mechanism.
 * Closest equivalent: static method + functional interface.
 * Demonstrates various Java patterns that mimic ArkTS callable types.
 * Corresponds to: EXP2_17_07_001
 * @since 2025
 */
import java.util.function.Supplier;

// APPROACH 1: Simple static method (no callable class)
class SimpleCallable {
    // In ArkTS: static $_invoke(): int
    // In Java:  static method
    static int invoke() {
        return 42;
    }
}

// APPROACH 2: Overloaded static methods
class OverloadedCallable {
    static int invoke() {
        return 0;
    }
    static int invoke(int a) {
        return a * 2;
    }
    static int invoke(int a, int b) {
        return a + b;
    }
}

// APPROACH 3: Static factory (equivalent to $_instantiate)
class FactoryCallable {
    String tag = "factory";

    static FactoryCallable create() {
        return new FactoryCallable();
    }

    static FactoryCallable create(String tag) {
        FactoryCallable obj = new FactoryCallable();
        obj.tag = tag;
        return obj;
    }
}

// APPROACH 4: Java closest to callable - Supplier<T> / Function<T,R>
class CallableEquivalent {
    // In ArkTS: let f: () => int = CalcCallable
    // In Java: Supplier<Integer> f = CalcCallable::invoke;
    static void demo() {
        Supplier<Integer> f = SimpleCallable::invoke;
        int val = f.get();
        assert val == 42 : "Expected 42";
    }
}

/** Java equivalent of ArkTS $_invoke callable type pattern */
public class JavaInvokePattern {
    public static void main(String[] args) {
        // Test 1: Static invoke
        int r1 = SimpleCallable.invoke();
        assert r1 == 42 : "Expected 42, got " + r1;

        // Test 2: Overloaded static methods
        int r0 = OverloadedCallable.invoke();
        int r2 = OverloadedCallable.invoke(5);
        int r3 = OverloadedCallable.invoke(3, 7);
        assert r0 == 0 : "Expected 0";
        assert r2 == 10 : "Expected 10";
        assert r3 == 10 : "Expected 10";

        // Test 3: Static factory
        FactoryCallable obj1 = FactoryCallable.create();
        FactoryCallable obj2 = FactoryCallable.create("test");
        assert obj1.tag.equals("factory") : "Expected factory";
        assert obj2.tag.equals("test") : "Expected test";

        // Test 4: new vs static method distinction
        FactoryCallable newObj = new FactoryCallable();
        assert newObj.tag.equals("factory") : "new should use constructor, tag=factory";

        // Test 5: Functional interface as closest to callable type
        CallableEquivalent.demo();


        System.out.println("PASS: Java invoke/factory patterns verified");
    }
}
