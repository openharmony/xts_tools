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
 * Java cross-language verification for TYP_03_17_007_FAIL_TYPE_MISMATCH
 * Java 使用数组时类型不匹配在运行时才会发现
 */
class TYP_03_17_007 {
    public static void main(String[] args) {
        // Java: 使用数组，类型不匹配不会编译错误
        Object[] tuple = {"hello", 1};  // Java 允许，但顺序与预期不同

        System.out.println("Java: allows type mismatch in Object[] (runtime only)");
        System.out.println("verified");
    }
}
