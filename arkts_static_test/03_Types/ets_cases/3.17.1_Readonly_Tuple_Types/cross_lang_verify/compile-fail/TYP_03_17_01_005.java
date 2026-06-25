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
 * Java cross-language verification for TYP_03_17_01_005_FAIL_STRING_WRITE
 * Java final 数组的元素仍然可以修改
 */
class TYP_03_17_01_005 {
    public static void main(String[] args) {
        final Object[] tuple = {1, "abc"};

        // Java: final 数组的元素可以修改
        tuple[1] = "xyz";
        System.out.println("Java: final array elements can be modified: " + tuple[1]);

        System.out.println("verified");
    }
}
