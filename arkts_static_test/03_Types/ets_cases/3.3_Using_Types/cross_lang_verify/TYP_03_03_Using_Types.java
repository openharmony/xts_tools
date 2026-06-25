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
 * Java cross-language verification for 3.3 Using Types
 */
class TYP_03_03_Using_Types {
    public static void main(String[] args) {
        int x = 42;
        String s = "hello";
        double d = 3.14;
        System.out.println("3.03: int=" + x + " str=" + s + " double=" + d);
        // Key diff: Java has no type alias
    }
}
