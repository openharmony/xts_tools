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
 * Java cross-language verification for 3.1 Predefined Types
 */
class TYP_03_01_Predefined_Types {
    public static void main(String[] args) {
        // Integer types
        byte b = 1;
        short s = 2;
        int i = 3;
        long l = 4L;
        float f = 3.14f;
        double d = 3.14;
        boolean bool = true;
        char c = 'a';
        System.out.println("3.01: byte=" + b + " int=" + i + " double=" + d + " bool=" + bool);

        // Key diff: Java has no separate 'number' type (double only)
        // ArkTS: number = double (alias)
        double num = 3.14;
        System.out.println("3.01: number(double)=" + num);

        // Key diff: Java primitive int cannot be null
        // Integer wrapper can be null
        Integer nullable = null;
        System.out.println("3.01: Integer=null is OK in Java (ArkTS: compile-fail for int)");
    }
}
