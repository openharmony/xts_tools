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
 * @id SEM_15_06_00_014_PASS_local_smart_arg
 * @expect compile-pass
 * @section 15.6
 * @design | 智能实参 | Java pattern variable 只在流作用域内有效。 | Swift 使用显式 narrowed binding。 | `SEM_15_06_022_PASS_local_smart_arg` | `SEM_15_06_026_FAIL_global_smart_arg_assumed` |
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_06_pass_022_local_smart_arg(): void {
  let value: int = 1
}



