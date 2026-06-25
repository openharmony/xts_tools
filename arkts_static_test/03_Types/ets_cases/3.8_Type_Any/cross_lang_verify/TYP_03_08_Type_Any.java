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
 * Java cross-language verification for 3.8 Type Any
 */
class TYP_03_08_Type_Any {
    public static void main(String[] args) {
        // Key diff: Java Object is top type (not Any)
        Object a = null;     // OK in Java
        a = 42;              // autoboxing
        a = "hello";
        System.out.println("3.08: Object accepts null and all types (ArkTS Any similar but no methods)");

        // Key diff: Object allows null, ArkTS Any also allows null
        // But ArkTS Any has no methods, Java Object has toString/equals/hashCode
        Object obj = new Object();
        System.out.println("3.08: Object.toString() = " + obj.toString());
    }
}
