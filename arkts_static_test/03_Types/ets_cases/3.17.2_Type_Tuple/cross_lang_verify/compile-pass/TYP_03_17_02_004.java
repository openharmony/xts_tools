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
 * Java cross-language verification for TYP_03_17_02_004_PASS_UNSAFE_GET
 * Java 使用数组索引访问
 */
class TYP_03_17_02_004 {
    static void logTuple(Object x) {
        if (x instanceof Object[]) {
            Object[] arr = (Object[]) x;
            System.out.println(arr[1]);
        }
    }

    public static void main(String[] args) {
        Object[] a = {"aa", "bb"};
        logTuple(a);

        System.out.println("verified");
    }
}
