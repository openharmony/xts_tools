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
