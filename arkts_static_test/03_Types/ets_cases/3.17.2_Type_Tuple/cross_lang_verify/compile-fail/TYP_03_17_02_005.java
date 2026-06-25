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
 * Java cross-language verification for TYP_03_17_02_005_FAIL_DIRECT_ACCESS
 * Java 数组可以直接访问
 */
class TYP_03_17_02_005 {
    public static void main(String[] args) {
        Object[] pair = {1, "abc"};
        Object a = pair;

        // Java: 可以直接访问（需要类型转换）
        Object[] arr = (Object[]) a;
        Object x = arr[0];
        System.out.println("Java: direct access allowed with cast: " + x);

        System.out.println("verified");
    }
}
