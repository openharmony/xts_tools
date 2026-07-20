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
 * @id SEM_15_07_00_012_PASS_int_or_double_target
 * @expect compile-pass
 * @section 15.7
 * @design | union 目标推断 | Java 无 union 目标类型。 | Swift 无通用 union 类型。 | `SEM_15_07_020_PASS_int_or_double_target` | `SEM_15_07_022_FAIL_numeric_union_ambiguous` |
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem1507Pass021IntOrDoubleTarget(): void {
  let value: int = 1
}



