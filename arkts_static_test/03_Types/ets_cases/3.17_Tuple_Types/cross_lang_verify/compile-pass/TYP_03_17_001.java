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
 * Java cross-language verification for TYP_03_17_001_PASS_BASIC_TUPLE
 * Java 没有原生元组，使用自定义类模拟
 */
class TYP_03_17_001 {
    public static void main(String[] args) {
        // Java: 使用 Object 数组模拟元组（类型不安全）
        Object[] tuple = {6, 7, "abc", true, 42};

        if (!tuple[0].equals(6)) throw new AssertionError("tuple[0] should be 6");
        if (!tuple[1].equals(7)) throw new AssertionError("tuple[1] should be 7");
        if (!tuple[2].equals("abc")) throw new AssertionError("tuple[2] should be abc");
        if (!tuple[3].equals(true)) throw new AssertionError("tuple[3] should be true");

        System.out.println("verified");
    }
}
