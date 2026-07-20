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
 * @id SEM_15_01_00_010_PASS_standalone_numeric_array
 * @expect compile-pass
 * @section 15.1
 * @design | 独立表达式 | Java 没有 ArkTS 对象字面量；数值字面量规则不同。 | Swift 有字面量推断，但对象字面量模型不同。 | `SEM_15_01_016_PASS_standalone_numeric_array` | `SEM_15_01_017_FAIL_standalone_object_literal` |
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_01_pass_010_standalone_numeric_array(): void {
  let value: int = 1
}


