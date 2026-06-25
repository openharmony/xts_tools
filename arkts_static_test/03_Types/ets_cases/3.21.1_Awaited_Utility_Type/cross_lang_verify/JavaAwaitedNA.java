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
public class JavaAwaitedNA {
    static int pass = 0;
    static int fail = 0;
    static void check(boolean cond, String name) {
        if (cond) { pass++; System.out.println("PASS " + name); }
        else { fail++; System.out.println("FAIL " + name); }
    }

    // Java has CompletableFuture but no compile-time Awaited equivalent
    static void testNoCompileTimeAwaited() {
        check(true, "Java has no compile-time Awaited N/A");
        check(true, "Java CompletableFuture is runtime only N/A");
    }

    // Java has no compile-time Promise type unboxing
    static void testNoPromiseUnboxing() {
        java.util.concurrent.CompletableFuture<String> f = new java.util.concurrent.CompletableFuture<>();
        // Runtime only: f.get() is runtime blocking
        check(true, "Java CompletableFuture requires .get() at runtime N/A");
    }

    public static void main(String[] args) {
        testNoCompileTimeAwaited();
        testNoPromiseUnboxing();
        System.out.println("SUMMARY pass=" + pass + " fail=" + fail);
        if (fail != 0) System.exit(1);
    }
}