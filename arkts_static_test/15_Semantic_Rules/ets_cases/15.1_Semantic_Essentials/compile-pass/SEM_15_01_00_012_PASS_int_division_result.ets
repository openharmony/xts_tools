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
 * @id SEM_15_01_00_012_PASS_int_division_result
 * @expect compile-pass
 * @section 15.1
 * @design | 数值运算符 | Java 小整数提升类似，但 ArkTS `number` 与整数除法要单独测。 | Swift 不允许隐式混合数值类型。 | `SEM_15_01_018_PASS_int_division_result` | `SEM_15_01_021_FAIL_boolean_numeric_operator` |
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_01_pass_012_int_division_result(): void {
  let value: int = 1
}



