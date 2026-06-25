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
 * Java SPEC inconsistency verification for 3.8 Type Any
 * 
 * KEY TEST: Object.field - Java compile error
 * 
 * Result (based on Java Language Specification):
 * - Object obj = new WithField(); obj.field  -> COMPILE ERROR
 *   "cannot find symbol: variable field in type Object"
 * - Must cast: ((WithField)obj).field              -> COMPILE OK
 * 
 * Conclusion: Java correctly rejects field access on top-type without cast,
 * consistent with ArkTS SPEC but inconsistent with ArkTS implementation.
 */
class WithField {
    public int field = 0;
}

// Compile error test (uncomment to verify):
// class Test1 {
//     public static void main(String[] args) {
//         Object obj = new WithField();
//         int f = obj.field;  // COMPILE ERROR: cannot find symbol
//     }
// }

// Correct approach in Java:
class Test2 {
    public static void main(String[] args) {
        Object obj = new WithField();
        int f = ((WithField) obj).field;  // OK: explicit cast
        System.out.println("((WithField)obj).field = " + f);
    }
}

public class TYP_03_08_007_AnyFieldAccess {
    public static void main(String[] args) {
        // Verify Object has no field access
        Object obj = new WithField();
        // int f = obj.field;  // COMPILE ERROR in Java
        int f = ((WithField) obj).field;  // OK in Java
        System.out.println("Java: Object.field -> COMPILE ERROR (must cast first)");
        System.out.println("Java: ((WithField)obj).field = " + f + " -> OK");
        
        // Contrast with ArkTS
        System.out.println("ArkTS: (a: Any).field -> COMPILES (SPEC says should fail)");
        System.out.println("ArkTS SPEC vs Implementation: INCONSISTENT");
    }
}