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
 * Java cross-language verification for TYP_03_17_012_RUNTIME_TUPLE_LENGTH
 */
class TYP_03_17_012 {
    public static void main(String[] args) {
        Object[] tuple = {1, ""};
        if (tuple.length != 2) throw new AssertionError("length should be 2");

        Object[] tuple2 = {1, 2, "abc", true};
        if (tuple2.length != 4) throw new AssertionError("length should be 4");

        System.out.println("verified");
    }
}
