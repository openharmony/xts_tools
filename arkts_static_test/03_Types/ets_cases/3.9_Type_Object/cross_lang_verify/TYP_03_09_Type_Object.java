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
 * Java cross-language verification for 3.9 Type Object
 */
class TYP_03_09_Type_Object {
    public static void main(String[] args) {
        // Key diff: Java Object can hold null
        Object o = null;
        o = new Object();
        System.out.println("3.09: Object can hold null (ArkTS: Object cannot hold null)");

        // Subtypes
        Object num = 42;  // autoboxing
        Object str = "hello";
        System.out.println("3.09: Object accepts all subtypes");
    }
}
