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
 * Java cross-language verification for 3.6.2 Integer Types and Operations
 */
class TYP_03_06_02_Integer_Types {
    public static void main(String[] args) {
        // KEY DIFF: Java int/int = int (truncates), same as ArkTS
        int a = 1 / 2;  // = 0 (integer division)
        System.out.println("3.6.2: 1/2 = " + a + " (Java: integer division truncates)");

        // Division by zero
        try {
            int zero = 0;
            int result = 1 / zero;
            System.out.println("UNEXPECTED: no exception");
        } catch (ArithmeticException e) {
            System.out.println("3.6.2: ArithmeticException caught");
        }
    }
}
