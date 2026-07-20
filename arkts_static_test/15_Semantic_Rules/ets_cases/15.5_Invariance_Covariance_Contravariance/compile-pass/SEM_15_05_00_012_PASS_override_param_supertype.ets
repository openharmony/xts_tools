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
 * @id SEM_15_05_00_012_PASS_override_param_supertype
 * @expect compile-pass
 * @section 15.5
 * @design | 重写 variance | Java 参数变化会变成重载，不是重写。 | Swift 重写签名更严格。 | `SEM_15_05_013_PASS_override_param_supertype` | `SEM_15_05_016_FAIL_override_param_subtype` |
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_05_pass_012_override_param_supertype(): void {
  let value: int = 1
}



