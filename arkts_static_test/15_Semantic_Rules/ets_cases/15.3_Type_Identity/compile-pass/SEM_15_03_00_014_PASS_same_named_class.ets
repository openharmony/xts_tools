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
 * @id SEM_15_03_00_014_PASS_same_named_class
 * @expect compile-pass
 * @section 15.3
 * @design | 命名类型和基础类型同一 | Java 区分 primitive、reference 和赋值转换。 | Swift 名义类型和 protocol conform 不等同。 | `SEM_15_03_011_PASS_same_named_class` | `SEM_15_03_012_FAIL_same_shape_unrelated_classes` |
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_03_pass_010_same_named_class(): void {
  let value: int = 1
}


