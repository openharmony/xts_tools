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
/*
 * @id SEM_15_03_00_015_PASS_same_tuple_and_function
 * @expect compile-pass
 * @section 15.3
 * @design | 复合类型同一 | Java 泛型擦除可能导致签名冲突。 | Swift 通常保留泛型区分，元组标签也可能影响类型。 | `SEM_15_03_012_PASS_same_tuple_and_function` | `SEM_15_03_014_FAIL_generic_argument_differs` |
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_03_pass_011_same_tuple_and_function(): void {
  let value: int = 1
}



