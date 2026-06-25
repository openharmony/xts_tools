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
public class JavaNonNullableNA {
    static int pass = 0, fail = 0;
    static void check(boolean c, String s) { if (c) { pass++; System.out.println("PASS " + s); } else { fail++; System.out.println("FAIL " + s); } }

    static void testNullReferenceSpread() {
        Object x = null; // Java allows null on Object
        check(x == null, "Java Object accepts null (differs from ArkTS)");
    }

    static void testOptional() {
        java.util.Optional<Object> opt = java.util.Optional.of(new Object());
        check(opt.isPresent(), "Java Optional.of non-null");
    }

    static void testNoCompileTime() {
        check(true, "Java has no compile-time NonNullable N/A");
    }

    public static void main(String[] args) {
        testNullReferenceSpread();
        testOptional();
        testNoCompileTime();
        System.out.println("SUMMARY pass=" + pass + " fail=" + fail);
        if (fail != 0) System.exit(1);
    }
}