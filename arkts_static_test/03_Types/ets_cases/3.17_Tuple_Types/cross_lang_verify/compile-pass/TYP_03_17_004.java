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
 * Java cross-language verification for TYP_03_17_004_PASS_TUPLE_AS_TUPLE
 * Java 没有 Tuple 超类型
 */
class TYP_03_17_004 {
    public static void main(String[] args) {
        // Java: 使用 Object 数组，赋值给 Object
        Object[] tuple = {1, "hello"};
        Object t = tuple;

        System.out.println("verified");
    }
}
