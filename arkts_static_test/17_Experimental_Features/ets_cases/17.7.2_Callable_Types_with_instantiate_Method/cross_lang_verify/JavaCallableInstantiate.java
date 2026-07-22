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
 * Java equivalent of ArkTS §17.7.2 Callable Types with $_instantiate
 * Java has NO callable type syntax. Closest equivalent: static factory methods + Supplier<T>
 * Corresponds to: EXP2_17_07_002, EXP2_17_07_003
 * @since 2025
 */
import java.util.function.Supplier;

class JavaFactory1 {
    String tag = "";

    JavaFactory1() {}

    JavaFactory1(String t) {
        this.tag = t;
    }

    // Java: No $_instantiate. Static factory method as closest equivalent.
    static JavaFactory1 create(Supplier<JavaFactory1> factory) {
        JavaFactory1 result = factory.get();
        result.tag = "created";
        return result;
    }

    static JavaFactory1 create(Supplier<JavaFactory1> factory, String tag) {
        JavaFactory1 result = factory.get();
        result.tag = tag;
        return result;
    }
}

public class JavaCallableInstantiate {
    public static void main(String[] args) {
        // 1. Basic factory - explicit supplier
        JavaFactory1 obj1 = JavaFactory1.create(() -> new JavaFactory1());
        assert obj1.tag.equals("created") : "FAIL: tag should be created, got " + obj1.tag;

        // 2. With custom factory
        JavaFactory1 obj2 = JavaFactory1.create(() -> new JavaFactory1("pre"), "alpha");
        assert obj2.tag.equals("alpha") : "FAIL: tag should be alpha, got " + obj2.tag;

        // 3. Overloaded factory
        JavaFactory1 obj3 = JavaFactory1.create(() -> new JavaFactory1());
        assert obj3.tag.equals("created") : "FAIL: overload no-arg";

        JavaFactory1 obj4 = JavaFactory1.create(() -> new JavaFactory1(), "beta");
        assert obj4.tag.equals("beta") : "FAIL: overload with arg";

        System.out.println("JavaCallableInstantiate: all assertions passed");
    }
}
