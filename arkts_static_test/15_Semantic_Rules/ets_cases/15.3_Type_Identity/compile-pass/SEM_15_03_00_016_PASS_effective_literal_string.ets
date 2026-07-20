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
 * @id SEM_15_03_00_016_PASS_effective_literal_string
 * @expect compile-pass
 * @section 15.3
 * @design | 有效类型同一 | Java 擦除主要影响泛型。 | Swift 没有 ArkTS 这种 union/nullish 有效类型映射。 | `SEM_15_03_013_PASS_effective_literal_string` | `SEM_15_03_016_FAIL_return_type_only_identity` |
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem1503Pass012EffectiveLiteralString(): void {
  let value: int = 1
}



