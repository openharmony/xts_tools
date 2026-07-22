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
 * Java cross-verification: Builder pattern (alternative to named constructors)
 * Java Builder pattern is another common alternative when you need multiple
 * construction strategies with descriptive names.
 *
 * Equivalent to ArkTS: constructor Full(name: string, age: int) { ... }
 */
class User {
    private String name;
    private int age;

    private User() {}

    public String getName() {
        return name;
    }
    public int getAge() {
        return age;
    }

    /**
     * Builder class enables named-parameter-like construction
     */
    public static class Builder {
        private User user = new User();

        /**
         * Set name
         */
        public Builder withName(String name) {
            user.name = name;
            return this;
        }

        /**
         * Set age
         */
        public Builder withAge(int age) {
            user.age = age;
            return this;
        }

        public User build() {
            return user;
        }
    }
}

/**
 * Java cross-verification: Builder pattern
 */
public class BuilderPattern {
    public static void main(String[] args) {
        User u1 = new User.Builder()
            .withName("Alice")
            .withAge(30)
            .build();
        assert u1.getName().equals("Alice") : "name should be Alice";
        assert u1.getAge() == 30 : "age should be 30";

        User u2 = new User.Builder()
            .withName("Bob")
            .build();
        assert u2.getName().equals("Bob") : "name should be Bob";
        assert u2.getAge() == 0 : "age should be 0 (default)";

        System.out.println("verified");
    }
}
